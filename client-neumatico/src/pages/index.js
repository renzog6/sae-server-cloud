import Head from "next/head";
import Image from "next/image";
import { useEffect, useState } from "react";
import styles from "../styles/Home.module.css";

export default function Home() {
  const [neumaticos, setNeumaticos] = useState([]);

  useEffect(() => {
    const getAllNeumaticos = async () => {
      const resopnse = await fetch("http://192.168.88.91:8091/neumaticos");
      const res = await resopnse.json();
      setNeumaticos(res);
    };
    getAllNeumaticos();
  }, []);

  return (
    <div className={styles.container}>
      <Head>
        <title>SAE - Neumaticos Stock</title>
      </Head>

      <div>
        {neumaticos.length == 0 && <p>Cargando....</p>}

        <table>
          <thead>
            <tr>
              <th scope="col">Equipo</th>
              <th scope="col">Medida</th>
              <th scope="col">Modelo</th>
              <th scope="col">Marca</th>
              <th scope="col">Stock</th>
              <th scope="col">Posicion</th>
            </tr>
          </thead>
          <tbody>
            {neumaticos.length > 0 &&
              neumaticos.map((n) => (
                <tr key={n.id}>
                  <th>{n.equipo}</th>
                  <th>{n.medida}</th>
                  <td>{n.modelo}</td>
                  <td>{n.marca.name}</td>
                  <td>{n.stock}</td>
                  <td>{n.posicion}</td>
                </tr>
              ))}
          </tbody>
        </table>
      </div>

      <footer className={styles.footer}>Powered by @renzog6</footer>
    </div>
  );
}

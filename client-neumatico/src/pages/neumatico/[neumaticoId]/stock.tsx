import React from "react";
import Link from "next/link";
import Head from "next/head";
import { useEffect, useState } from "react";
import styles from "../../styles/Home.module.css";
import { neumaticoService } from "../../../services/neumatico.service";

import { FaPlus, FaMinus } from "react-icons/fa";
export default function Stock() {
  const [neumaticos, setNeumaticos] = useState([]);

  useEffect(() => {
    const getAllNeumaticos = async () => {
      const resopnse = await neumaticoService.getAll();
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
              <th scope="col">Info</th>
              <th className={styles.trHeard} scope="col">
                X
              </th>
            </tr>
          </thead>
          <tbody>
            {neumaticos.length > 0 &&
              neumaticos.map((n) => (
                <tr key={n.id}>
                  <th>{n.equipo}</th>
                  <th>
                    <Link href={"./" + n.id}>{n.medida}</Link>
                  </th>
                  <td>{n.modelo}</td>
                  <td>{n.marca.name}</td>
                  <td>{n.stock}</td>
                  <td>{n.posicion}</td>
                  <td>{n.info}</td>
                  <td className={styles.tdButtons}>
                    <div className={styles.gridButtons}>
                      <button className={styles.buttonAdd}>
                        <FaPlus />
                      </button>
                      <button className={styles.buttonRemove}>
                        <FaMinus />
                      </button>
                    </div>
                  </td>
                </tr>
              ))}
          </tbody>
        </table>
      </div>
    </div>
  );
}

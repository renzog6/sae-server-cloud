import React from "react";
import Link from "next/link";
import Head from "next/head";
import { useEffect, useState } from "react";
import styles from "../../styles/Home.module.css";
import { neumaticoService } from "../../services/neumatico.service";

import { FaArrowsAltV, FaMinus } from "react-icons/fa";
import { GrUpdate } from "react-icons/gr";

export default function ListAllNeumaticos() {
  const [neumaticos, setNeumaticos] = useState([]);

  useEffect(() => {
    const getAllNeumaticos = async () => {
      const res = await neumaticoService.getAll();

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
            </tr>
          </thead>
          <tbody>
            {neumaticos.length > 0 &&
              neumaticos.map((n) => (
                <tr key={n.id}>
                  <th>{n.equipo}</th>
                  <th>
                    <Link href={"/neumatico/" + n.id + "/update"}>
                      {n.medida}
                    </Link>
                  </th>
                  <td>{n.modelo}</td>
                  <td>{n.marca.name}</td>
                  <td className={styles.tdStock}>
                    {n.stock}
                    <Link href={"/neumatico/" + n.id + "/stock"}>
                      <a className={styles.buttonUpdate}>
                        <FaArrowsAltV />
                      </a>
                    </Link>
                  </td>
                  <td>{n.posicion}</td>
                  <td>{n.info}</td>
                </tr>
              ))}
          </tbody>
        </table>
      </div>
    </div>
  );
}

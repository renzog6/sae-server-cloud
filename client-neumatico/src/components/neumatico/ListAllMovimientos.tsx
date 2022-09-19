import React from "react";
import { useEffect, useState } from "react";
import styles from "../../styles/Home.module.css";
import { movimientoService } from "../../services/movimiento.service";

export default function ListAllMovimientos() {
  const [movimientos, setNeumaticos] = useState([]);

  useEffect(() => {
    const getAllNeumaticos = async () => {
      const res = await movimientoService.getAll();
      setNeumaticos(res);
    };
    getAllNeumaticos();
  }, []);

  function formatDate(data) {
    const date = new Date(data);
    let d = date.toLocaleDateString("es-AR", {
      day: "2-digit", // possible values: 'numeric', '2-digit'
      month: "2-digit", // possible values: 'numeric', '2-digit', 'long', 'short', 'narrow'
      year: "2-digit", // possible values: 'numeric', '2-digit'
    });
    return d;
  }

  return (
    <div className={styles.container}>
      <div>
        {movimientos.length == 0 && <p>Cargando....</p>}
        <table>
          <thead>
            <tr>
              <th scope="col">Fecha</th>
              <th scope="col">Tipo</th>
              <th scope="col">Neumatico</th>
              <th scope="col">Cantidad</th>
              <th scope="col">Info</th>
            </tr>
          </thead>
          <tbody>
            {movimientos.length > 0 &&
              movimientos.map((n) => (
                <tr key={n.id}>
                  <th>{formatDate(n.fecha)}</th>
                  <td>{n.tipo}</td>
                  <td>{n.neumatico}</td>
                  <td>{n.cantidad}</td>
                  <td>{n.info}</td>
                </tr>
              ))}
          </tbody>
        </table>
      </div>
    </div>
  );
}

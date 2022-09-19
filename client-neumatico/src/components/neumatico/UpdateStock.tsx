import React, { useEffect, useState } from "react";
import { useRouter } from "next/router";
import styles from "../../styles/From.module.css";

import { toast } from "react-toastify";
import "react-toastify/dist/ReactToastify.css";

import DatePicker from "react-datepicker";
import "react-datepicker/dist/react-datepicker.css";

import { neumaticoService } from "../../services/neumatico.service";
import { movimientoService } from "../../services/movimiento.service";

export default function UpdateStock({ neumatico }) {
  const router = useRouter();

  const [fecha, setFecha] = useState(new Date());
  const [quantity, setQuantity] = useState(0);
  const [info, setInfo] = useState("");

  const changeQuantity = (e) => {
    setQuantity(e.target.value);
  };

  const changeInfo = (e) => {
    setInfo(e.target.value);
  };

  async function updateSotck(tipo) {
    if (quantity <= 0) {
      toast.error("Cantidad debe ser Mayor a 0");
    } else if (neumatico.stock + quantity * tipo < 0) {
      toast.error("El stock no puede ser NEGATIVO");
    } else {
      const response = await neumaticoService.updateStock(
        +neumatico.id,
        quantity * tipo
      );
      if (response === null) {
        toast.error("An 400 error occurred while saving, please try again");
      } else {
        movimientoService.createBuild(response, tipo, fecha, quantity, info);
        toast.success("El Nuevo Stock es: " + response.stock);
        router.push("/neumatico");
      }
    }
  }

  return (
    <div className={styles.container}>
      <article>
        <h2>Actualizar Stock Neumatico</h2>
        <h3>
          {neumatico.medida} - Stock Actual: {neumatico.stock}
        </h3>

        <div className={styles.gridinputs}>
          <label htmlFor="Fecha">
            Fecha
            <DatePicker
              dateFormat="dd/MM/yyyy"
              selected={fecha}
              onChange={(date) => setFecha(date)}
            />
          </label>
          <label htmlFor="Quantity">
            Cantidad
            <input
              type="number"
              id="quantity"
              name="quantity"
              placeholder="quantity"
              required
              onChange={changeQuantity}
            />
          </label>

          <label htmlFor="info">
            Info
            <input
              type="text"
              id="info"
              name="info"
              placeholder="Comentarios...."
              onChange={changeInfo}
            />
          </label>
        </div>
        <div className={styles.gridinputs}>
          <button
            className={styles.buttonGreen}
            onClick={() => {
              if (window.confirm("Confirma actualizar el Stock?")) {
                updateSotck(1);
              }
            }}
          >
            Entrada
          </button>
          <button
            className={styles.buttonRed}
            onClick={() => {
              if (window.confirm("Confirma actualizar el Stock?")) {
                updateSotck(-1);
              }
            }}
          >
            Salida
          </button>
        </div>
      </article>
    </div>
  );
}

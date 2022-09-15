import React, { useEffect, useState } from "react";
import Head from "next/head";
import { useRouter } from "next/router";
import styles from "../../styles/From.module.css";

import { toast } from "react-toastify";
import "react-toastify/dist/ReactToastify.css";

import { useForm } from "react-hook-form";

import { Marca } from "../../interfaces/Marca";
import { Neumatico } from "../../interfaces/Neumatico";
import { neumaticoService } from "../../services/neumatico.service";

export default function Update({ neumatico }) {
  const router = useRouter();
  if (neumatico === null) router.push("./stock");

  const [marcas, setMarcas] = useState([]);

  useEffect(() => {
    const getAllMarcas = async () => {
      const resopnse = await fetch("http://192.168.88.91:8091/marcas");
      const res = await resopnse.json();
      setMarcas(res);
    };
    getAllMarcas();
  }, []);

  const {
    register,
    handleSubmit,
    formState: { isSubmitting },
  } = useForm<Neumatico>({
    defaultValues: {
      id: neumatico.id,
      equipo: neumatico.equipo,
      medida: neumatico.medida,
      modelo: neumatico.modelo,
      posicion: neumatico.posicion,
      info: neumatico.info,
    },
  });

  const saveFormData = async (data: Neumatico) => {
    const m: Marca = {
      id: +data.marca,
      name: "",
      info: "",
    };
    data.marca = m;

    const response = await neumaticoService.update(neumatico.id, data);
    if (response.status === 400) {
      toast.error("An 4000 error occurred while saving, please try again");
    } else if (response.ok) {
      toast.success("Actualizado con Exito!!!");
      router.push("/neumatico");
    } else {
      toast.error(
        "An unexpected error occurred while saving, please try again"
      );
    }
  };

  const deleteItem = async () => {
    const response = await neumaticoService.delete(neumatico.id);
    if (response.status === 400) {
      toast.error("An 400 error occurred while saving, please try again");
    } else if (response.ok) {
      toast.success("BARRADO con Exito!!!");
      router.push("/neumatico");
    } else {
      toast.error(
        "An unexpected error occurred while saving, please try again"
      );
    }
  };

  /*   const handleResponse = async ({ response }) => {
    if (response.status === 400) {
      toast.error(
        "An unexpected error occurred while saving, please try again"
      );
    } else if (response.ok) {
      toast.success("Actualizado con Exito!!!");
      router.push("./stock");
    } else {
      toast.error(
        "An unexpected error occurred while saving, please try again"
      );
    }
  }; */

  return (
    <div className={styles.container}>
      <article>
        <h2>Actualizar Neumatico</h2>
        <form onSubmit={handleSubmit(saveFormData)}>
          <div className={styles.gridinputs}>
            <label htmlFor="equipo">
              Equipo
              <input
                type="text"
                id="equipo"
                name="equipo"
                placeholder="Equipo"
                {...register("equipo")}
                required
              />
            </label>

            <label htmlFor="medida">
              Medida
              <input
                type="text"
                id="medida"
                name="medida"
                placeholder="Medida"
                {...register("medida")}
                required
              />
            </label>

            <label htmlFor="marca">
              Marca
              <select
                id="marca"
                defaultValue={neumatico.marca.id}
                {...register("marca")}
                required
              >
                <option value={neumatico.marca.id} disabled>
                  {neumatico.marca.name}
                </option>
                {marcas.map((m) => (
                  <option key={m.id} value={m.id}>
                    {m.name}
                  </option>
                ))}
              </select>
            </label>

            <label htmlFor="modelo">
              Modelo
              <input
                type="text"
                id="modelo"
                name="modelo"
                placeholder="Modelo"
                {...register("modelo")}
                required
              />
            </label>

            <label htmlFor="posicion">
              Posicion
              <input
                type="text"
                id="posicion"
                name="posicion"
                placeholder="Posicion"
                {...register("posicion")}
                required
              />
            </label>

            <label htmlFor="info">
              Info
              <input
                type="text"
                id="info"
                name="info"
                placeholder="Comentarios...."
                {...register("info")}
              />
            </label>
          </div>

          <button className={styles.buttonGreen} aria-busy={isSubmitting}>
            {isSubmitting ? "Actualizando..." : "Actualizar"}
          </button>
        </form>
        <button
          className={styles.buttonRed}
          onClick={() => {
            if (window.confirm("Seguro que desea BORRAR este item?")) {
              deleteItem();
            }
          }}
        >
          Borrar
        </button>
      </article>
    </div>
  );
}

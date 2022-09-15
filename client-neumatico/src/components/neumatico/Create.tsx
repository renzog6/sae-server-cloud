import React from "react";
import Head from "next/head";
import { useRouter } from "next/router";
import styles from "../../styles/From.module.css";

import { ToastContainer, toast } from "react-toastify";
import "react-toastify/dist/ReactToastify.css";

import { useForm, SubmitHandler } from "react-hook-form";

import { Marca } from "../../interfaces/Marca";
import { Neumatico } from "../../interfaces/Neumatico";
import { neumaticoService } from "../../services/neumatico.service";

export default function Create({ marcas }) {
  const router = useRouter();

  const {
    register,
    handleSubmit,
    formState: { isSubmitting },
  } = useForm<Neumatico>();

  const saveFormData = async (data: Neumatico) => {
    const m: Marca = {
      id: +data.marca,
      name: "",
      info: "",
    };
    data.marca = m;
    data.stock = 0;

    const response = await neumaticoService.create(data);
    if (response.status === 400) {
      console.log("ERROR");
    } else if (response.ok) {
      toast.success("Gurdado con Exito!!!");
      router.push("/neumatico");
    } else {
      toast.error(
        "An unexpected error occurred while saving, please try again"
      );
    }
  };

  return (
    <div className={styles.container}>
      <Head>
        <title>SAE - Neumaticos - Agregar</title>
      </Head>

      <article>
        <h2>Agregar Neumaticos</h2>
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
                defaultValue={"DEFAULT"}
                {...register("marca")}
                required
              >
                <option value="DEFAULT" disabled>
                  Seleccionar Marca
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
              Comentarios
              <input
                type="text"
                id="info"
                name="info"
                placeholder="Comentarios..."
                {...register("info")}
              />
            </label>
          </div>

          <button className={styles.buttonGreen} aria-busy={isSubmitting}>
            {isSubmitting ? "Guardando..." : "Guardar"}
          </button>
        </form>
      </article>
    </div>
  );
}

export async function getServerSideProps() {
  const resopnse = await fetch("http://192.168.88.91:8091/marcas");
  const marcas = await resopnse.json();
  return {
    props: {
      marcas,
    },
  };
}

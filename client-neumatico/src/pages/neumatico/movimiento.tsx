import React from "react";
import Head from "next/head";
import styles from "../../styles/Home.module.css";
import ListAllMovimientos from "../../components/neumatico/ListAllMovimientos";

export default function Movimiento() {
  return (
    <div className={styles.container}>
      <Head>
        <title>SAE - Movimientos Neumaticos</title>
      </Head>
      <ListAllMovimientos />
    </div>
  );
}

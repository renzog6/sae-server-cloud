import React from "react";
import Head from "next/head";
import styles from "../../styles/Home.module.css";
import ListAllNeumaticos from "../../components/neumatico/ListAll";

export default function AddNeumatico() {
  return (
    <div className={styles.container}>
      <Head>
        <title>SAE - Home Neumaticos</title>
      </Head>
      <ListAllNeumaticos />
    </div>
  );
}

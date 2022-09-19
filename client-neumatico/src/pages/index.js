import Head from "next/head";
import Link from "next/link";
import styles from "../styles/Home.module.css";

export default function Home() {
  return (
    <div className={styles.container}>
      <Head>
        <title>SAE - Neumaticos</title>
      </Head>

      <article>
        <header>Neumaticos</header>
        <Link href="/neumatico">Stock</Link>
      </article>
    </div>
  );
}

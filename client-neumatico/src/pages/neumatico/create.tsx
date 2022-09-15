import Head from "next/head";
import Create from "../../components/neumatico/Create";

export default function CreateNeumatico({ marcas }) {
  return (
    <>
      <Head>
        <title>SAE - Create Neumaticos</title>
      </Head>
      <Create marcas={marcas} />;
    </>
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

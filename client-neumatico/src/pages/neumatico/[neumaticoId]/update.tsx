import Head from "next/head";
import Update from "../../../components/neumatico/Update";
import { neumaticoService } from "../../../services/neumatico.service";

export default function UpdateNeumatico({ neumatico }) {
  console.log(neumatico);
  return (
    <>
      <Head>
        <title>SAE - Update Neumaticos</title>
      </Head>
      <Update neumatico={neumatico} />;
    </>
  );
}

export async function getServerSideProps({ params }) {
  const response = await neumaticoService.getById(params.neumaticoId);
  let neumatico = null;
  if (response.ok) neumatico = await response.json();

  return {
    props: {
      neumatico: neumatico,
    },
  };
}

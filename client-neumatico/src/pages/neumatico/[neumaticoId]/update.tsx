import Head from "next/head";
import Update from "../../../components/neumatico/Update";
import { neumaticoService } from "../../../services/neumatico.service";

export default function UpdateNeumatico({ neumatico }) {
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
  const neumatico = await neumaticoService.getById(+params.neumaticoId);

  return {
    props: {
      neumatico: neumatico,
    },
  };
}

import Head from "next/head";
import UpdateStock from "../../../components/neumatico/UpdateStock";
import { neumaticoService } from "../../../services/neumatico.service";

export default function UpdateStockNeumatico({ neumatico }) {
  return (
    <>
      <Head>
        <title>SAE - Update Stock Neumatico</title>
      </Head>
      <UpdateStock neumatico={neumatico} />;
    </>
  );
}

export async function getServerSideProps({ params }) {
  const neumatico = await neumaticoService.getById(params.neumaticoId);

  return {
    props: {
      neumatico,
    },
  };
}

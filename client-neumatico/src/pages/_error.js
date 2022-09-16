import Image from "next/image";

function Error({ statusCode }) {
  let imgError = "/_error_img.png";

  return (
    <>
      <Image
        src={imgError}
        //alt="Picture of the author"
        width={500} //automatically provided
        height={500} //automatically provided
        // blurDataURL="data:..." automatically provided
        // placeholder="blur" // Optional blur-up while loading
      />
      <p>
        {statusCode
          ? `An error ${statusCode} occurred on server`
          : "An error occurred on client"}
      </p>
    </>
  );
}

Error.getInitialProps = ({ res, err }) => {
  const statusCode = res ? res.statusCode : err ? err.statusCode : 404;
  return { statusCode };
};

export default Error;

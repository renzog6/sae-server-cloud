import Document, { Html, Head, Main, NextScript } from "next/document";

export default class MyDocument extends Document {

  render() {
    return (
      <Html lang="es" data-theme="dark">
        <Head>              
            <meta name="description" content="App ADM Neumaticos." />       
            <link rel="icon" href="/favicon.ico" />
        </Head>
        <body>            
                <Main />                
                <NextScript />                
        </body>
      </Html>
    );
  }
}

import React from "react";
import Header from "./Header";
import styles from "../../styles/Home.module.css";
import { ToastContainer, toast } from "react-toastify";

export default function Layout({ children }) {
  return (
    <>
      <Header />
      <div>{children}</div>
      <ToastContainer position="bottom-center" />
      <footer className={styles.footer}>Powered by @renzog6</footer>
    </>
  );
}

import React from "react";
import Link from "next/link";
import styles from "../../styles/Home.module.css";

export default function Header() {
  return (
    <div className={styles.container}>
      <nav>
        <ul>
          <li>
            <strong>Neumaticos</strong>
          </li>
        </ul>
        <ul>
          <li>
            <Link href="/neumatico">
              <a>Home</a>
            </Link>
          </li>
          <li>
            <Link href="/neumatico/create">
              <a>Agregar</a>
            </Link>
          </li>
          <li>
            <Link href="/neumatico/movimiento">
              <a>Movimientos</a>
            </Link>
          </li>
        </ul>
      </nav>
    </div>
  );
}

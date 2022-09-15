// You can include shared interfaces/types in a separate file
// and then use them in any component by importing them. For
// example, to import the interface below do:
//
// import { User } from 'path/to/interfaces';

import { Marca } from './Marca';

export type Neumatico = {
    id: number
    equipo: string
    medida: string
    marca: Marca
    modelo: string
    posicion: string
    stock: number
    info: string
    updateAt: Date
}
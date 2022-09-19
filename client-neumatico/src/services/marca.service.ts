
import getConfig from "next/config";

const { publicRuntimeConfig } = getConfig();
const baseUrl = `${publicRuntimeConfig.apiUrl}/marcas`;
//const baseUrl = "http://192.168.88.91:8091/marcas/";

export const marcaService = {
    getAll,
    getById,
    create,
    update,
    delete: _delete,
};

const requestOptions = {
    method: "X",
    headers: {
        accept: 'application/json',
    },
};

async function getAll() {
    try {
        requestOptions.method = "GET";
        const response = await fetch(baseUrl, requestOptions);

        if (!response.ok) {
            throw new Error(`Error! status: ${response.status}`);
        }

        const result = await response.json();
        return result;
    } catch (err) {
        console.log(err);
        return [];
    }
}

async function getById(id) {
    try {
        requestOptions.method = "GET";
        const response = await fetch(`${baseUrl}/${id}`, requestOptions);

        if (!response.ok) {
            throw new Error(`Error! status: ${response.status}`);
        }

        const result = await response.json();
        return result;
    } catch (err) {
        console.log(err);
        return null;
    }
}

function create(data) {
    const requestOptions = {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        //credentials: "include",
        body: JSON.stringify(data),
    };
    return fetch(baseUrl, requestOptions).then(handleResponse);
}

function update(id, data) {
    const requestOptions = {
        method: "PUT",
        headers: { "Content-Type": "application/json", },
        //credentials: "include",
        body: JSON.stringify(data),
    };
    return fetch(`${baseUrl}/${id}`, requestOptions).then(handleResponse);
}

// prefixed with underscored because delete is a reserved word in javascript
function _delete(id) {
    const requestOptions = {
        method: "DELETE",
        //headers: authHeader(url),
    };
    return fetch(`${baseUrl}/${id}`, requestOptions).then(handleResponse);
}

function handleResponse(response) {
    if (!response.ok) {
        const error = response.statusText;
        console.log("Data::: " + response.status);
        return Promise.reject(error);
    }
    return response;

}


//import getConfig from "next/config";
import Router from "next/router";


//const { publicRuntimeConfig } = getConfig();
//const baseUrl = `${publicRuntimeConfig.apiUrl}/users`;
const baseUrl = "http://192.168.88.91:8091/neumaticos/";

export const neumaticoService = {
    getAll,
    getById,
    create,
    update,
    delete: _delete,
};


function getAll() {
    const requestOptions = {
        method: "GET",
        //headers: authHeader(url),
    };
    return fetch(baseUrl, requestOptions).then(handleResponse);
}

function getById(id) {
    const requestOptions = {
        method: "GET",
        //headers: authHeader(url),
    };
    return fetch(`${baseUrl}${id}`, requestOptions);
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
    return fetch(`${baseUrl}${id}`, requestOptions).then(handleResponse);
}

// prefixed with underscored because delete is a reserved word in javascript
function _delete(id) {
    const requestOptions = {
        method: "DELETE",
        //headers: authHeader(url),
    };
    return fetch(`${baseUrl}${id}`, requestOptions).then(handleResponse);
}

function handleResponse(response) {
    if (!response.ok) {
        if ([401, 403].includes(response.status)) {
            console.log("Data::: ERRORRRRR");
        }

        const error = response.statusText;
        console.log("Data::: " + response.status);
        return Promise.reject(error);
    }
    return response;

}

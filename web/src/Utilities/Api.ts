import axios from "axios";

const Api = axios.create({
    baseURL: process.env.NODE_ENV ? 'http://localhost:5000': '',
    headers: {
        'ContentType': 'application/json',
        'Access-Control-Allow-Origin': '*'
    }
})


export interface RequestWrapperArgs {
    url: string
    method: 'get' | 'post'
    data: any
}

export async function requestWrapper<T>(args: RequestWrapperArgs) {
    const {
        url,
        method,
        data
    } = args

    try {
        const res = await Api.request({
            method,
            url,
            data
        })

        return { success: true, data: res.data as T }
    }
    catch (e) {
        console.log(e)

        return { success: false, data: e.response }
    }
}


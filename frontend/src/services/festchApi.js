import { fetch } from  'whatwg-fetch'

const fetchApi = (route) => {
  const url = `http://localhost:3000/${route}`

  return fetch(url).then(response => response.json())
}

export default fetchApi

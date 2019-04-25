import React, { useState, useEffect }  from 'react';
import fetchApi from './services/festchApi'

function App() {
  const [data, setData] = useState({ locations: [] })

  useEffect(() => {
    async function fetchData() {
      const response = await fetchApi('locations');
      setData({locations: response})
    }
    fetchData();
  }, [])

  return (
    <div className="App">
      {data.locations.map(item => (
        <li key={item.id}>
          {item.name}
        </li>
      ))}
    </div>
  );
}

export default App;

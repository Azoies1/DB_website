import logo from './logo.svg';
import React, { useState, useEffect } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import {InputGroup, FormControl} from 'react-bootstrap';
import './App.css';

function App() {
  const [data, getData] = useState({});

  return (
    <div className="App">
      <header className="App-header">
      <InputGroup className="mb-3">
        <InputGroup.Text id="dbTable"></InputGroup.Text>
        <FormControl
          placeholder="Database Table"
          aria-label="DataBase Table"
          aria-describedby="basic-addon1"
          // onKeyPress={this.onKeyPress.bind(this)}
      />
  </InputGroup>
 
      </header>
    </div>
  );
}
// const onKeyPress = e =>{
//   if (e.key == 'Enter'){
    
//   }
// }
// useEffect(() => {
//   fetch ('/sql/' + tableName)
//   .then(res =>res.json())
//   .then( newData =>{
//     getData(newData);
//   })
// })


export default App;

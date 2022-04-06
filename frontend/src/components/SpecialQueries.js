import React, { useState } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import BootstrapTable from 'react-bootstrap-table-next';
import InputGroup from 'react-bootstrap/InputGroup';
import FormControl from 'react-bootstrap/FormControl';
import Button from 'react-bootstrap/Button';
import Toast from 'react-bootstrap/Toast'

import '../App.css';
import Header from './Header';

function SpecialQueries() {
  const [appData, setData] = useState({});
  const [showAlert, setAlert] = useState(false);
  const [inputValue, setValue] = useState();
  const apiURL = "http://localhost:5000/sql/"

  const toggleAlert = () => setAlert(!showAlert)
  function sendCode() {
    const requestOptions = {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ code: inputValue })
    };

    fetch(apiURL + 'specQueries' + '/', requestOptions)
      .then((response) => response.json())
      .then((result) => (setData({
        tableData: result
      })),
      (error) => {
          console.log({inputValue})
        setAlert(true);
        setData({
          isLoaded: true,
          error
        });
      })
  }

  function TableGen(props){
    if (props.data){
      var uniqueKey = "row"
      let index = 1
      const columns = []
      Object.entries(props.data[0]).map(([key,value]) =>{
        columns.push({
          dataField: key,
          text: key
        })
      })

      props.data.map((item) => item['row'] = index++)

      return <BootstrapTable 
                keyField= {uniqueKey} 
                data = {props.data } 
                columns = { columns } 
                />
   }
   return null
  }

  return (
    <div className="App">
    <Toast show={showAlert} onClose={toggleAlert}>
          <Toast.Header>
            <strong className="me-auto">Error</strong>
            <small>SQL code</small>
          </Toast.Header>
          <Toast.Body>{inputValue}</Toast.Body>
      </Toast>
      <Header></Header>
        <InputGroup className="mb-3">
            <FormControl
            margin-top="40px"
            placeholder="SQL Code"
            aria-label="SQL Code"
            aria-describedby="basic-addon2"
            value = {inputValue}
            />
            <Button variant="primary" id="button-addon2"
            onClick={sendCode}>
            Send
            </Button>
         </InputGroup>
        <div 
        className='table-flow'>
          <TableGen 
          data ={appData.tableData} />
        </div>
    </div>
  );
}

export default SpecialQueries
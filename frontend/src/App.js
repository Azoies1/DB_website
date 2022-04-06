import logo from './logo.svg';
import React, { useState, useEffect } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import BootstrapTable from 'react-bootstrap-table-next';
import {InputGroup, FormControl} from 'react-bootstrap';
import './App.css';

function App() {
  const [appData, setData] = useState({});
  const apiURL = "http://localhost:5000/sql/"

  function setVisibility(tableName){
    const tablesToHide = document.getElementsByClassName('toHide')
    for (const tableToHide of tablesToHide) {
        tableToHide.style.display='none'
    }
    const tablestoShow = document.getElementsByClassName(tableName);
    tablestoShow[0].style.display='block';
  }

  function initialTable(tableName) {
    fetch(apiURL + tableName + '/')
      .then((response) => response.json())
      .then((result) => (setData({
        tableName: tableName,
        tableData: result
      })),
      (error) => {
        this.setData({
          isLoaded: true,
          error
        });
      })
  }

  function TableGen(props){
    if (props.data){
      var uniqueKey = ""
      const columns = []
      Object.entries(props.data[0]).map(([key,value]) =>{
        columns.push({
          dataField: key,
          text: key
        })
        if (key.toLowerCase().includes("id")){
          if (uniqueKey == ""){
            uniqueKey = key
          }
          if(key.toLowerCase().includes(appData.tableName.toLowerCase)){
            uniqueKey = key
          }
        }
      })
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
      <title>A Simple Database Application System for the COVID-19 Pharmaceutical Companies</title>
      <a href="{{ url_for('index') }}">
        <button type="button" className="topbtn">
            View Table
        </button>
        </a>
        <a href="{{ url_for('addEntry') }}">
            <button type="button" className="topbtn">
                Add An Entry
            </button>
        </a>
        <a href="">
            <button type="button" className="topbtn">
                Special Queries
            </button>
        </a>

        <br/>
        <h2>A Simple Database Application System for the COVID-19 Pharmaceutical Companies</h2>
        <br/>
        <div className="dropdown">
          <button className="dropbtn">Choose One</button>
          <div className="dropdown-content">
          <a href="#" onClick={() => initialTable('PharmCompany')}>Company</a>
          <a href="#" onClick={() => initialTable('Facility')}>Facility</a>
          <a href="#" onClick={() => initialTable('Employee')}>Employee</a>
          <a href="#" onClick={() => initialTable('ResearchTeam')}>Team</a>
          <a href="#" onClick={() => initialTable('Project')}>Project</a>
          <a href="#" onClick={() => initialTable('Product')}>Product</a>
          <a href="#" onClick={() => initialTable('Client')}>Client</a>
          <a href="#" onClick={() => initialTable('Contract')}>Contract</a>
          </div>
        </div>
        <div className='table-flow'>
          <TableGen data ={appData.tableData} />
        </div>
    </div>
  );
}
export default App;

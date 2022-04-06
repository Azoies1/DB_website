import React, { useState, useEffect } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import BootstrapTable from 'react-bootstrap-table-next';
import cellEditFactory from 'react-bootstrap-table2-editor';
import '../App.css';
import Header from './Header';

function AddEntry() {
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
                data = { props.data } 
                columns = { columns } 
                cellEdit={ cellEditFactory({ mode: 'click' }) }
                />
   }
   return null
  }

  return (
    <div className="App">
        <Header></Header>
        <div className="dropdown">
          <button className="dropbtn">Choose One</button>
          <div className="dropdown-content">
          <a href="#" onClick={() => initialTable('PharmCompany')}>Company</a>
          <a href="#" onClick={() => initialTable('Ceo')}>Ceo</a>
          <a href="#" onClick={() => initialTable('HeadOffice')}>HeadOffice</a>
          <a href="#" onClick={() => initialTable('HistoryOfEmployement')}>History Of Employment</a>
          <a href="#" onClick={() => initialTable('ManufacturingFacility')}>Manufacturing Facility</a>
          <a href="#" onClick={() => initialTable('Project')}>Project</a>
          <a href="#" onClick={() => initialTable('Purchase')}>Purchase</a>
          <a href="#" onClick={() => initialTable('ResearchCenter')}>Research Center</a>
          <a href="#" onClick={() => initialTable('Facility')}>Facility</a>
          <a href="#" onClick={() => initialTable('Researcher')}>Researcher</a>
          <a href="#" onClick={() => initialTable('Task')}>Task</a>
          <a href="#" onClick={() => initialTable('Warehouse')}>Warehouse</a>
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

export default AddEntry
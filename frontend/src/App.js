import React from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import './App.css';
import Mainpage from './components/Mainpage';
import SpecialQueries from './components/SpecialQueries';
import AddEntry from './components/AddEntry';
import {
  BrowserRouter,
  Route,
  Routes
} from "react-router-dom"


function App() {


  return (
    <div>
    <BrowserRouter>
      <Routes>
      <Route path="/" element={<Mainpage />} />
      <Route path="/index" element={<Mainpage />} />
      <Route path="/addEntry" element={<AddEntry />} />
      <Route path="/specQueries" element={<SpecialQueries />} />
      </Routes>
    </BrowserRouter>
  </div>
  )
}
export default App;

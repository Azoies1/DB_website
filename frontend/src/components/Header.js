import { Link } from "react-router-dom";

function Header(){


    return (
        <div>
            <title>A Simple Database Application System for the COVID-19 Pharmaceutical Companies</title>
            <Link to="/index">
            <button type="button" className="topbtn">
                View Table
            </button>
            </Link>
            <Link to="/addEntry">
                <button type="button" className="topbtn">
                    Add An Entry
                </button>
            </Link>
            <Link to="/specQueries">
                <button type="button" className="topbtn">
                    Special Queries
                </button>
            </Link>

            <br/>
            <h2>A Simple Database Application System for the COVID-19 Pharmaceutical Companies</h2>
            <br/>
        </div>
    )
}

export default Header
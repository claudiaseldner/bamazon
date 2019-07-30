var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
  host: "localhost",
  // Port; if not 3306
  port: 3306,
  // username
  user: "root",
  // Password
  password: process.env.PASSWORD,
  database: "bamazon"
});

connection.connect(function(err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId + "\n");
    productsAvailable();
    buy();
});

function productsAvailable() {
        console.log("Selecting all products...\n");
        connection.query("SELECT * FROM products", function(err, res) {
          if (err) throw err;
          // Log all results of the SELECT statement
          console.log(res);
          connection.end();
        });
      }

      // function which prompts the user for what action they should take
function buy() {
    inquirer
      .prompt({
        id: "ID to buy",
        type: "list",
        message: "What is the ID that you would like to buy?",
        choices: ["BUY"]
      })
      .then(function(answer) {
        // based on their answer, either call the bid or the post functions
        if (answer.buy=== "POST") {
          buy();
        }
        else if(answer.postOrBid === "BID") {
          bidAuction();
        } else{
          connection.end();
        }
      });
  }
  
        
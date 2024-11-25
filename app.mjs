import { Sequelize, DataTypes } from "sequelize";

// Grabs NAME, USER, and PASSWORD from env file to validate information
const sequelize = new Sequelize(
  process.env.DB_NAME,
  process.env.DB_USER,  
  process.env.DB_PASSWORD,  
  {
    host: process.env.DB_HOST,
    dialect: 'mysql',
    port: process.env.DB_PORT
});

// creates a table with the columns of NAME, CUSTOMER_ID, and CITY
const customer = sequelize.define('xcustomer', {

  name: { type: DataTypes.STRING, allowNull: false },
  customer_id: { type: DataTypes.INTEGER, allowNull: false },
  city: { type: DataTypes.STRING, allowNull: true }

});
  
//Attempts to authenticate a connection
try {
  await sequelize.authenticate();
  console.log('Connection has been established successfully.');
} 
// When/If an error is caught, an error message will display
catch (error) {
  console.error('Unable to connect to the database:', error);
}

// When the databse is synced, tables will be recreated, and then logged
sequelize.sync({ force: true }).then(() => {
  console.log('Database synced');
});
  
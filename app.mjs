import { Sequelize, DataTypes } from "sequelize";
const sequelize = new Sequelize('ecommerce', 'root', '4_P422w0rd!', {
    host: 'localhost',
    dialect: 'mysql'
  });

  const customer = sequelize.define('xcustomer', {
    name: { type: DataTypes.STRING, allowNull: false },
    customer_id: { type: DataTypes.INTEGER, allowNull: false },
    city: { type: DataTypes.STRING, allowNull: true }
  });
  
  try {
    await sequelize.authenticate();
    console.log('Connection has been established successfully.');
  } catch (error) {
    console.error('Unable to connect to the database:', error);
  }
  
  sequelize.sync({ force: true }).then(() => {
    console.log('Database synced');
  });
  
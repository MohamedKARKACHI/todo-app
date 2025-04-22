const dbType = process.env.DB_TYPE || 'sqlite';
module.exports = dbType === 'mysql' ? require('./mysql') : require('./sqlite');
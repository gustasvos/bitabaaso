import mysql from 'mysql';
import dotenv from 'dotenv';

dotenv.config();

export default class Mysql {
    async getConnection() {
        return mysql.createConnection({
            host: process.env.HOST,
            user: process.env.USER,
            password: process.env.PASSWORD,
            database: process.env.DATABASE
        });
    }
}
<?php 


class DatabaseConnect {
    private $host = "localhost";
    private $database = "ecommerce_kortiguesa"; // "ecommerce_kortiguesa" "ecommb2"
    private $dbusername = "kortiguesa";         //  "kortiguesa" "root"
    private $dbpassword = "K0r7!guesA_2024";    //  "K0r7!guesA_2024"
    private $charset    = 'utf8mb4';
    private $conn = null;


    public function connectDB(){
        $dsn = "mysql: host=$this->host;dbname=$this->database;charset=" . $this->charset;
        try {
            $this->conn = new PDO($dsn, $this->dbusername, $this->dbpassword);
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $this->conn->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);

            return $this->conn;
        } catch (PDOException $e){
            echo "Connection Failed: " . $e->getMessage();
            return null;
        }    
    }

}

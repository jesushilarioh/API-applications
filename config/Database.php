<?php
  class Database {
    // DB Params
    private $host         = 'localhost';
    private $db_name      = 'test';
    private $username     = 'root';
    private $password     = 'root';
    private $connection;

    // DB Connect
    public function connect() {
      $this -> connection = null;

      try {
        $this -> connection = new PDO(
          'mysql:host='. $this -> host . ';dbname='. $this -> db_name , 
          $this ->username, 
          $this -> password
        );
      } catch(PDOException $error) {
        echo 'Connection Error: ' . $error -> getMessage();
      }

      return $this -> connection;
    }
  }
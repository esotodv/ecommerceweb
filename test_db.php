<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

$dsn = 'mysql:host=127.0.0.1;port=3307;dbname=ecommerce;charset=utf8mb4';
try {
  $pdo = new PDO($dsn, 'infymsa', 'tesoto2025', [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
  ]);
  $v = $pdo->query('SELECT VERSION()')->fetchColumn();
  echo "OK. Conectado a MySQL $v";
} catch (PDOException $e) {
  echo "Fallo: " . $e->getMessage();
}

<?php
require_once('plugins/login-ssl.php');

$key = $_ENV['DB_SSL_KEY'];
$cert = $_ENV['DB_SSL_CERT'];
$ca = $_ENV['DB_SSL_CA'];

return new AdminerLoginSsl(
    $ssl = array("key" => $key, "cert" => $cert, "ca" => $ca)
);

<?php
ini_set('max_execution_time', 5000000);
define("MAIN_DIR", "/home/xtreamcodes/iptv_xtream_codes/");
define("CONFIG_CRYPT_KEY", "5709650b0d7806074842c6de575025b1");

function xor_parse($data, $key) {
    $i = 0;
    $output = '';
    foreach (str_split($data) as $char) {
        $output.= chr(ord($char) ^ ord($key[$i++ % strlen($key)]));
    }
    return $output;
}

$_INFO = json_decode(xor_parse(base64_decode(file_get_contents(MAIN_DIR."config")), CONFIG_CRYPT_KEY), True);
$conn = new mysqli($_INFO["host"], $_INFO["db_user"], $_INFO["db_pass"], $_INFO["db_name"], $_INFO["db_port"]);

if ($conn->connect_error) {
    die("ERROR: " . $conn->connect_error);
}

$conn->query("DELETE FROM stream_logs WHERE 1");
$conn->close();

?>
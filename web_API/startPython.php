<?php
// change paths according to system
// paths linux:
$pypath = "/Users/janine/opt/anaconda3/bin/python";
$scriptpath = "/Applications/MAMP/htdocs/2_rewad2_server-main_test/web_API/input_output_B08optimize.py";

// paths windows (absolute paths are better):
//$pypath = "python";
//$scriptpath = "input_output_B08optimize.py";

// decode data from HTTP request
$post_data = json_decode(file_get_contents('php://input'), true);

// extract ID and JSPsych data
$id = $post_data['prolific_id'];
echo $id;

$name = "../data/".$id."_exp1.csv";

// execute python script: file must be executable by the www-data user!
// $pythonstuff = shell_exec("$pypath $scriptpath ".escapeshellarg($id));
// echo $pythonstuff;

try {
    $pythonstuff = shell_exec("$pypath $scriptpath ".escapeshellarg($id));
    echo $pythonstuff;
    echo '{"success": true}';
  } catch(Exception $e) {
    echo '{"success": false, "message": ' . $e->getMessage();
}
?>

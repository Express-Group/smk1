#!usr/bin/php
<?php

$LogPath ="/tmp/test.txt";
$myfile = fopen($LogPath , "a") or die("Unable to open file!");
$txt = "fgsdfgs fsdfs";
fwrite($myfile, $txt);
fclose($myfile);


?>
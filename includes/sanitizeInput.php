<?php 

/**
 * @param string $input - Input to sanitize from user
 * @return string $input - Return sanitized string
 */
function sanitizeInput($input, $conn){
    $input = htmlspecialchars($input);
    $input = strip_tags($input);
    $input = mysqli_real_escape_string($conn, $input);

    return $input;
}
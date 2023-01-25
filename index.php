<?php
  require_once "./includes/connection.php";

  $error = "";
  if(isset($_POST['submitBtn'])) {

    $email = $_POST['email'];
    $password = $_POST['password'];

    $sel = "SELECT * FROM `admin` WHERE `email` = '$email' AND `password` = '$password'";
	  $result = $conn->query($sel);

	
	if($result->num_rows == 1) {
			header("location: ./admin-dashboard");
			$_SESSION['email'] = $email;
  }
  else {
    $error = "Email or Password is invalid";
  }
  }
?>
<!DOCTYPE html>
<html :class="{ 'theme-dark': dark }" x-data="data()" lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Administrator Login - Clearance System</title>
    <link
      href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
      rel="stylesheet"
    />
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="assets/css/tailwind.output.css" />
    <script
      src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js"
      defer
    ></script>
    <script src="assets/js/init-alpine.js"></script>
  </head>
  <body>
    <div class="flex items-center min-h-screen p-6 bg-gray-50 dark:bg-gray-900">
      <div
        class="flex-1 h-full max-w-4xl mx-auto overflow-hidden bg-white rounded-lg shadow-xl dark:bg-gray-800"
      >
        <div class="flex flex-col overflow-y-auto md:flex-row">
          <div class="h-32 md:h-auto md:w-1/2">
            <img
              aria-hidden="true"
              class="object-cover w-full h-full"
              src="assets/img/student.jpg"
              alt="Office"
            />
          </div>
          <div class="flex items-center justify-center p-6 sm:p-12 md:w-1/2">
            <div class="w-full">
              <img src="assets/img/fpi.jpg" alt="" style="width: 100px; height: 100px;" class="mx-auto">
              <h1
                class="mb-4 text-xl font-semibold text-gray-700 dark:text-gray-200"
              >
                Administrator Login
              </h1>

              <div>
                <?php
                  if(!empty($error)) {
                  ?>
                    <div class="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded relative mb-4" role="alert">
                      <span class="block sm:inline"><?php echo $error ?></span>
                    </div>
                  <?php
                  }
                ?>
              </div>
              <form method="post">
                <label class="block text-sm">
                  <span class="text-gray-700 dark:text-gray-400">Email</span>
                  <input
                    name="email"
                    class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-green-400 focus:outline-none focus:shadow-outline-green dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
                    placeholder="admin@example.com"
                  />
                </label>
                <label class="block mt-4 text-sm">
                  <span class="text-gray-700 dark:text-gray-400">Password</span>
                  <input
                    name="password"
                    class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-green-400 focus:outline-none focus:shadow-outline-green dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
                    placeholder="***************"
                    type="password"
                  />
                </label>

                <!-- You should use a button here, as the anchor is only used for the example  -->
                <input type="submit" name="submitBtn"
                  class="block w-full px-4 py-2 mt-4 text-sm font-medium leading-5 text-center text-white transition-colors duration-150 bg-green-600 border border-transparent rounded-lg active:bg-green-600 hover:bg-green-700 focus:outline-none focus:shadow-outline-green"
                  value="Log in"
                > 
              </form>
              
              <div style="margin-top: 20px;" class="text-sm">
                <a class="text-green-600 underline" href="index_2.php">Student Login</a> 
              </div> 
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>

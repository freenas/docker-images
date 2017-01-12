Working LEMP stack
-Debian Linux 8.5
-Nginx 1.6.2
-MySQL 5.5.53
-PHP 7

Installation:
Create Dataset and give read/execute permissions to the user www.
Use this dataset in the advanced creation section under volumes and map to /var/www/html
Create index.php in this your mapped folder with this content:
```
      <?php
          $link = mysqli_connect("127.0.0.1", "admin", "pass");

          if (!$link) {
          echo "Error: Unable to connect to MySQL." . PHP_EOL;
          echo "Debugging errno: " . mysqli_connect_errno() . PHP_EOL;
          echo "Debugging error: " . mysqli_connect_error() . PHP_EOL;
          exit;
          }

          echo "Success: A proper connection to MySQL was made!" . PHP_EOL;
          echo "Host information: " . mysqli_get_host_info($link) . PHP_EOL;

          mysqli_close($link);
      ?>

       <?php phpinfo();?>
 ```      
Connect to your webserver and check if your index.php file can be accessed.

In case you'd like to change the mysql username and password:
Start the Serial Console
 ```
    # mysql
    #  mysql> SET PASSWORD FOR 'admin'@'%' = PASSWORD( 'password' );
```

CREATE TABLE weather_readings (
 id INT AUTO_INCREMENT PRIMARY KEY,
 city VARCHAR(255) NOT NULL,
 temperature DECIMAL(10,2) NOT NULL,
 is_raining TINYINT(1),
 recorded_at DATETIME NOT NULL,
 humidity INT
);

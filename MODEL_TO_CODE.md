# From model to code
1. The model is the file app/PIM/weather_reading.json. It is platform independent because it names only plain
 concepts and data types such as text, decimal, yesno, date, and datetime. It does not mention any database type,
 framework, or server.
2. The files generated from it are app/Database/Migrations/2026-10-16-140354_CreateWeatherReadingTable.php,
 app/Models/WeatherReadingModel.php, and writable/generated/weather_readings.sql. The migration creates the
 table and the model class gives the same columns a home in CodeIgniter.
3. The mapping rule for a text field is the 'text' entry in the $sqlTypes list of app/Commands/ModelGenerate.php.
 It maps the model type text to VARCHAR(255), which is the SQL type of the city column. The same rule also exists
 in the $ci4Types list, which maps text to VARCHAR(255) for the CodeIgniter target.
4. To produce code for a different platform, the command would need new mapping rules for that platform. The
 $ci4Types and $sqlTypes lists would be extended, or a new list and new writer methods would be added so the
 same model file can be transformed into another platform's code.

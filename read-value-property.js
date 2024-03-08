// Assuming your JSON file is named "data.json"
const os = require("os");
const fs = require("fs");
const path = require("path");

// Get the path to the temp directory
const tempDir = os.tmpdir();

// Specify the filename you want to read
const filename = "api.json"; // Replace with your actual filename

// Construct the full path
const filePath = path.join(tempDir, filename);

// Read the JSON file
fs.readFile(filePath, "utf8", (err, data) => {
  if (err) {
    console.error("Error reading the JSON file:", err);
    return;
  }

  try {
    const jsonData = JSON.parse(data);
    const value = jsonData.value; // Assuming the property name is "value"
    console.log(value);
  } catch (parseError) {
    console.error("Error parsing JSON:", parseError);
  }
});

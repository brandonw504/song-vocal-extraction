# Define the URL of the file
$url = "https://zenodo.org/records/1117372/files/musdb18.zip?download=1"

# Define the output file name
$outputFile = "musdb18.zip"

# Download the file using curl
curl -o $outputFile $url

# Extract the ZIP file into the current directory
Expand-Archive -Path $outputFile -DestinationPath "."

# Remove the ZIP file after extraction (optional)
Remove-Item $outputFile
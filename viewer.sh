# Usage: viewer.sh <file1> [file2 ... fileN]

# Check if no arguments were provided
if [ $# -eq 0 ]; then
  echo "Usage: $0 <file1> [file2 ... fileN]"
  exit 1
fi

# Loop over all files passed as arguments
for FILE in "$@"; do
  # Skip files with .com extension
  if [[ "$FILE" == *.com ]]; then
    echo "Skipping .com file: $FILE"
    continue
  fi

  # Check if file exists
  if [ ! -f "$FILE" ]; then
    echo "Error: File not found -> $FILE"
    continue
  fi

  # Output file contents
  echo "Contents of $FILE:"
  cat "$FILE"

  # Show file info with human-readable size
  echo -e "\nFile info for $FILE:"
  ls -lh "$FILE"
  echo "-----------------------------------"
done
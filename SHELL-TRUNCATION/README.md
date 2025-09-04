# Filter
## grep pattern

``` bash

# Find pattern
grep apple filter-file.txt

# Count occurances
grep -c apple filter-file.txt

# Find either pattern
grep -e apple -e pear filter-file.txt

# Count occurances of both patterns
grep -c -e apple -e pear filter-file.txt

# Show all the lines that DO NOT contain pattern
grep -v apple filter-file.txt

# Combile for various filtering options
grep -v apple filter-file.txt | grep -c pear

## Find files

# Find all bash scripts
find . -name "*.sh"

# Find all csv files
find . -name "*.csv"

# Find all executable non-invisible files
find . -perm /+x ! -name '.*' -type f

# Find all executable non-invisible files and ignore .git directories
find . -perm /+x -not -path '*/\.*' -type f

# Save the header and then shuffle data underneath
head -n 1 nba_2017.csv > subset.csv

# Shuffle all rows after the header, take 20 random ones, and append to subset
tail -n +2 nba_2017.csv | shuf | head -n 20 >> subset.csv

# Use awk to print header, then shuffle the rest
( head -n 1 nba_2017.csv && tail -n +2 nba_2017.csv | shuf | head -n 20 ) > subset.csv
# Parentheses () group commands so the output of both gets redirected together.
# First head -n 1 prints the header.
# Then tail … | shuf | head … gives your random subset.

# With csvkit (if installed)
csvsql --query "SELECT * FROM nba_2017 ORDER BY RANDOM() LIMIT 20" nba_2017.csv > subset.csv
# This keeps headers automatically
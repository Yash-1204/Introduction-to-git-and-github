
#!/usr/bin/env bash
# simple-interest.sh - Compute Simple Interest based on user input.
# SI = (P * R * T) / 100

read -p "Enter Principal (P): " P
read -p "Enter Rate of Interest (R in % per time unit): " R
read -p "Enter Time Period (T): " T

# Validate numeric inputs
if ! [[ "$P" =~ ^[0-9]+(\.[0-9]+)?$ ]] || \
   ! [[ "$R" =~ ^[0-9]+(\.[0-9]+)?$ ]] || \
   ! [[ "$T" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
  echo "Error: Please enter numeric values for P, R, and T."
  exit 1
fi

SI=$(awk -v p="$P" -v r="$R" -v t="$T" 'BEGIN { printf "%.2f", (p*r*t)/100 }')
echo "Simple Interest (SI) = $SI"

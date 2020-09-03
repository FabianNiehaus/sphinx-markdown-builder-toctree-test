# Cancel execution on error
set -e
# Create venv if not present
if [ ! -d "./venv" ]; then
  echo "--------------------------------"
  echo "Creating venv..."
  python3.7 -m venv venv
fi
# Activate venv if present
if [ -d "./venv" ]; then
  echo
  echo "--------------------------------"
  echo "Activating venv..."
  source venv/bin/activate
  python3 -V
fi
# Install / update packages from requirements
echo
echo "--------------------------------"
echo "Installing requirements..."
pip install -U -r requirements.txt
# Create modules from sources' docstring
echo
echo "--------------------------------"
echo "Running sphinx-apidoc..."
sphinx-apidoc -f -o docs/source/code module/
# Build html docs for reference
echo
echo "--------------------------------"
echo "Running sphinx html build..."
sphinx-build -M html docs/source docs/build -a
# Build markdown docs
echo
echo "--------------------------------"
echo "Running sphinx markdown build..."
sphinx-build -M markdown docs/source docs/build -a

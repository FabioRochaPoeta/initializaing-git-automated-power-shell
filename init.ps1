mkdir docs, data/raw, data/processed
mkdir code/analysis, code/models, code/preprocessing 
git init
add-content .gitignore .env, .venv, init.ps1
add-content .env ''
python -m venv .venv
.venv/scripts/activate
python -m pip install --no-cache-dir --upgrade pip 
pip list
(python -V).tolower().replace(' ','-') > runtime.txt
pip install --no-cache-dir ipykernel python-decouple pandas 
ipython kernel install --user --name=.venv
pip freeze > requirements.txt
add-content README.md '# Alinhamento', '', 'Testando git.'
git add .
git commit -m 'Initializing repository.'

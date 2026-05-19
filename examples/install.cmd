python -m venv .venv
call .venv\Scripts\activate
pip install build
python -m build --outdir dist ..\
pip install dist\opencode_api-1.15.7-py3-none-any.whl --force-reinstall

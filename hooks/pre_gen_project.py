from cookiecutter.main import cookiecutter

from datetime import datetime

now = datetime.now()


cookiecutter(
    'cookiecutter-from-editor-to-pypi',
    extra_context={
        'humanized_timestamp': now.isoformat(),
        'copyright_year': now.year,
    }
)

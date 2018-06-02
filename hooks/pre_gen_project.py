from os.path import abspath, dirname, join, basename
from cookiecutter.main import cookiecutter

from datetime import datetime

now = datetime.now()

hooks_path = dirname(abspath(__file__))
cookiecutter_path = abspath(join(hooks_path, '..'))

cookiecutter(
    basename(cookiecutter_path),
    extra_context={
        'humanized_timestamp': now.isoformat(),
        'copyright_year': now.year,
    }
)

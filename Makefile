port = 8000 # defaults
venv = .venv/bin/activate
install:
	pip install -r requirements.txt
run:
	python manage.py runserver $(port)
migration:
	python manage.py makemigrations
migrate:
	python manage.py migrate
superuser:
	python manage.py createsuperuser
test:
	python manage.py test
shell:
	python manage.py shell
static:
	python manage.py collectstatic
run_all:
	python manage.py makemigrations
	python manage.py migrate
	python manage.py runserver $(port)
venv:
	$(venv)
	
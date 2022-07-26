# Simple Server

This is just a very simple Django backend server that is part of a Flutter tutorial series.

In order to get this server up and running, follow these steps:

-   clone the repository
-   navigate into the newly created folder: cd simple-server
-   setup a virtual environment by running: python3 -m venv venv
-   then activate the virtual environment by running: source venv/bin/activate (macOS) or source venv/Scripts/activate.bat (windows)
-   then install the needed packages by running: pip install -r requirements.txt
-   then run: python manage.py makemigrations
-   then run: python manage.py migrate
-   then create a super user: python manage.py createsuperuser
-   then run your server: python manage.py runserver
-   then go into your browser and navigate to: http://localhost:8000/admin/
-   once in your admin panel, add a few posts to have some data to work with

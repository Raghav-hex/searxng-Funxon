FROM searxng/searxng:latest

EXPOSE 8080

CMD ["uwsgi", "--http", ":8080", "--wsgi-file", "searx/webapp.py", "--master", "--processes", "4", "--threads", "2", "--logto", "/dev/stdout"]

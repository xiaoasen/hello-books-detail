FROM python:3.11

RUN pip install --upgrade pip
RUN pip install mkdocs-material==9.1.15
RUN pip install neoteroi-mkdocs
RUN pip install mkdocs-macros-plugin

WORKDIR /hello_books_detail_app

COPY docs /hello_books_detail_app/docs
COPY mkdocs.yml /hello_books_detail_app/mkdocs.yml

RUN mkdir -p ./docs/overrides && mkdocs build

EXPOSE 8080

CMD ["mkdocs", "serve", "-a", "0.0.0.0:8080"]
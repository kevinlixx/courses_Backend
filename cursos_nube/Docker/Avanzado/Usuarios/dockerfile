FROM nginx:1.27.2

RUN apt-get update && apt-get -y upgrade

RUN groupadd -r amin && useradd -r -g amin amin
RUN chown -R amin:amin /usr/share/nginx/html
USER amin

CMD ["bash", "-c", "echo Hello from appuser!"]
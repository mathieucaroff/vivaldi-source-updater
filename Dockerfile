FROM alpine/git
COPY . /app
RUN make /app
CMD bash /app/entrypoint.sh
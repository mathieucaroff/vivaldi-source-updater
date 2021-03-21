FROM alpine/git
COPY . /app
RUN curl https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh > miniconda.sh
RUN bash miniconda.sh -b -p /conda
CMD /conda/bin/python /app/updater.py

FROM python:2.7
RUN apt-get update
ADD omdbtool.py /
ADD thesmallscript.sh /
CMD [ "./thesmallscript.sh"]
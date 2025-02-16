FROM mcr.microsoft.com/dotnet/aspnet:8.0

WORKDIR /tmp
COPY curl-files/*.deb .
RUN ls -l
RUN dpkg -i /tmp/*.deb || apt-get install -fy
RUN rm -rf /tmp/*.deb
RUN curl --version

RUN echo -e '#!/bin/sh\nwhile :; do echo "Listening on 80..."; sleep 60; done' > /start.sh \
    && chmod +x /start.sh

EXPOSE 80

CMD ["sh", "/start.sh"]
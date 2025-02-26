FROM mcr.microsoft.com/dotnet/aspnet:8.0

WORKDIR /tmp
RUN apt-get update && apt-get install -y init-system-helpers && rm -rf /var/lib/apt/lists/*

RUN echo -e '#!/bin/sh\nwhile :; do echo "Listening on 80..."; sleep 60; done' > /start.sh \
    && chmod +x /start.sh

EXPOSE 80

CMD ["sh", "/start.sh"]
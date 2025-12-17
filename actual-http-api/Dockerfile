ARG BUILD_FROM
FROM ${BUILD_FROM}

# Install jq for JSON parsing
RUN apk add --no-cache jq bash

# Copy minimal wrapper script
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Use wrapper as entrypoint
ENTRYPOINT ["/run.sh"]

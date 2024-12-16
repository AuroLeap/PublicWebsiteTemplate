FROM antora/antora

# "#################################################"
# "Get the latest APT packages"
RUN apk update

# "#################################################"
# "Install asciidoctor-kroki dependencies.
# RUN yarn global add asciidoctor-kroki
# Commented out as this is installed through npm

# "#################################################"
# "Install node.
RUN apk add --update nodejs npm

# Set working directory:
WORKDIR /antora

COPY --chmod=755 ContainerSupport/customep.sh /usr/local/bin/
ENTRYPOINT ["customep.sh"]

#CMD ["antora"]

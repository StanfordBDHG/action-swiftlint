FROM ghcr.io/realm/swiftlint:latest

COPY LICENSE README.md /

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]

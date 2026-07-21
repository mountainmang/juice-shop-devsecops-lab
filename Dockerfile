ARG JUICE_SHOP_VERSION=v20.0.0
FROM bkimminich/juice-shop:${JUICE_SHOP_VERSION}

LABEL org.opencontainers.image.title="Juice Shop DevSecOps Lab"
LABEL org.opencontainers.image.description="Pinned OWASP Juice Shop image for an isolated CI security lab"
LABEL org.opencontainers.image.source="https://github.com/mountainmang/juice-shop-devsecops-lab"


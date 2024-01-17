FROM ubuntu:focal

ENV DEBIAN_FRONTEND=noninteractive

# Install chrome/pyppeteer dependencies for mkdocs to pdf
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    python3-pip \ 
    gconf-service \ 
    libasound2 \ 
    libatk1.0-0 \ 
    libatk-bridge2.0-0 \ 
    libc6 \ 
    libcairo2 \ 
    libcups2 \ 
    libdbus-1-3 \ 
    libexpat1 \ 
    libfontconfig1 \ 
    libgcc1 \ 
    libgconf-2-4 \ 
    libgdk-pixbuf2.0-0 \ 
    libglib2.0-0 \ 
    libgtk-3-0 \ 
    libnspr4 \ 
    libpango-1.0-0 \ 
    libpangocairo-1.0-0 \ 
    libstdc++6 \ 
    libx11-6 \ 
    libx11-xcb1 \ 
    libxcb1 \ 
    libxcomposite1 \ 
    libxcursor1 \ 
    libxdamage1 \ 
    libxext6 \ 
    libxfixes3 \ 
    libxi6 \ 
    libxrandr2 \ 
    libxrender1 \ 
    libxss1 \ 
    libxtst6 \ 
    ca-certificates \ 
    fonts-liberation \ 
    libappindicator1 \ 
    libnss3 \ 
    lsb-release \ 
    xdg-utils \ 
    pandoc \
    make \
    wget \
    git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install mkdocs and plugins
RUN pip install mkdocs-material mkdocs-macros-plugin mkdocs-page-pdf

# Pre-install chrome
RUN pyppeteer-install

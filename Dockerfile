FROM node:20.16.0

WORKDIR /workspace

RUN git clone https://github.com/Ray-Lee12138/Game-XiuXian.git && \
    mv ./Game-XiuXian/* ./ && \
    rm -rf ./Game-XiuXian/ && \
    npm install -g yarn && \
    yarn install && \
    npm run build

CMD ["vite"]
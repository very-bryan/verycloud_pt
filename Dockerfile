FROM node:18-alpine
RUN addgroup -S app && adduser -S app -G app
WORKDIR /app
COPY --chown=app:app . .
USER app
ENV PORT=8080
CMD ["node", "server.js"]

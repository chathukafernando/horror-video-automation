FROM n8nio/n8n:latest

# Set working directory
WORKDIR /home/node

# Set environment variables for Railway
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=8080
ENV N8N_PROTOCOL=http
ENV N8N_LISTEN_ADDRESS=0.0.0.0
ENV NODE_ENV=production

# Create n8n directory with proper permissions
USER root
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

# Switch back to node user
USER node

# Expose the port
EXPOSE 8080

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD curl -f http://localhost:8080/ || exit 1

# Start n8n
CMD ["n8n"]

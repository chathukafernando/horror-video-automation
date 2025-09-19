# Dockerfile
FROM n8nio/n8n:latest

# Set environment variables
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=8080
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV EXECUTIONS_DATA_SAVE_ON_SUCCESS=all
ENV EXECUTIONS_DATA_SAVE_ON_ERROR=all

# Create directory for n8n data
RUN mkdir -p /home/node/.n8n

# Set the correct permissions
RUN chown -R node:node /home/node/.n8n

# Switch to node user
USER node

# Expose port
EXPOSE 8080

# Start n8n
CMD ["n8n", "start"]

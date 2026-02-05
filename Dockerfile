FROM node:22-bookworm-slim

# Install OpenClaw globally
RUN npm install -g openclaw@latest

# Create the configuration directory
RUN mkdir -p /root/.openclaw

# Set the working directory
WORKDIR /root

# Expose the Gateway port
EXPOSE 18789

# Start the Gateway listening on all interfaces (0.0.0.0)
CMD ["openclaw", "gateway", "--port", "18789", "--host", "0.0.0.0", "--verbose"]

FROM node:22-bookworm-slim

# 1. Update apt and install git (Required for installation)
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# 2. Install OpenClaw globally
RUN npm install -g openclaw@latest

# 3. Create the configuration directory
RUN mkdir -p /root/.openclaw

# 4. Set the working directory
WORKDIR /root

# 5. Expose the Gateway port
EXPOSE 18789

# 6. Start the Gateway
CMD ["openclaw", "gateway", "--port", "18789", "--host", "0.0.0.0", "--verbose"]

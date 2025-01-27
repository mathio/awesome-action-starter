FROM node:20-slim

WORKDIR /app

# Install pnpm
RUN npm install -g pnpm

# Copy package files
COPY package.json pnpm-lock.yaml tsconfig.json /app

# Copy source code
COPY src /app/src

# Install dependencies
RUN pnpm install

# Build TypeScript code
RUN pnpm build

# Run the action
ENTRYPOINT ["node", "./build/index.js"] 
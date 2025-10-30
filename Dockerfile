# Step 1: Use Node base image
FROM node:18

# Step 2: Set working directory
WORKDIR /app

# Step 3: Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Step 4: Copy rest of the app
COPY . .

# Step 5: Expose port
EXPOSE 3000

# Step 6: Start the app
CMD ["npm", "start"]

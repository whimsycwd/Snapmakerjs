FROM nodesource/vivid:4
MAINTAINER Cheton Wu <cheton@gmail.com>

# cache package.json and node_modules to speed up builds
ADD package.json package.json
RUN npm install --production

# Expose port
EXPOSE  8000

# Add your source files
ADD . .
CMD ["npm", "start"]
# Stage 1: Build the Flutter web application
FROM ghcr.io/cirruslabs/flutter:3.19.0 AS build
WORKDIR /app

# Copy dependency files first for caching
COPY pubspec.yaml pubspec.lock ./
RUN flutter pub get

# Copy the rest of the project
COPY . .

# Build the app for the web
RUN flutter build web

# Stage 2: Serve the application using Nginx
FROM nginx:alpine
# Copy the built web assets
COPY --from=build /app/build/web /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

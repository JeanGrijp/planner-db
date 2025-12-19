# Dockerfile for PostgreSQL Database
FROM postgres:16-alpine

# Build arguments with default values
ARG POSTGRES_DB=planner_db
ARG POSTGRES_USER=planner_user
ARG POSTGRES_PASSWORD=planner_password

# Set environment variables
ENV POSTGRES_DB=${POSTGRES_DB}
ENV POSTGRES_USER=${POSTGRES_USER}
ENV POSTGRES_PASSWORD=${POSTGRES_PASSWORD}

# Expose PostgreSQL port
EXPOSE 5432

# Health check
HEALTHCHECK --interval=30s --timeout=5s --start-period=5s --retries=3 \
  CMD pg_isready -U $POSTGRES_USER -d $POSTGRES_DB || exit 1

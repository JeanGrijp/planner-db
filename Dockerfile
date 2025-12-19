# Dockerfile for PostgreSQL Database
FROM postgres:16-alpine

# Set environment variables
ENV POSTGRES_DB=planner_db
ENV POSTGRES_USER=planner_user
ENV POSTGRES_PASSWORD=planner_password

# Expose PostgreSQL port
EXPOSE 5432

# Health check
HEALTHCHECK --interval=30s --timeout=5s --start-period=5s --retries=3 \
  CMD pg_isready -U $POSTGRES_USER -d $POSTGRES_DB || exit 1

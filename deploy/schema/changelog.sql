--liquibase formatted sql

--changeset liquibase:1

CREATE TABLE traffic (
  time TIMESTAMP WITH TIME ZONE NOT NULL,

  device_id VARCHAR(64) NOT NULL,

  bytes_received DOUBLE PRECISION NOT NULL,
  bytes_sent DOUBLE PRECISION NOT NULL
);

SELECT create_hypertable('traffic', 'time', 'device_id', 2);

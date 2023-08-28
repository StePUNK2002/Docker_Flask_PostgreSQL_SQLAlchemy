--
-- PostgreSQL database dump
--

-- Dumped from database version 14.8 (Homebrew)
-- Dumped by pg_dump version 14.8 (Homebrew


CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    title VARCHAR(120),
    likes INTEGER
);
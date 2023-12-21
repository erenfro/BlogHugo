# BlogHugo

![GitHub Workflow Status](https://github.com/erenfro/bloghugo/actions/workflows/on-merge.yaml/badge.svg)
![Hugo Version](https://img.shields.io/badge/Hugo-v0.101.0-ee1289)
![Nginx Version](https://img.shields.io/badge/Nginx-1.25.3-228b22)

BlogHugo is my automated blog website powered by [Hugo](https://gohugo.io/), a popular static site generator. This repository provides a robust setup for building and deploying a Hugo-based blog using GitHub Actions and a custom Dockerfile, thereby utilizing [GitOps](https://www.weave.works/blog/what-is-gitops-really) methodologies. It streamlines the process of managing my blog, automating the build and test process, and ensuring my content stays up-to-date.

## Overview

- [Features](#-features)
- [Local Testing](#-local-testing)
- [Dockerfile](#-dockerfile)
- [License](#-license)
- [Acknowledgments](#-acknowledgments)

## ⭐ Features

- **Automatic Builds**: With GitHub Actions, every push or pull request triggers an automated build process, ensuring the website is always current and bug-free.
- **Dockerfile**: The Dockerfile included in this repository utilizes [Nginx](https://www.nginx.com/) to serve the Hugo web content for easy deployment.
- **Hugo Version Compatibility**: This setup is compatible with Hugo v0.101.0, ensuring that your website runs smoothly and takes advantage of the latest features.

## 🔍 Local Testing

Testing can be performed locally with the Hugo development server:

```
hugo server
```

## 🐋 Dockerfile

A Dockerfile is provided for convenience, and can be easily built and deployed:

```
docker build -t bloghugo .
docker run -p 8080:80 bloghugo:latest
```

## 🔏 License

See [LICENSE](./LICENSE)

## 🤝 Acknowledgments

- [Hugo](https://github.com/features/actions) - The world's fastest framework for building websites.
- [GitHub Actions](https://github.com/features/actions) - Automate your workflow from idea to production.
- [Docker](https://www.docker.com/) - Accelerate how you build, share, and run applications.

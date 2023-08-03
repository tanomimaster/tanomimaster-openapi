# Tanomimaster REST API specification

[![Ruby](https://github.com/tanomimaster/tanomimaster-openapi/actions/workflows/ci.yml/badge.svg)](https://github.com/tanomimaster/tanomimaster-openapi/actions/workflows/ci.yml)

- Built with OAS (Open API Specification) 3.0 

## Workflow

- Design OpenAPI and write program on server side.
- A head of development is `develop` branch.
- @matsubo reviews the `develop`  when deploying `tanomimaster-www` and merge `develop` into `master`. Increment API version number.

- master
  - Publish to clients and vendors
  - Current production release.
- develop
  - The newest development version.

We need to re-define branch release model associating server-side and client-side application deployment.

## Policy

- [Richardson Maturity Model](https://martinfowler.com/articles/richardsonMaturityModel.html])
  - Level 2 is required.
- Following on gitlab's API design.
  - https://docs.gitlab.com/ee/api/README.html#gitlab-ci-job-token


## Run Github Actions on local

```
% act pull_request
```

## Tools

- Editor
  - There is no recommended editors yet.
- Viewer
  - OpenAPI (Swagger) Editor
    - Visual Studio Code extension
    - https://marketplace.visualstudio.com/items?itemName=42Crunch.vscode-openapi
  - SwaggerEditor
    - https://editor.swagger.io/
  - Stoplight's studio
    - https://stoplight.io/p/studio/
    - Download app is better than web version.
    - There are many unexpected behavior and changes YAML file with unexpected value.



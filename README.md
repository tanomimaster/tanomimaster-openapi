# Tanomimaster REST API specification

- Built with OAS (Open API Specification) 3.0 

## Workflow

- Design OpenAPI and write prgram on server side.
- The newest OAS API spec is `develop`.
- @matsubo reviews the `develop` branch and merge to `master`.

- master
  - Publish to clients and vendors
- develop
  - The newest design of current server side development.

We need to re-define branch release model associating server-side and client-side application deployment.

## Policy

- Following on gitlab's API design.
  - https://docs.gitlab.com/ee/api/README.html#gitlab-ci-job-token


## Run Github Actions on local

```
% act pull_request
```

## Tools

- Viewer
  - SwaggerEditor
    - https://editor.swagger.io/
  - Stoplight's studio
    - https://stoplight.io/p/studio/
    - Download app is better than web version.
    - There are many unexpected behavior and changes YAML file with unexpected value.



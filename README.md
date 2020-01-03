# jaycused/zero-ice-build-linux

A Docker container for building the [zero-ice](https://pypi.org/project/zeroc-ice/) python wheel for linux.

[zero-ice](https://pypi.org/project/zeroc-ice/) currently only offers whl files for windows and macosx. I wanted to use it in a linux image. This docker image will take the source, build the wheel and upload to a repo of your choosing.

# Run
```
docker run -e SOURCE_FILE_URL='<source file url>' -e REPO_USERNAME='<username>' -e REPO_PASSWORD='<password>' -e REPO_URL='<repo url>' jaycused/zero-ice-build-linux
```

example:

```
docker run -e SOURCE_FILE_URL='https://files.pythonhosted.org/packages/e1/22/9bf3c799244be9baaeb34a3de0573c8a468ad29f9ac859861ffa0c7c68e1/zeroc-ice-3.7.3.tar.gz' -e REPO_USERNAME='jaycused' -e REPO_PASSWORD='my-secret-password' -e REPO_URL='https://test.pypi.org/legacy/' jaycused/zero-ice-build-linux
```


@ECHO OFF
CD ..

ECHO [1/3] Cloning repositories...
git clone -b main https://github.com/CustomerAutoZoneSelfService/cazss-frontend.git
git clone -b main https://github.com/CustomerAutoZoneSelfService/cazss-backend.git

ECHO [2/3] Copying configuration files...
CD setup/frontend
COPY Dockerfile "../../cazss-frontend/Dockerfile"
COPY .env "../../cazss-frontend/.env"
CD ../backend
COPY Dockerfile "../../cazss-backend/Dockerfile"
COPY env.properties "../../cazss-backend/env.properties"
CD ..

ECHO [3/3] Copying .env from template...
COPY example.env "../.env"

ECHO.
ECHO #########################################
ECHO #                SUCCESS                #
ECHO #########################################

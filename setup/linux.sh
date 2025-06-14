#!/bin/bash
cd "$(dirname "$0")/.."

echo "[1/3] Cloning repositories..."
git clone -b main https://github.com/CustomerAutoZoneSelfService/cazss-frontend.git
git clone -b main https://github.com/CustomerAutoZoneSelfService/cazss-backend.git

echo "[2/3] Copying configuration files..."
cd setup/frontend
cp Dockerfile ../../cazss-frontend/Dockerfile
cp .env ../../cazss-frontend/.env
cd ../backend
cp Dockerfile ../../cazss-backend/Dockerfile
cp env.properties ../../cazss-backend/env.properties
cd ..

echo "[3/3] Copying .env from template..."
cp example.env ../.env

echo ""
echo "#########################################"
echo "#                SUCCESS                #"
echo "#########################################"

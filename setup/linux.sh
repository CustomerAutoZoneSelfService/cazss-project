#!/bin/bash
cd "$(dirname "$0")/.."

echo "[1/3] Cloning repositories..."
git clone -b SCRUM-104 https://github.com/CustomerAutoZoneSelfService/cazss-frontend.git
git clone -b SCRUM-105 https://github.com/CustomerAutoZoneSelfService/cazss-backend.git

echo "[2/3] Copying configuration files..."
cd setup/frontend
cp Dockerfile ../../cazss-frontend/Dockerfile
cd ../backend
cp Dockerfile ../../cazss-backend/Dockerfile
cp env.properties ../../cazss-backend/env.properties

echo "[3/3] Copying .env from template..."
cp example.env ../.env

echo ""
echo "#########################################"
echo "#                SUCCESS                #"
echo "#########################################"

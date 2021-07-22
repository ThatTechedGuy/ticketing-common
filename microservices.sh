#!/bin/sh
echo "Upgrading common package deps.."
npx npm-check --update-all

echo "Upgrading auth microservice.."
cd .. 
cd auth 
npm i
npx npm-check --update-all
cd ..

echo "Upgrading tickets microservice.."
cd tickets 
npm i
npx npm-check --update-all
cd ..

echo "Upgrading orders microservice.."
cd orders 
npm i
npx npm-check --update-all
cd ..
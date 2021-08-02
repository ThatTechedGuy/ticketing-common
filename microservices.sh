#!/bin/sh
echo "Upgrading common package deps.."
npx npm-check --update-all
npm i

echo "Upgrading auth microservice.."
cd .. 
cd auth 
npx npm-check --update-all
npm i
cd ..

echo "Upgrading tickets microservice.."
cd tickets 
npx npm-check --update-all
npm i
cd ..

echo "Upgrading orders microservice.."
cd orders 
npx npm-check --update-all
npm i
cd ..

echo "Upgrading expiration microservice.."
cd expiration
npx npm-check --update-all
npm i
cd ..
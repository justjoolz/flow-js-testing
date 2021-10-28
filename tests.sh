#!/bin/sh

npm run test -t deploy.test.js      
npm run test -t imports.test.js     
npm run test -t interaction.test.js 
npm run test -t metadata.test.js    
npm run test -t usage.test.js       
npm run test -t utilities.test.js
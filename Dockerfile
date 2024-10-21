# Gebruik de officiële Node.js 20.x.x LTS image als basis
FROM node:20-alpine

# Stel de werkdirectory in de container in op /app
WORKDIR /app

# Kopieer package.json en yarn.lock naar de werkdirectory
COPY package.json yarn.lock ./

# Installeer de afhankelijkheden
RUN yarn install --frozen-lockfile

# Kopieer de rest van de applicatiecode naar de werkdirectory
COPY . .

# Stel de poort in waarop de applicatie zal draaien
EXPOSE 3000

# Start de applicatie
CMD ["yarn", "start"]
# Usar una imagen base adecuada para Node.js y React
FROM node:14-alpine

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar los archivos de dependencias del proyecto
COPY package*.json ./

# Instalar las dependencias
RUN npm install

# Copiar el resto de los archivos del proyecto
COPY . .

# Compilar la aplicación de React
RUN npm run build

#puerto
EXPOSE 3000

# Especificar el comando de inicio del contenedor
CMD ["npm", "start"]

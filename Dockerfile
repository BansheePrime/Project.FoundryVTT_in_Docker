FROM node:current

# Set the FoundryVTT install home
RUN adduser --disabled-password foundry

USER foundry
RUN mkdir -p /home/foundry/fvtt
RUN mkdir -p /home/foundry/fvttdata

ENV FOUNDRY_HOME=/home/foundry/fvtt
ENV FOUNDRY_DATA=/home/foundry/fvttdata

# Set the current working directory
WORKDIR "${FOUNDRY_HOME}"

#copy FoundryVTT
COPY ./FoundryVTT-10.291.zip .

#unzip FoundryVTT to current directory
RUN unzip FoundryVTT*.zip
RUN rm FoundryVTT*.zip

EXPOSE 30000
CMD node ${FOUNDRY_HOME}/resources/app/main.js --dataPath=${FOUNDRY_DATA}
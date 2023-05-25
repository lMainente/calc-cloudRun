# calc-cloudRun
Projeto em php para teste de imagem em docker e deploy no cloud server


## geração imagem docker --

-docker build -t nome_do_projeto .

-docker run -p 4500:80 nome_do_projeto   //porta aleatoria

##  deploy cloud run

Após teste de imagem e container, deploy no cloud run

Certifique-se de ter o SDK do Cloud instalado em sua máquina local. Você pode baixar o SDK do Cloud aqui: https://cloud.google.com/sdk/docs/install.

-gcloud auth login

-gcloud config set project <project-id>

-docker tag <image-name> gcr.io/<project-id>/<image-name>

-gcloud auth configure-docker
  
-docker push gcr.io/<project-id>/<image-name>
  
-gcloud run deploy <service-name> --image gcr.io/<project-id>/<image-name> --platform managed --port 80

para interromper o projeto, deletar ele no painel do console do google 

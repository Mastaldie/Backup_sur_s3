#backup sur s3
#crée un dossier 
mkdir file_name
#Acceder a la plate-forme amazon web service,puis crée un role et un bucket S3 puis donner les autorisations IAM fullacces S3,puis lier IAM a l'instance EC2
#zipper le dossier avec un script shell et la sauvegarder sur s3


#!/bin/bash

# Chemin local vers votre dossier à sauvegarder
SOURCE="/home/ec2-user/amisi"

# Nom de votre compartiment S3
BUCKET_NAME="mondisque"

# Créez une archive tar du dossier
tar -cvf backup.tar $SOURCE

# Chargez l'archive dans Amazon S3
aws s3 cp backup.tar s3://mondisque/



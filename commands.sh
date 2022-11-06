git clone https://github.com/svvoronin/Agile-Development-with-Azure.git
cd Agile-Development-with-Azure
git pull
make all
az webapp up -n flaskml-sergey-voronin --resource-group CI-CD-project --location switzerlandnorth

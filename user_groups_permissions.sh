#1. Skapa användare för Alice, Bob, Charlie, David och Evert
echo "Skapar användare..." #skapar en användare med det angivna 
sudo useradd alice
sudo useradd bob
sudo useradd charlie
sudo useradd david
sudo useradd evert
echo "Användare skapade."

# 2. Skapa gruppen 'developers' och lägg till Alice, Charlie och Evert i gruppen i gruppen
echo "Skapar gruppen 'developers' och lägger till Alice, Charlie och Evert..."
sudo groupadd developers
sudo usermod -aG developers alice
sudo usermod -aG developers charlie
sudo usermod -aG developers evert
echo "Grupp 'developers skapad och användare tillagda."

# 3. Skapa en delad katalog /opt/developers och ge rättigheter till gruppen 'developers'
echo "skapar katalogen /opt/developers och ställer in rättigheter..."
sudo mkdir /opt/developers
sudo chown  :developers /opt/developers
sudo chmod 770 /opt/developers
sudo chmod g+s /opt/developers
echo "katalogen /opt/developers skapad och rättigheter inställda."

# 4. Sätt utgångsdatum för Bob och Davids konton
echo "Sätter utgångsdatum för Bob och David..."
sudo usermod -e 2024-12-31 bob
sudo usermod -e 2024-12-31 david
echo "Utgångsdatum satt för Bob och David."

# 5. Tvinga Evert att byta lösenord vid nästa inloggning
echo "Tvingar Evert att byta lösenord vid nästa inloggning..."
sudo passwd -e evert 
echo "Evert måste byta lösenord vid nästa inloggning."



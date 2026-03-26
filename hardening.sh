#!/bin/bash

LOG_FILE="hardening.log"

log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" | tee -a $LOG_FILE
}

# =========================
# VALIDACIONES
# =========================
if [ "$EUID" -ne 0 ]; then
  echo "❌ Ejecuta como root (sudo)"
  exit
fi

log "🔐 Iniciando hardening básico..."

# =========================
# ACTUALIZACIÓN
# =========================
log "📦 Actualizando sistema..."
apt update -y

# =========================
# INSTALAR HERRAMIENTAS
# =========================
log "🛡️ Instalando UFW y Fail2Ban..."
apt install ufw fail2ban -y

# =========================
# FIREWALL (UFW)
# =========================
log "🔥 Configurando firewall..."

ufw allow 22/tcp
ufw allow 2222/tcp
ufw --force enable

# =========================
# SSH HARDENING
# =========================
log "🔑 Configurando SSH..."

SSH_CONFIG="/etc/ssh/sshd_config"

# Backup
cp $SSH_CONFIG ${SSH_CONFIG}.bak

# Cambiar puerto
if grep -q "^#Port 22" $SSH_CONFIG; then
    sed -i 's/#Port 22/Port 2222/' $SSH_CONFIG
fi

# Deshabilitar root login
sed -i 's/^#PermitRootLogin yes/PermitRootLogin no/' $SSH_CONFIG

# Deshabilitar password auth (opcional pero recomendado)
sed -i 's/^#PasswordAuthentication yes/PasswordAuthentication no/' $SSH_CONFIG

systemctl restart ssh

# =========================
# FAIL2BAN
# =========================
log "🚫 Activando Fail2Ban..."
systemctl enable fail2ban
systemctl start fail2ban

log "✅ Hardening completado"
log "⚠️ Conéctate usando SSH por puerto 2222"

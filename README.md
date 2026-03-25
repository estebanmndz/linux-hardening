# 🔐 Linux Hardening Script (Ubuntu)

## 🧠 Descripción

Este script aplica medidas básicas de hardening en servidores Ubuntu, mejorando la seguridad inicial del sistema mediante configuración de firewall, protección frente a ataques y endurecimiento del acceso SSH.

Está orientado a simular un proceso real de securización en entornos cloud o servidores Linux.

---

## 🔐 Funcionalidades

* Instalación y configuración de UFW (firewall)
* Instalación y activación de Fail2Ban
* Cambio seguro del puerto SSH
* Backup automático de configuración SSH
* Logging de ejecución

---

## ⚙️ Características técnicas

* Script en Bash
* Validación de ejecución como root
* Configuración segura del firewall
* Protección frente a ataques de fuerza bruta
* Idempotencia básica
* Logging en fichero

---

## ▶️ Uso

```bash
sudo chmod +x hardening.sh
sudo ./hardening.sh
```

---

## 📊 Output

```bash
2026-03-25 12:00:00 - 🔐 Iniciando hardening básico...
2026-03-25 12:00:01 - 🔥 Configurando firewall...
2026-03-25 12:00:02 - 🔑 Configurando SSH...
2026-03-25 12:00:03 - 🚫 Activando Fail2Ban
2026-03-25 12:00:04 - ✅ Hardening completado
```

Se genera un fichero `hardening.log` con el detalle de ejecución.

---

## ⚠️ Consideraciones

* Ejecutar siempre como root
* Verificar acceso SSH tras el cambio de puerto
* Probar en entorno de laboratorio antes de producción

---

## 🚀 Mejoras futuras

* Deshabilitar login por password (solo claves SSH)
* Integración con Azure Security Center
* Automatización mediante Ansible
* Configuración avanzada de Fail2Ban

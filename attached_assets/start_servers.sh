
#!/bin/bash

echo "============================================="
echo "  Démarrage de NetSecure Pro avec API IA    "
echo "============================================="

# Set environment to development
export NODE_ENV=development

# Start Express server in the background
echo "[1/2] Démarrage du serveur Express (port 5000)..."
npm run dev &

# Wait for Express server to start
sleep 3

# Start Flask server
echo "[2/2] Démarrage du serveur Flask (port 5001)..."
cd FlaskServer && python app.py &

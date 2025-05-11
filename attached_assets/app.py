from flask import Flask, jsonify, send_from_directory

app = Flask(__name__, static_folder='attached_assets')

@app.route('/')
def accueil():
    return send_from_directory('attached_assets', 'index.html')

@app.route('/run_ai')
def run_ai():
    # Remplacer par ton script IA réel
    resultat = "L'IA a été lancée avec succès !"
    return jsonify({"resultat": resultat})

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=5000)

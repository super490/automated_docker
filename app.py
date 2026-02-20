from flask import Flask

# Creamos la instancia de la aplicación
app = Flask(__name__)

# Definimos la ruta principal
@app.route('/')
def hello():
    return "¡HOLA DESDE DOCKER!"

# Punto de entrada de la aplicación
if __name__ == '__main__':
    # host='0.0.0.0' permite que la app sea accesible desde fuera del contenedor
    app.run(host='0.0.0.0', port=5000)
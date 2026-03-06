class WebSocketHandler {
    constructor(wss, diario) {
        this.wss = wss;
        this.diario = diario;
        this.inicializar();
    }

    inicializar() {
        this.wss.on("connection", ws => {
            this.aoConectar(ws);
        });
    }

    aoConectar(ws) {
        console.log("Cliente conectado");

        // Enviar dados iniciais ao cliente
        ws.send(JSON.stringify(this.diario.obterDados()));

        ws.on("close", () => this.aoDesconectar());
        ws.on("error", err => this.aoErro(err));
    }

    aoDesconectar() {
        console.log("Cliente desconectado");
    }

    aoErro(err) {
        console.log("Erro no WebSocket:", err.message);
    }

    difundir(dados) {
        this.wss.clients.forEach(client => {
            if (client.readyState === 1) { // 1 = OPEN
                client.send(JSON.stringify(dados));
            }
        });
    }
}

module.exports = WebSocketHandler;

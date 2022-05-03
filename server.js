const server = require("express")();
server.listen(3000, async () => { });
server.get("/node-app", async (_, response) => {
    response.json({ "super": "app1" });
});
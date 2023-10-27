import { Request, Response, Router } from "express";
import { pedidoInDatabaseRepository } from "./pedidoInDatabaseRepository";
const pedidoController = Router();

pedidoController
  .get("/pedido", async (_req: Request, res: Response) => {
    try {
      const cliente = await new pedidoInDatabaseRepository().findAll();
      res.status(200).json(cliente);
    } catch (error) {
      res.status(500).json({ message: error });
    }
  })
  .get("/pedido/:idPedido", async (req: Request, res: Response) => {
    try {
      const { idPedido } = req.params;

      const pedido = await new pedidoInDatabaseRepository().findById(idPedido);
      res.status(200).json(pedido);
    } catch (error) {
      res.status(500).json({ message: error });
    }
  })
  .post("/pedido", async (req: Request, res: Response) => {
    try {
      const clienteBody = req.body;
      await new pedidoInDatabaseRepository().save(clienteBody);
      res.status(200).json({ message: "Pedido realizado com sucesso" });
    } catch (error) {
      res.status(500).json({ message: `Erro ao realizar pedido ${error}` });
    }
  });

export default pedidoController;

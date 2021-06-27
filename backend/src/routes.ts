import { Router } from "express";
import * as roofController from "./controllers/roofController";

const router = Router();

router.get("/", (req, res) => res.send("Hello World"));

// Roof routes
router.get("/roofs/", roofController.getAllRoofs);
router.get("/roofs/:id", roofController.getRoofById);
router.post("/roofs/", roofController.addRoof);
router.put("/roofs/:id", roofController.updateRoof);
router.delete("/roofs/:id", roofController.deleteRoof);

export { router };

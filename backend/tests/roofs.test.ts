import axios from "axios";
import { Roof } from "../src/models/Roof";
import { initMongo } from "./initMongo";

describe("roofs", () => {
  beforeAll(initMongo);

  it("create", async () => {
    const griboedov = { type: "Point", coordinates: [59.927031, 30.30499] };

    const roof = await Roof.create({
      name: "Крыша на канале Грибоедова",
      description: "Описание деталей как добраться",
      address: "Канал Грибоедова 12",
      location: griboedov,
      rate: 4.5,
    });
    console.log(roof);
  });

  it("get roofs near me", async () => {
    const me = { type: "Point", coordinates: [59.927032, 30.30498] };

    const roofs = await Roof.where("location").near({
      center: me,
      maxDistance: 1000,
    });
    console.log(roofs);
  });
});

import { RequestHandler } from "express";
import { Roof } from "../models/Roof";

export const getAllRoofs: RequestHandler<null> = async (req, res, next) => {
  // throw new Error("Not implemented");
  const roofs = await Roof.find({}).exec();
  res.send(roofs);
};
export const getRoofById: RequestHandler = async (req, res, next) => {
  const roof = await Roof.findById(req.params.id);
  res.send(roof);
};

export const addRoof: RequestHandler = async (req, res, next) => {
  //todo add filter for rooft that already exists with such location
  const roof = await Roof.create(req.body);
  res.send(roof);
};
export const getRoofsNearMe: RequestHandler = async (req, res, next) => {
  const me = { type: "Point", coordinates: [59.927032, 30.30498] };

  const roofs = await Roof.where("location").near({
    center: me,
    maxDistance: 1000,
  });
  res.send(roofs);
};

export const updateRoof: RequestHandler = async (req, res, next) => {
  const roof = await Roof.findByIdAndUpdate(req.params.id, req.body);
  res.send(roof);
};
export const deleteRoof: RequestHandler = async (req, res, next) => {
  await Roof.findByIdAndDelete(req.params.id);
  res.send("OK");
};

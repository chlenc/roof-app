import mongoose, { Document } from "mongoose";

export interface IRoof {
  name: string;
  description?: string;
  address: string;
  location: mongoose.Schema.Types.Point;
  rate?: number;
  pictures?: [string];
}

export type RoofDocument = Document & IRoof;

const pointSchema = new mongoose.Schema({
  type: {
    type: String,
    enum: ["Point"],
    required: true,
  },
  coordinates: {
    type: [Number],
    required: true,
  },
});

const RoofSchema = new mongoose.Schema({
  name: { type: String, required: true },
  description: { type: String, required: false },
  address: { type: String, required: true },
  pictures: { type: [String], required: false },
  location: {
    type: pointSchema,
    required: true,
  },
  rate: { type: Number, required: false },
});

RoofSchema.index({ location: "2dsphere" });

RoofSchema.set("toJSON", {
  transform: (doc, returnedObject) => {
    returnedObject.id = returnedObject._id.toString();
    delete returnedObject._id;
    delete returnedObject.__v;
  },
});
export const Roof = mongoose.model<RoofDocument>("Roof", RoofSchema);

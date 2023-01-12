const mongoose = require("mongoose");

const wordSchema = mongoose.Schema({
  name: {
    type: String,
    required: true,
    trim: true,
  },
  description: {
    type: String,
    required: true,
    trim: true,
  },
  images: {
      type: String,
      required: true,
  },
  category: {
    type: String,
    required: true,
  },
  level: {
    type: Number,
    required: true,
  }
});

const Word = mongoose.model("Word", wordSchema);
module.exports = { Word, wordSchema };
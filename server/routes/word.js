const express = require("express");
const wordRouter = express.Router();
const auth = require("../middlewares/auth");
const { Word } = require("../models/word.model");


wordRouter.get("/api/words/", auth, async (req, res) => {
  try {
    const words = await Word.find({ category: req.query.category });
    res.json(words);
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});

// create a get request to search words and get them
// /api/products/search/i
wordRouter.get("/api/words/search/:name", auth, async (req, res) => {
  try {
    const words = await Word.find({
      name: { $regex: req.params.name, $options: "i" },
    });

    res.json(words);
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});

module.exports = wordRouter;
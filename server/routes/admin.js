const express = require("express");
const adminRouter = express.Router();
const admin = require("../middlewares/admin");
const { Word } = require("../models/word");
// const { PromiseProvider } = require("mongoose");

// Add word
adminRouter.post("/admin/add-word", admin, async (req, res) => {
  try {
    const { name, description, images, category, level} = req.body;
    let word = new Word({
      name,
      description,
      images,
      category,
      level,
    });
    word = await word.save();
    res.json(word);
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});

// Get all your words
adminRouter.get("/admin/get-words", admin, async (req, res) => {
  try {
    const words = await Word.find({});
    res.json(words);
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});

// Update word
adminRouter.put("/admin/update-word", admin, async (req, res) => {
  try {
    const {id, name, description, images, category, level} = req.body;
    updatedWord = {
      id: id,
      name : name,
      description: description,
      images: images,
      category: category,
      level: level
    }
    await Word.findByIdAndUpdate(id, updatedWord, {new: true});
    res.json(updatedWord);
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});

// Delete word
adminRouter.post("/admin/delete-word", admin, async (req, res) => {
  try {
    const { id } = req.body;
    let word = await Word.findByIdAndDelete(id);
    res.json(word);
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});

module.exports = adminRouter;
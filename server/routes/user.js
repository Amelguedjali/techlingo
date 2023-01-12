const express = require("express");
const userRouter = express.Router();
const auth = require("../middlewares/auth");
const { Word } = require("../models/word");
const User = require("../models/user");

userRouter.post("/api/add-to-favorite", auth, async (req, res) => {
  try {
    const { id } = req.body;
    const word = await Word.findById(id);
    let user = await User.findById(req.user);
    user.list.push({word});
    user = await user.save();
    res.json(user);
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});

userRouter.delete("/api/remove-from-favorite/:id", auth, async (req, res) => {
  try {
    const { id } = req.params;
    const Word = await Word.findById(id);
    let user = await User.findById(req.user);
    for (let i = 0; i < user.list.length; i++) {
      if (user.list[i].word._id.equals(word._id)) {
        user.list.splice(i, 1);
      }
    }
    user = await user.save();
    res.json(user);
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});

// Get favorite words
userRouter.get("/admin/get-favorite-words", auth, async (req, res) => {
  try {
    let user = await User.findById(req.user);
    for (let i = 0; i < user.list.length; i++) {
      const words = await user.list[i].find({});
    }
    res.json(words);
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});


module.exports = userRouter;
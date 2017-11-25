'use strict';

const express = require('express');
const router = express.Router();

// var data = require('../db/dummy-data');

const { DATABASE } = require('../config');
const knex = require('knex')(DATABASE);

/* ========== GET/READ ALL ITEMS ========== */
// This gets the list of titles for the main screen.
router.get('/stories', (req, res) => {
  knex.select()
    .from('stories')
    .then(results=>res.json(results));
});

// This works the same as the above:

// router.get('/stories', (req, res) => {
//   knex('stories')
//     .select()
//     .then(results=>res.json(results));
// });

// Original code using dummy-data:

// router.get('/stories', (req, res) => {
//   if (req.query.search) {
//     const filtered = data.filter((obj) => obj.title.includes(req.query.search));
//     res.json(filtered);
//   } else {
//     res.json(data);
//   }
// });

/* ========== GET/READ SINGLE ITEMS ========== */
// This gets a single blog post when you click one of the titles on the main screen.
router.get('/stories/:id', (req, res, next) => {
  const idInput = Number(req.params.id);
  knex('stories')
    .select('title', 'content')
    // .select('stories.id', 'title', 'content')
    .where('stories.id', idInput)
    .then(([result]) => {
      res.status(200).json(result);
    });
});

// Original code using dummy-data:

// router.get('/stories/:id', (req, res) => {
//   const id = Number(req.params.id);
//   const item = data.find((obj) => obj.id === id);
//   res.json(item);
// });

/* ========== POST/CREATE ITEM ========== */
// router.post('/stories', (req, res, next)=>{
//   const {titleInput, contentInput} = req.body;
//   knex('/stories')
//     .insert([{
//       id: 1011,
//       title: titleInput,
//       content: contentInput
//     }])
//     .then(results=>res.json(results));
// });

// Original code using dummy-data:

// router.post('/stories', (req, res) => {
//   const {title, content} = req.body;
  
//   /***** Never Trust Users! *****/
  
//   const newItem = {
//     id: data.nextVal++,
//     title: title,
//     content: content
//   };
//   data.push(newItem);
//   res.location(`${req.originalUrl}/${newItem.id}`).status(201).json(newItem);
// });

/* ========== PUT/UPDATE A SINGLE ITEM ========== */

// Original code using dummy-data:

// router.put('/stories/:id', (req, res) => {
//   const {title, content} = req.body;
  
//   /***** Never Trust Users! *****/
  
//   const id = Number(req.params.id);
//   const item = data.find((obj) => obj.id === id);
//   Object.assign(item, {title, content});
//   res.json(item);
// });

/* ========== DELETE/REMOVE A SINGLE ITEM ========== */
router.delete('/stories/:id', (req, res) => {
  knex
});


// Original code using dummy-data:

// router.delete('/stories/:id', (req, res) => {
//   const id = Number(req.params.id);
//   const index = data.findIndex((obj) => obj.id === id);
//   data.splice(index, 1);
//   res.status(204).end();
// });

module.exports = router;
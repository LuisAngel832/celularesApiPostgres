const { Router } = require('express');
const controllers = require('../controllers');

const router = Router();

router.get('/', (req, res) => res.send('Welcome to API pau'));
router.post('/phones', controllers.createPhone);
router.get('/phones', controllers.getAllPhones);
router.put('/phones/:id', controllers.updatePhone);
router.delete('/phones/:id', controllers.deletePhone);

module.exports = router;

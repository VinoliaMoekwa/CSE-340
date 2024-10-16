//Needed Resources
const express = require("express")
const router = new express.Router()
const invController = require("../controllers/invController")
//Route to build inventory by classification view
router.get("/type/:classificationId", invController.buildByClassificationId);

//Route to get specific vehicle details in inventory
router.get("/inventory/inventoryId",invController.getVehicleDetails);


module.exports = router;

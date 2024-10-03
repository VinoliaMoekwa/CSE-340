

--Update GM Hummer Description
UPDATE inventory
SET inv_description = REPLACE(inv_description, 'small interiors', 'huge interior')
WHERE inv_make ='GM';

SELECT 
    inventory.inv_make, 
    inventory.inv_model, 
    classification.classification_name
FROM 
    inventory
INNER JOIN 
    classification 
ON 
    inventory.classification_id = classification.classification_id
WHERE 
    classification.classification_name = 'Sport';

--Add vehicles into the /image and thumbnail
UPDATE inventory
SET 
    inv_image = REPLACE(inv_image, '/images/', '/images/vehicles/'),
    inv_thumbnail = REPLACE(inv_thumbnail, '/images/', '/images/vehicles/');

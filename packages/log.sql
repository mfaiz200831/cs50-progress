-- *** The Lost Letter ***
-- Find the address ID for 900 Somerville Avenue
SELECT id FROM addresses WHERE address = '900 Somerville Avenue';

-- Find the package sent from Anneke's address (ID 432)
SELECT * FROM packages WHERE from_address_id = 432;

-- Check the scans for package ID 5098 to see its delivery status
SELECT * FROM scans WHERE package_id = 5098;

-- Find the final delivery address details
SELECT * FROM addresses WHERE id = 17;


-- *** The Devious Delivery ***
-- Find packages that have no 'from_address_id' (NULL) and contents like 'duck'
SELECT * FROM packages WHERE from_address_id IS NULL;

-- Check the scans for the duck package (ID 5095) to find where it was dropped off
SELECT * FROM scans WHERE package_id = 5095 AND action = 'Drop';

-- Find the address details where the duck package was dropped off
SELECT * FROM addresses WHERE id = 50;


-- *** The Forgotten Gift ***
-- Find the address ID for 109 Tileston Street
SELECT id FROM addresses WHERE address = '109 Tileston Street';

-- Find the package sent from 109 Tileston Street (ID 9873)
SELECT * FROM packages WHERE from_address_id = 9873;

-- Check the scans for the gift package (ID 9523) to see its final drop-off address
SELECT * FROM scans WHERE package_id = 9523 AND action = 'Drop';

-- Find the address details for the final destination
SELECT * FROM addresses WHERE id = 6398;

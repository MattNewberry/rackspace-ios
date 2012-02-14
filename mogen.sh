rm ./Rackspace/Models/_*
mogenerator -m ./Rackspace/Models/Rackspace.xcdatamodel/ -O ./Rackspace/Models/ --base-class=CKRecord --template-path ./mogenerator-templates/

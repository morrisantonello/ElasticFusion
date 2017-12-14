echo "coroma000_tilt0"
mkdir -p ~/coroma_acquisitions/coroma000_tilt0/rgb
mkdir -p ~/coroma_acquisitions/coroma000_tilt0/depth
roslaunch image_extractor.launch bag_name:=/home/morris/coroma_acquisitions/coroma000_tilt0.bag output_folder:=/home/morris/coroma_acquisitions/coroma000_tilt0 scene_name:=coroma000
echo ""
echo "coroma002_tilt30_boat"
mkdir -p ~/coroma_acquisitions/coroma002_tilt0/rgb
mkdir -p ~/coroma_acquisitions/coroma002_tilt0/depth
roslaunch image_extractor.launch bag_name:=/home/morris/coroma_acquisitions/coroma002_tilt30_boat.bag output_folder:=/home/morris/coroma_acquisitions/coroma002_tilt30 scene_name:=coroma002
echo ""
echo "coroma003_tilt30_boat"
mkdir -p ~/coroma_acquisitions/coroma002_tilt0/rgb
mkdir -p ~/coroma_acquisitions/coroma002_tilt0/depth
roslaunch image_extractor.launch bag_name:=/home/morris/coroma_acquisitions/coroma003_tilt30_boat.bag output_folder:=/home/morris/coroma_acquisitions/coroma003_tilt30 scene_name:=coroma003

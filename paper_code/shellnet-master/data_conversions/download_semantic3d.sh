#!/usr/bin/env bash
BASE_DIR=${1-../../data/semantic3d}

# Training data
wget -c -N http://semantic3d.net/data/point-clouds/training1/bildstein_station1_xyz_intensity_rgb.7z -P $BASE_DIR/train/
wget -c -N http://semantic3d.net/data/point-clouds/training1/bildstein_station5_xyz_intensity_rgb.7z -P $BASE_DIR/train/
wget -c -N http://semantic3d.net/data/point-clouds/training1/domfountain_station1_xyz_intensity_rgb.7z -P $BASE_DIR/train/
wget -c -N http://semantic3d.net/data/point-clouds/training1/domfountain_station3_xyz_intensity_rgb.7z -P $BASE_DIR/train/
wget -c -N http://semantic3d.net/data/point-clouds/training1/neugasse_station1_xyz_intensity_rgb.7z -P $BASE_DIR/train/
wget -c -N http://semantic3d.net/data/point-clouds/training1/sg27_station1_intensity_rgb.7z -P $BASE_DIR/train/
wget -c -N http://semantic3d.net/data/point-clouds/training1/sg27_station2_intensity_rgb.7z -P $BASE_DIR/train/
wget -c -N http://semantic3d.net/data/point-clouds/training1/sg27_station5_intensity_rgb.7z -P $BASE_DIR/train/
wget -c -N http://semantic3d.net/data/point-clouds/training1/sg27_station9_intensity_rgb.7z -P $BASE_DIR/train/
wget -c -N http://semantic3d.net/data/point-clouds/training1/sg28_station4_intensity_rgb.7z -P $BASE_DIR/train/
wget -c -N http://semantic3d.net/data/point-clouds/training1/untermaederbrunnen_station1_xyz_intensity_rgb.7z -P $BASE_DIR/train/
wget -c -N http://semantic3d.net/data/sem8_labels_training.7z -P $BASE_DIR/train/

# Validation data
wget -c -N http://semantic3d.net/data/point-clouds/training1/bildstein_station3_xyz_intensity_rgb.7z -P $BASE_DIR/val/
wget -c -N http://semantic3d.net/data/point-clouds/training1/domfountain_station2_xyz_intensity_rgb.7z -P $BASE_DIR/val/
wget -c -N http://semantic3d.net/data/point-clouds/training1/sg27_station4_intensity_rgb.7z -P $BASE_DIR/val/
wget -c -N http://semantic3d.net/data/point-clouds/training1/untermaederbrunnen_station3_xyz_intensity_rgb.7z -P $BASE_DIR/val/
mv $BASE_DIR/train/bildstein_station3_xyz_intensity_rgb.labels $BASE_DIR/val
mv $BASE_DIR/train/domfountain_station2_xyz_intensity_rgb.labels $BASE_DIR/val
mv $BASE_DIR/train/sg27_station4_intensity_rgb.labels $BASE_DIR/val
mv $BASE_DIR/train/untermaederbrunnen_station3_xyz_intensity_rgb.labels $BASE_DIR/val

# Test data
wget -c -N http://semantic3d.net/data/point-clouds/testing2/MarketplaceFeldkirch_Station4_rgb_intensity-reduced.txt.7z -P $BASE_DIR/test_reduced/
wget -c -N http://semantic3d.net/data/point-clouds/testing2/StGallenCathedral_station6_rgb_intensity-reduced.txt.7z -P $BASE_DIR/test_reduced/
wget -c -N http://semantic3d.net/data/point-clouds/testing2/sg27_station10_rgb_intensity-reduced.txt.7z -P $BASE_DIR/test_reduced/
wget -c -N http://semantic3d.net/data/point-clouds/testing2/sg28_Station2_rgb_intensity-reduced.txt.7z -P $BASE_DIR/test_reduced/
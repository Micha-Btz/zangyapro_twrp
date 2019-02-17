For building TWRP for BQ AQuaris X2 Pro 



## Device specifications

| Device       | BQ Aquaris X2 Pro                                  |
| -----------: | :-------------------------------------------------- |
| SoC          | Qualcomm SDM660 Snapdragon 660                      |
| CPU          | 4x2.2 GHz Kryo 260 & 4x1.8 GHz Kryo	      	     |
| GPU          | Adreno 512                                          |
| Memory       | 4 GB RAM                      |
| Android      | 8.1                                      	     |
| Storage      | 128GB, 64GB emmc 5.1 flash storage  		     |
| Battery      | Non-removable Li-Po 3350 mAh                  	     |
| Dimensions   | 156.4 x 75.8 x 7.5 mm                               |
| Display      | 2280 x 1080 (19:9), 6.26 inch                       |
| Rear camera 1| 12MP, f/1.9 Dual LED flash                          |
| Front camera | 24MP, 4 in 1, 1.8µm  		 		     |


## Features

Works:

- nothiing :-(

Finally execute these:

```
export ALLOW_MISSING_DEPENDENCIES=true
. build/envsetup.sh
lunch omni_zangyapro-eng 
mka recoveryimage
```

To test it:

```
fastboot boot out/target/product/platina/recovery.img
```





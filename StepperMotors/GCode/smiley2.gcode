;PancakePainter v1.4.0 GCODE header start
;Originally generated @ Wed Dec 04 2019 16:02:52 GMT-0600 (Central Standard Time)
;Settings used to generate this file:
;----------------------------------------
;botSpeed: 4620
;flattenResolution: 2
;lineEndPreShutoff: 25
;startWait: 350
;endWait: 250
;shadeChangeWait: 15
;useLineFill: false
;useShortest: true
;shapeFillWidth: 11
;fillSpacing: 10
;fillAngle: 23
;fillGroupThreshold: 27
;useColorSpeed: false
;botColorSpeed: 6600,5280,5280,3300
;----------------------------------------
W1 X42 Y210 L485 T0 ;Define Workspace of this file
G21 ;Set units to MM
G1 F4620 ;Set Speed
M107 ;Pump off
G4 P1000 ;Pause for 1000 milliseconds
M84 ;Motors off
G00 X1 Y1 ;Help homing
G28 X0 Y0 ;Home All Axis
;PancakePainter header complete
;Starting fill path #1/4, segments: 74, length: 705, color #4
G00 X340.406 Y64.809
M106 ;Pump on
G4 P350 ;Pause for 350 milliseconds
G00 X342.682 Y65.431
G00 X344.314 Y66.203
G00 X345.852 Y67.28
G00 X347.237 Y68.637
G00 X348.393 Y70.21
G00 X349.261 Y71.917
G00 X349.818 Y73.696
G00 X350.045 Y75.418
G00 X349.933 Y77.524
G00 X349.443 Y79.5
G00 X348.561 Y81.444
G00 X347.326 Y83.239
G00 X345.811 Y84.773
G00 X344.134 Y85.95
G00 X342.373 Y86.748
G00 X340.577 Y87.169
G00 X337.776 Y87.24
G00 X334.832 Y86.692
G00 X333.882 Y86.321
G00 X332.768 Y85.682
G00 X330.929 Y84.179
G00 X329.63 Y82.635
G00 X328.625 Y80.865
G00 X327.933 Y78.901
G00 X327.59 Y76.823
G00 X327.615 Y74.714
G00 X328.014 Y72.64
G00 X328.772 Y70.697
G00 X329.836 Y69.016
G00 X331.267 Y67.5
G00 X332.583 Y66.539
G00 X334.122 Y65.793
G00 X336.398 Y65.101
G00 X338.804 Y64.671
G00 X339.388 Y64.666
G00 X340.406 Y64.809
G00 X343.376 Y50.417
G00 X347.791 Y51.624
G00 X351.707 Y53.476
G00 X355.251 Y55.957
G00 X358.352 Y58.994
G00 X360.923 Y62.493
G00 X362.89 Y66.365
G00 X364.192 Y70.518
G00 X364.763 Y74.845
G00 X364.503 Y79.7
G00 X363.354 Y84.333
G00 X361.382 Y88.685
G00 X358.672 Y92.623
G00 X355.318 Y96.019
G00 X351.435 Y98.743
G00 X347.118 Y100.699
G00 X342.457 Y101.792
G00 X336.607 Y101.941
G00 X330.788 Y100.857
G00 X327.531 Y99.586
G00 X324.425 Y97.804
G00 X320.586 Y94.668
G00 X317.541 Y91.046
G00 X315.227 Y86.974
G00 X313.672 Y82.56
G00 X312.909 Y77.937
G00 X312.966 Y73.228
G00 X313.865 Y68.555
G00 X315.624 Y64.048
G00 X318.2 Y59.977
G00 X321.53 Y56.448
G00 X325.003 Y53.915
G00 X328.755 Y52.097
G00 X332.964 Y50.815
;Nearing path end, moving to preshutoff position
G00 X334.631 Y50.518
M107 ;Pump off
G00 X337.434 Y50.018
G00 X340.341 Y49.989
G00 X343.376 Y50.417
G4 P250 ;Pause for 250 milliseconds
;Completed path #1/4 on color #4
;Starting fill path #2/4, segments: 166, length: 1051, color #4, too small to fill, outline only
G00 X341.262 Y170.52
M106 ;Pump on
G4 P350 ;Pause for 350 milliseconds
G00 X341.287 Y170.541
G00 X348.524 Y176.248
G00 X348.546 Y176.266
G00 X348.569 Y176.279
G00 X356.817 Y180.649
G00 X356.863 Y180.665
G00 X365.986 Y183.48
G00 X366.001 Y183.486
G00 X366.045 Y183.492
G00 X376.032 Y184.539
G00 X376.06 Y184.542
G00 X376.073 Y184.54
G00 X386.111 Y183.754
G00 X386.134 Y183.752
G00 X394.67 Y181.519
G00 X394.709 Y181.506
G00 X394.732 Y181.497
G00 X402.745 Y177.745
G00 X410.828 Y172.078
G00 X410.86 Y172.047
G00 X417.881 Y164.988
G00 X417.902 Y164.96
G00 X423.537 Y156.763
G00 X423.547 Y156.745
G00 X423.561 Y156.722
G00 X427.453 Y147.64
G00 X429.193 Y138.78
G00 X430.381 Y130.606
G00 X430.392 Y130.542
G00 X430.409 Y130.483
G00 X430.431 Y130.421
G00 X430.458 Y130.365
G00 X430.49 Y130.309
G00 X430.524 Y130.258
G00 X430.564 Y130.207
G00 X430.606 Y130.162
G00 X430.653 Y130.121
G00 X430.703 Y130.081
G00 X430.758 Y130.048
G00 X430.812 Y130.019
G00 X430.872 Y129.994
G00 X430.932 Y129.974
G00 X430.992 Y129.957
G00 X431.054 Y129.948
G00 X431.118 Y129.942
G00 X431.193 Y129.943
G00 X436.106 Y130.233
G00 X436.168 Y130.239
G00 X436.232 Y130.251
G00 X436.291 Y130.268
G00 X436.35 Y130.289
G00 X436.409 Y130.316
G00 X436.465 Y130.346
G00 X436.516 Y130.38
G00 X436.567 Y130.42
G00 X436.612 Y130.465
G00 X436.655 Y130.509
G00 X436.693 Y130.562
G00 X436.728 Y130.614
G00 X436.758 Y130.669
G00 X436.783 Y130.728
G00 X436.802 Y130.788
G00 X436.816 Y130.848
G00 X436.828 Y130.91
G00 X436.832 Y130.974
G00 X436.833 Y131.036
G00 X436.83 Y131.093
G00 X435.573 Y142.185
G00 X435.562 Y142.247
G00 X435.542 Y142.327
G00 X432.033 Y153.636
G00 X432.011 Y153.698
G00 X431.976 Y153.775
G00 X426.35 Y164.201
G00 X426.318 Y164.257
G00 X426.281 Y164.308
G00 X426.26 Y164.333
G00 X418.596 Y173.451
G00 X418.554 Y173.497
G00 X418.483 Y173.56
G00 X409.852 Y180.382
G00 X409.802 Y180.42
G00 X409.729 Y180.462
G00 X400.094 Y185.452
G00 X400.036 Y185.48
G00 X399.964 Y185.504
G00 X389.667 Y188.627
G00 X389.605 Y188.644
G00 X389.533 Y188.655
G00 X378.875 Y189.901
G00 X378.81 Y189.908
G00 X378.736 Y189.906
G00 X368.024 Y189.253
G00 X367.962 Y189.247
G00 X367.888 Y189.232
G00 X357.439 Y186.665
G00 X357.378 Y186.646
G00 X357.304 Y186.616
G00 X347.462 Y182.126
G00 X347.406 Y182.099
G00 X347.332 Y182.051
G00 X338.376 Y175.613
G00 X338.326 Y175.573
G00 X338.28 Y175.531
G00 X338.255 Y175.505
G00 X329.406 Y165.751
G00 X329.366 Y165.702
G00 X329.328 Y165.652
G00 X329.308 Y165.618
G00 X322.711 Y154.223
G00 X322.682 Y154.169
G00 X322.657 Y154.109
G00 X322.642 Y154.062
G00 X318.816 Y141.573
G00 X318.799 Y141.513
G00 X318.783 Y141.405
G00 X317.869 Y129.151
G00 X317.868 Y129.089
G00 X317.872 Y129.025
G00 X317.878 Y128.963
G00 X317.892 Y128.902
G00 X317.911 Y128.84
G00 X317.933 Y128.781
G00 X317.963 Y128.725
G00 X317.995 Y128.671
G00 X318.032 Y128.621
G00 X318.071 Y128.572
G00 X318.116 Y128.527
G00 X318.163 Y128.486
G00 X318.216 Y128.449
G00 X318.27 Y128.416
G00 X318.325 Y128.389
G00 X318.385 Y128.364
G00 X318.445 Y128.345
G00 X318.507 Y128.333
G00 X318.569 Y128.324
G00 X318.633 Y128.32
G00 X318.69 Y128.321
G00 X323.051 Y128.595
G00 X323.116 Y128.602
G00 X323.177 Y128.613
G00 X323.236 Y128.63
G00 X323.298 Y128.651
G00 X323.354 Y128.678
G00 X323.41 Y128.71
G00 X323.461 Y128.745
G00 X323.512 Y128.785
G00 X323.558 Y128.827
G00 X323.598 Y128.874
G00 X323.638 Y128.926
G00 X323.671 Y128.978
G00 X323.701 Y129.033
G00 X323.725 Y129.093
G00 X323.745 Y129.153
G00 X323.762 Y129.212
G00 X323.771 Y129.274
G00 X323.775 Y129.316
G00 X324.358 Y138.081
G00 X324.363 Y138.107
G00 X324.36 Y138.106
G00 X326.529 Y147.193
G00 X326.538 Y147.227
G00 X330.151 Y155.797
G00 X335.097 Y163.634
;Nearing path end, moving to preshutoff position
G00 X335.379 Y163.949
M107 ;Pump off
G00 X341.262 Y170.52
G4 P250 ;Pause for 250 milliseconds
;Completed path #2/4 on color #4
;Starting fill path #3/4, segments: 74, length: 705, color #4
G00 X418.057 Y65.724
M106 ;Pump on
G4 P350 ;Pause for 350 milliseconds
G00 X420.332 Y66.346
G00 X421.962 Y67.117
G00 X423.503 Y68.196
G00 X424.889 Y69.554
G00 X426.042 Y71.123
G00 X426.91 Y72.83
G00 X427.467 Y74.608
G00 X427.695 Y76.335
G00 X427.582 Y78.438
G00 X427.091 Y80.417
G00 X426.212 Y82.359
G00 X424.975 Y84.156
G00 X423.462 Y85.688
G00 X421.783 Y86.865
G00 X420.023 Y87.663
G00 X418.227 Y88.084
G00 X415.424 Y88.155
G00 X412.484 Y87.607
G00 X411.532 Y87.236
G00 X410.418 Y86.597
G00 X408.58 Y85.095
G00 X407.278 Y83.547
G00 X406.275 Y81.782
G00 X405.582 Y79.815
G00 X405.239 Y77.738
G00 X405.265 Y75.628
G00 X405.664 Y73.552
G00 X406.42 Y71.614
G00 X407.484 Y69.933
G00 X408.919 Y68.413
G00 X410.232 Y67.455
G00 X411.771 Y66.709
G00 X414.05 Y66.015
G00 X416.453 Y65.587
G00 X417.039 Y65.581
G00 X418.057 Y65.724
G00 X421.026 Y51.332
G00 X425.44 Y52.538
G00 X429.356 Y54.391
G00 X432.902 Y56.873
G00 X436.002 Y59.909
G00 X438.573 Y63.408
G00 X440.539 Y67.278
G00 X441.84 Y71.431
G00 X442.412 Y75.761
G00 X442.153 Y80.616
G00 X441.004 Y85.249
G00 X439.031 Y89.601
G00 X436.321 Y93.538
G00 X432.967 Y96.935
G00 X429.085 Y99.658
G00 X424.768 Y101.614
G00 X420.106 Y102.707
G00 X414.255 Y102.856
G00 X408.438 Y101.773
G00 X405.183 Y100.502
G00 X402.076 Y98.72
G00 X398.237 Y95.585
G00 X395.189 Y91.959
G00 X392.878 Y87.89
G00 X391.322 Y83.476
G00 X390.559 Y78.851
G00 X390.616 Y74.143
G00 X391.515 Y69.468
G00 X393.271 Y64.966
G00 X395.847 Y60.895
G00 X399.181 Y57.363
G00 X402.653 Y54.83
G00 X406.405 Y53.012
G00 X410.613 Y51.73
;Nearing path end, moving to preshutoff position
G00 X412.281 Y51.433
M107 ;Pump off
G00 X415.082 Y50.934
G00 X417.991 Y50.904
G00 X421.026 Y51.332
G4 P250 ;Pause for 250 milliseconds
;Completed path #3/4 on color #4
;Switching Color to: Light
G4 P1000 ;Pause for 1000 milliseconds
G00 X1 Y1 ;Help homing
G28 X0 Y0 ;Home All Axis
M84 ;Motors off
M142 ;Bottle change
G4 P15000 ;Pause for 15000 milliseconds
;Starting fill path #4/4, segments: 252, length: 6481, color #1
G00 X380.253 Y99.862
M106 ;Pump on
G4 P350 ;Pause for 350 milliseconds
G00 X380.797 Y100.12
G00 X381.603 Y100.684
G00 X382.509 Y101.572
G00 X383.288 Y102.631
G00 X383.807 Y103.652
G00 X384.062 Y104.466
G00 X384.09 Y104.682
G00 X384.032 Y105.777
G00 X383.812 Y106.663
G00 X383.239 Y107.926
G00 X382.324 Y109.256
G00 X381.279 Y110.314
G00 X380.429 Y110.911
G00 X380.041 Y111.086
G00 X377.439 Y111.153
G00 X375.278 Y110.75
G00 X374.327 Y109.973
G00 X373.749 Y109.286
G00 X373.219 Y108.352
G00 X372.781 Y107.109
G00 X372.548 Y105.697
G00 X372.564 Y104.301
G00 X372.814 Y103.005
G00 X373.184 Y102.058
G00 X373.5 Y101.557
G00 X374.121 Y100.9
G00 X374.43 Y100.75
G00 X377.635 Y99.773
G00 X379.023 Y99.526
G00 X380.253 Y99.862
G00 X385.359 Y86.054
G00 X388.19 Y87.392
G00 X391.003 Y89.361
G00 X393.623 Y91.928
G00 X395.818 Y94.915
G00 X397.436 Y98.098
G00 X398.436 Y101.289
G00 X398.808 Y104.109
G00 X398.602 Y107.953
G00 X397.724 Y111.495
G00 X396.059 Y115.168
G00 X393.671 Y118.638
G00 X390.784 Y121.562
G00 X387.73 Y123.705
G00 X384.756 Y125.052
G00 X381.954 Y125.709
G00 X376.27 Y125.854
G00 X370.005 Y124.686
G00 X369.251 Y124.392
G00 X367.722 Y123.515
G00 X363.985 Y120.463
G00 X361.66 Y117.698
G00 X359.822 Y114.461
G00 X358.52 Y110.768
G00 X357.867 Y106.81
G00 X357.915 Y102.815
G00 X358.665 Y98.92
G00 X360.034 Y95.409
G00 X361.864 Y92.518
G00 X364.455 Y89.773
G00 X366.444 Y88.322
G00 X369.064 Y87.052
G00 X374.198 Y85.489
G00 X379.405 Y84.561
G00 X380.421 Y84.704
G00 X385.359 Y86.054
G00 X390.467 Y72.245
G00 X395.583 Y74.665
G00 X400.403 Y78.039
G00 X404.737 Y82.285
G00 X408.348 Y87.199
G00 X411.065 Y92.544
G00 X412.809 Y98.112
G00 X413.526 Y103.536
G00 X413.173 Y110.13
G00 X411.636 Y116.327
G00 X408.881 Y122.407
G00 X405.017 Y128.021
G00 X400.29 Y132.808
G00 X395.03 Y136.498
G00 X389.502 Y139.003
G00 X383.835 Y140.332
G00 X375.101 Y140.555
G00 X365.959 Y138.851
G00 X362.902 Y137.658
G00 X359.378 Y135.636
G00 X353.644 Y130.953
G00 X349.572 Y126.109
G00 X346.424 Y120.569
G00 X344.26 Y114.427
G00 X343.186 Y107.925
G00 X343.266 Y101.329
G00 X344.515 Y94.837
G00 X346.885 Y88.76
G00 X350.228 Y83.48
G00 X354.718 Y78.721
G00 X358.865 Y75.698
G00 X363.697 Y73.356
G00 X370.763 Y71.204
G00 X378.218 Y69.875
G00 X380.153 Y69.855
G00 X383.391 Y70.311
G00 X390.467 Y72.245
G00 X395.575 Y58.437
G00 X402.976 Y61.937
G00 X409.802 Y66.716
G00 X415.85 Y72.64
G00 X420.878 Y79.483
G00 X424.694 Y86.991
G00 X427.183 Y94.935
G00 X428.244 Y102.963
G00 X427.743 Y112.306
G00 X425.548 Y121.16
G00 X421.701 Y129.647
G00 X416.363 Y137.405
G00 X409.797 Y144.054
G00 X402.333 Y149.291
G00 X394.245 Y152.955
G00 X385.716 Y154.955
G00 X373.932 Y155.256
G00 X361.913 Y153.016
G00 X356.552 Y150.923
G00 X351.035 Y147.759
G00 X343.301 Y141.442
G00 X337.483 Y134.522
G00 X333.026 Y126.677
G00 X329.999 Y118.086
G00 X328.506 Y109.04
G00 X328.617 Y99.843
G00 X330.366 Y90.753
G00 X333.736 Y82.111
G00 X338.592 Y74.441
G00 X344.981 Y67.67
G00 X351.285 Y63.073
G00 X358.331 Y59.659
G00 X367.326 Y56.919
G00 X376.847 Y55.221
G00 X381.108 Y55.178
G00 X386.359 Y55.918
G00 X395.575 Y58.437
G00 X400.683 Y44.629
G00 X410.368 Y49.209
G00 X419.202 Y55.394
G00 X426.963 Y62.996
G00 X433.408 Y71.766
G00 X438.323 Y81.438
G00 X441.557 Y91.759
G00 X442.961 Y102.39
G00 X442.314 Y114.483
G00 X439.46 Y125.993
G00 X434.522 Y136.887
G00 X427.709 Y146.788
G00 X419.303 Y155.3
G00 X409.635 Y162.084
G00 X398.99 Y166.907
G00 X387.597 Y169.578
G00 X372.763 Y169.957
G00 X357.867 Y167.181
G00 X350.203 Y164.189
G00 X342.691 Y159.88
G00 X332.96 Y151.932
G00 X325.394 Y142.932
G00 X319.628 Y132.785
G00 X315.738 Y121.744
G00 X313.825 Y110.155
G00 X313.968 Y98.357
G00 X316.217 Y86.668
G00 X320.587 Y75.463
G00 X326.956 Y65.403
G00 X335.244 Y56.619
G00 X343.706 Y50.448
G00 X352.965 Y45.962
G00 X363.888 Y42.634
G00 X375.476 Y40.568
G00 X382.063 Y40.501
G00 X389.327 Y41.525
G00 X400.683 Y44.629
G00 X405.79 Y30.82
G00 X417.761 Y36.482
G00 X428.602 Y44.071
G00 X438.077 Y53.353
G00 X445.938 Y64.05
G00 X451.952 Y75.884
G00 X455.931 Y88.583
G00 X457.679 Y101.817
G00 X456.885 Y116.66
G00 X453.372 Y130.826
G00 X447.343 Y144.128
G00 X439.055 Y156.171
G00 X428.81 Y166.546
G00 X416.935 Y174.878
G00 X403.735 Y180.858
G00 X389.478 Y184.201
G00 X371.595 Y184.658
G00 X353.821 Y181.345
G00 X343.854 Y177.455
G00 X334.349 Y172.003
G00 X322.618 Y162.422
G00 X313.304 Y151.343
G00 X306.231 Y138.893
G00 X301.478 Y125.404
G00 X299.144 Y111.27
G00 X299.319 Y96.871
G00 X302.068 Y82.583
G00 X307.438 Y68.815
G00 X315.32 Y56.364
G00 X325.507 Y45.568
G00 X336.127 Y37.824
G00 X347.598 Y32.264
G00 X360.452 Y28.349
G00 X374.105 Y25.915
G00 X383.018 Y25.824
G00 X392.296 Y27.132
G00 X405.79 Y30.82
G00 X410.897 Y17.012
G00 X425.154 Y23.755
G00 X438.002 Y32.749
G00 X449.19 Y43.708
G00 X458.469 Y56.335
G00 X465.581 Y70.33
G00 X470.305 Y85.406
G00 X472.396 Y101.244
G00 X471.455 Y118.836
G00 X467.284 Y135.659
G00 X460.163 Y151.37
G00 X450.403 Y165.553
G00 X438.316 Y177.793
G00 X424.235 Y187.673
G00 X408.481 Y194.81
G00 X391.358 Y198.824
G00 X370.426 Y199.358
G00 X349.774 Y195.51
G00 X337.505 Y190.721
G00 X326.005 Y184.125
G00 X312.277 Y172.912
G00 X301.215 Y159.754
G00 X292.832 Y145.001
G00 X287.217 Y129.063
G00 X284.464 Y112.384
G00 X284.67 Y95.385
G00 X287.918 Y78.499
G00 X294.289 Y62.166
G00 X303.684 Y47.325
G00 X315.77 Y34.517
G00 X328.548 Y25.199
G00 X342.231 Y18.567
G00 X357.016 Y14.064
G00 X372.734 Y11.262
G00 X383.972 Y11.147
G00 X395.264 Y12.739
;Nearing path end, moving to preshutoff position
G00 X402.39 Y14.687
M107 ;Pump off
G00 X410.897 Y17.012
G4 P250 ;Pause for 250 milliseconds
;Completed path #4/4 on color #1
;PancakePainter Footer Start
G4 P1000 ;Pause for 1000 milliseconds
G00 X1 Y1 ;Help homing
G28 X0 Y0 ;Home All Axis
M84 ;Motors off
;PancakePainter Footer Complete

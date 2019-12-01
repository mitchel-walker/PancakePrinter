;PancakePainter v1.4.0 GCODE header start
;Originally generated @ Wed Dec 04 2019 14:19:26 GMT-0600 (Central Standard Time)
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
;shapeFillWidth: 10
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
;Starting stroke path #1/5, segments: 6, length: 442, color #1
G00 X106.305 Y27.894
M106 ;Pump on
G4 P350 ;Pause for 350 milliseconds
G00 X117.689 Y27.886
G00 X128.956 Y29.238
G00 X144.431 Y34.883
G00 X158.755 Y42.988
G00 X186.292 Y61.163
G00 X203.293 Y69.386
G00 X211.389 Y73.678
G00 X218.853 Y79.567
G00 X213.105 Y86.257
G00 X209.878 Y89.298
G00 X206.111 Y91.239
;Nearing path end, moving to preshutoff position
G00 X202.866 Y91.373
M107 ;Pump off
G00 X200.14 Y91.486
G00 X194.078 Y90.893
G4 P250 ;Pause for 250 milliseconds
;Completed path #1/5 on color #1
;Starting stroke path #2/5, segments: 5, length: 268, color #1
G00 X218.853 Y79.567
M106 ;Pump on
G4 P350 ;Pause for 350 milliseconds
G00 X230.38 Y78.654
G00 X236.42 Y78.461
G00 X241.504 Y79.286
G00 X251.693 Y85.477
G00 X256.886 Y88.513
G00 X262.739 Y89.939
G00 X268.713 Y88.75
G00 X274.168 Y85.65
G00 X284.682 Y79.276
G00 X289.82 Y78.465
G00 X295.822 Y78.66
;Nearing path end, moving to preshutoff position
G00 X298.541 Y78.874
M107 ;Pump off
G00 X307.333 Y79.567
G4 P250 ;Pause for 250 milliseconds
;Completed path #2/5 on color #1
;Starting stroke path #3/5, segments: 2, length: 197, color #1
G00 X263.447 Y90.893
M106 ;Pump on
G4 P350 ;Pause for 350 milliseconds
;Nearing path end, moving to preshutoff position
G00 X263.447 Y151.442
M107 ;Pump off
G00 X263.447 Y160.261
G4 P250 ;Pause for 250 milliseconds
;Completed path #3/5 on color #1
;Starting stroke path #4/5, segments: 6, length: 435, color #1
G00 X329.984 Y90.893
M106 ;Pump on
G4 P350 ;Pause for 350 milliseconds
G00 X319.367 Y91.075
G00 X307.333 Y79.567
G00 X314.417 Y74.006
G00 X321.937 Y70.141
G00 X337.771 Y62.534
G00 X366.941 Y43.225
G00 X382.214 Y34.784
G00 X398.645 Y28.958
G00 X409.212 Y27.813
;Nearing path end, moving to preshutoff position
G00 X411.061 Y27.827
M107 ;Pump off
G00 X419.881 Y27.894
G4 P250 ;Pause for 250 milliseconds
;Completed path #4/5 on color #1
;Starting fill path #5/5, segments: 651, length: 2925, color #1
G00 X265.864 Y99.019
M106 ;Pump on
G4 P350 ;Pause for 350 milliseconds
G00 X263.312 Y105.311
G00 X260.911 Y99.015
G00 X259.678 Y90.682
G00 X267.256 Y90.39
G00 X265.864 Y99.019
G00 X278.786 Y102.633
G00 X274.768 Y112.541
G00 X265.177 Y136.537
G00 X265.103 Y136.725
G00 X265.027 Y136.924
G00 X264.874 Y137.347
G00 X264.804 Y137.548
G00 X264.679 Y137.931
G00 X264.616 Y138.134
G00 X264.497 Y138.54
G00 X264.44 Y138.745
G00 X264.331 Y139.169
G00 X264.281 Y139.375
G00 X264.185 Y139.803
G00 X264.142 Y140.011
G00 X264.07 Y140.392
G00 X264.033 Y140.601
G00 X263.984 Y140.897
G00 X263.962 Y141.046
G00 X263.932 Y141.256
G00 X263.879 Y141.683
G00 X263.856 Y141.894
G00 X263.818 Y142.296
G00 X263.801 Y142.508
G00 X263.774 Y142.955
G00 X263.764 Y143.168
G00 X263.753 Y143.557
G00 X263.75 Y143.754
G00 X263.748 Y143.96
G00 X263.748 Y144.031
G00 X263.75 Y144.243
G00 X263.753 Y144.456
G00 X263.767 Y144.88
G00 X263.777 Y145.093
G00 X263.804 Y145.517
G00 X263.821 Y145.729
G00 X263.848 Y146.028
G00 X263.868 Y146.21
G00 X263.899 Y146.475
G00 X263.932 Y146.734
G00 X265.637 Y159.231
G00 X266.577 Y166.283
G00 X265.962 Y167.857
G00 X265.365 Y168.374
G00 X263.655 Y168.63
G00 X261.183 Y167.933
G00 X260.158 Y167.027
G00 X259.751 Y165.853
G00 X261.141 Y158.65
G00 X261.18 Y158.439
G00 X261.217 Y158.23
G00 X261.282 Y157.827
G00 X261.312 Y157.617
G00 X261.352 Y157.319
G00 X261.376 Y157.104
G00 X261.406 Y156.819
G00 X261.439 Y156.467
G00 X261.464 Y156.138
G00 X262.342 Y143.276
G00 X262.354 Y143.07
G00 X262.365 Y142.858
G00 X262.378 Y142.558
G00 X262.382 Y142.399
G00 X262.386 Y142.157
G00 X262.388 Y141.914
G00 X262.388 Y141.857
G00 X262.387 Y141.645
G00 X262.383 Y141.432
G00 X262.37 Y141.008
G00 X262.36 Y140.795
G00 X262.333 Y140.371
G00 X262.316 Y140.159
G00 X262.275 Y139.732
G00 X262.251 Y139.521
G00 X262.199 Y139.118
G00 X262.169 Y138.908
G00 X262.098 Y138.463
G00 X262.061 Y138.254
G00 X261.982 Y137.849
G00 X261.938 Y137.641
G00 X261.852 Y137.258
G00 X261.811 Y137.088
G00 X261.731 Y136.774
G00 X261.677 Y136.569
G00 X261.559 Y136.156
G00 X261.498 Y135.953
G00 X261.371 Y135.555
G00 X261.303 Y135.354
G00 X261.16 Y134.948
G00 X261.086 Y134.749
G00 X260.958 Y134.42
G00 X260.902 Y134.281
G00 X260.841 Y134.132
G00 X251.38 Y111.441
G00 X247.934 Y102.407
G00 X246.445 Y92.335
G00 X246.414 Y92.138
G00 X246.38 Y91.928
G00 X246.328 Y91.632
G00 X246.315 Y91.565
G00 X246.301 Y91.488
G00 X246.25 Y91.224
G00 X246.243 Y91.189
G00 X246.2 Y90.98
G00 X246.154 Y90.772
G00 X246.055 Y90.351
G00 X246.003 Y90.145
G00 X245.892 Y89.737
G00 X245.834 Y89.533
G00 X245.717 Y89.146
G00 X245.652 Y88.944
G00 X245.51 Y88.524
G00 X245.439 Y88.324
G00 X245.288 Y87.921
G00 X245.21 Y87.723
G00 X245.05 Y87.337
G00 X244.966 Y87.142
G00 X244.794 Y86.76
G00 X244.704 Y86.567
G00 X244.521 Y86.191
G00 X244.425 Y86.002
G00 X244.221 Y85.615
G00 X244.119 Y85.429
G00 X243.902 Y85.049
G00 X243.793 Y84.866
G00 X243.584 Y84.524
G00 X243.47 Y84.345
G00 X243.227 Y83.975
G00 X243.108 Y83.8
G00 X242.86 Y83.448
G00 X242.734 Y83.276
G00 X242.497 Y82.961
G00 X242.366 Y82.793
G00 X242.18 Y82.558
G00 X242.084 Y82.441
G00 X241.948 Y82.278
G00 X241.682 Y81.968
G00 X241.541 Y81.809
G00 X241.247 Y81.488
G00 X241.101 Y81.333
G00 X240.807 Y81.032
G00 X240.657 Y80.882
G00 X240.342 Y80.58
G00 X240.187 Y80.435
G00 X239.874 Y80.154
G00 X239.714 Y80.014
G00 X239.403 Y79.751
G00 X239.239 Y79.616
G00 X238.896 Y79.344
G00 X238.727 Y79.214
G00 X238.386 Y78.961
G00 X238.298 Y78.898
G00 X242.704 Y77.212
G00 X252.058 Y77.573
G00 X252.253 Y77.579
G00 X252.466 Y77.585
G00 X252.766 Y77.588
G00 X253.009 Y77.587
G00 X253.311 Y77.581
G00 X253.6 Y77.573
G00 X279.575 Y76.571
G00 X289.212 Y78.468
G00 X289.209 Y78.47
G00 X289.032 Y78.588
G00 X288.693 Y78.823
G00 X288.52 Y78.947
G00 X288.175 Y79.203
G00 X288.006 Y79.332
G00 X287.666 Y79.602
G00 X287.501 Y79.736
G00 X287.189 Y80
G00 X287.029 Y80.139
G00 X286.704 Y80.432
G00 X286.548 Y80.577
G00 X286.245 Y80.868
G00 X286.095 Y81.017
G00 X285.801 Y81.317
G00 X285.654 Y81.472
G00 X285.359 Y81.794
G00 X285.218 Y81.953
G00 X284.953 Y82.261
G00 X284.817 Y82.424
G00 X284.542 Y82.765
G00 X284.412 Y82.932
G00 X284.146 Y83.285
G00 X284.021 Y83.457
G00 X283.793 Y83.78
G00 X283.673 Y83.955
G00 X283.43 Y84.324
G00 X283.315 Y84.504
G00 X283.102 Y84.852
G00 X282.994 Y85.034
G00 X282.771 Y85.423
G00 X282.669 Y85.609
G00 X282.478 Y85.971
G00 X282.381 Y86.16
G00 X282.193 Y86.544
G00 X282.103 Y86.736
G00 X281.923 Y87.136
G00 X281.839 Y87.331
G00 X281.679 Y87.718
G00 X281.601 Y87.915
G00 X281.457 Y88.299
G00 X281.385 Y88.5
G00 X281.243 Y88.919
G00 X281.178 Y89.121
G00 X281.055 Y89.527
G00 X280.996 Y89.731
G00 X280.887 Y90.134
G00 X280.835 Y90.34
G00 X280.739 Y90.746
G00 X280.693 Y90.954
G00 X280.606 Y91.378
G00 X280.568 Y91.587
G00 X280.496 Y92.011
G00 X280.464 Y92.221
G00 X280.45 Y92.32
G00 X278.786 Y102.633
G00 X291.709 Y106.246
G00 X287.149 Y117.49
G00 X277.557 Y141.486
G00 X277.482 Y141.684
G00 X277.413 Y141.885
G00 X277.35 Y142.088
G00 X277.293 Y142.293
G00 X277.243 Y142.499
G00 X277.2 Y142.708
G00 X277.163 Y142.917
G00 X277.133 Y143.127
G00 X277.11 Y143.338
G00 X277.094 Y143.55
G00 X277.084 Y143.762
G00 X277.081 Y143.96
G00 X277.081 Y144.031
G00 X277.085 Y144.243
G00 X277.095 Y144.455
G00 X277.112 Y144.667
G00 X277.143 Y144.932
G00 X278.853 Y157.469
G00 X280.248 Y167.93
G00 X277.184 Y175.774
G00 X271.171 Y180.987
G00 X262.793 Y182.24
G00 X254.637 Y179.94
G00 X248.705 Y174.702
G00 X245.982 Y166.836
G00 X248.049 Y156.124
G00 X248.086 Y155.914
G00 X248.117 Y155.704
G00 X248.147 Y155.419
G00 X248.162 Y155.23
G00 X249.04 Y142.368
G00 X249.051 Y142.156
G00 X249.055 Y141.914
G00 X249.055 Y141.857
G00 X249.052 Y141.645
G00 X249.042 Y141.433
G00 X249.025 Y141.221
G00 X249.001 Y141.01
G00 X248.971 Y140.8
G00 X248.934 Y140.59
G00 X248.89 Y140.382
G00 X248.856 Y140.241
G00 X248.849 Y140.212
G00 X248.794 Y140.007
G00 X248.733 Y139.803
G00 X248.665 Y139.602
G00 X248.591 Y139.403
G00 X248.535 Y139.263
G00 X238.995 Y116.383
G00 X234.957 Y105.797
G00 X233.255 Y94.285
G00 X233.221 Y94.075
G00 X233.208 Y94.012
G00 X233.181 Y93.863
G00 X233.174 Y93.828
G00 X233.129 Y93.62
G00 X233.076 Y93.414
G00 X233.018 Y93.209
G00 X232.953 Y93.007
G00 X232.882 Y92.807
G00 X232.804 Y92.609
G00 X232.72 Y92.414
G00 X232.63 Y92.222
G00 X232.534 Y92.032
G00 X232.431 Y91.846
G00 X232.323 Y91.663
G00 X232.209 Y91.484
G00 X232.09 Y91.308
G00 X231.964 Y91.136
G00 X231.834 Y90.969
G00 X231.698 Y90.805
G00 X231.557 Y90.646
G00 X231.411 Y90.492
G00 X231.26 Y90.342
G00 X231.105 Y90.197
G00 X230.945 Y90.057
G00 X230.781 Y89.923
G00 X230.612 Y89.793
G00 X230.439 Y89.669
G00 X230.263 Y89.551
G00 X230.083 Y89.438
G00 X229.899 Y89.332
G00 X229.712 Y89.231
G00 X229.522 Y89.136
G00 X229.329 Y89.047
G00 X229.133 Y88.964
G00 X228.935 Y88.888
G00 X228.734 Y88.818
G00 X228.531 Y88.755
G00 X228.327 Y88.697
G00 X228.12 Y88.647
G00 X227.912 Y88.603
G00 X227.703 Y88.566
G00 X227.493 Y88.535
G00 X227.282 Y88.511
G00 X227.07 Y88.494
G00 X226.858 Y88.484
G00 X226.645 Y88.48
G00 X226.433 Y88.483
G00 X226.22 Y88.494
G00 X226.009 Y88.51
G00 X225.846 Y88.528
G00 X225.79 Y88.535
G00 X225.579 Y88.563
G00 X225.37 Y88.598
G00 X225.161 Y88.64
G00 X224.929 Y88.695
G00 X209.682 Y92.598
G00 X203.923 Y93.296
G00 X197.283 Y91.622
G00 X195.405 Y90.565
G00 X197.93 Y88.881
G00 X206.046 Y84.924
G00 X206.175 Y84.864
G00 X206.365 Y84.769
G00 X206.552 Y84.668
G00 X206.735 Y84.56
G00 X206.915 Y84.448
G00 X207.092 Y84.329
G00 X207.264 Y84.204
G00 X207.432 Y84.075
G00 X207.596 Y83.94
G00 X207.756 Y83.8
G00 X207.911 Y83.654
G00 X208.062 Y83.504
G00 X208.207 Y83.35
G00 X208.348 Y83.19
G00 X208.484 Y83.027
G00 X208.614 Y82.859
G00 X208.738 Y82.687
G00 X208.858 Y82.511
G00 X208.971 Y82.331
G00 X209.079 Y82.148
G00 X209.181 Y81.962
G00 X209.277 Y81.772
G00 X209.367 Y81.579
G00 X209.45 Y81.384
G00 X209.527 Y81.186
G00 X209.599 Y80.986
G00 X209.663 Y80.784
G00 X209.721 Y80.579
G00 X209.773 Y80.373
G00 X209.818 Y80.165
G00 X209.856 Y79.956
G00 X209.887 Y79.746
G00 X209.912 Y79.535
G00 X209.93 Y79.323
G00 X209.942 Y79.111
G00 X209.947 Y78.899
G00 X209.944 Y78.686
G00 X209.935 Y78.474
G00 X209.92 Y78.262
G00 X209.898 Y78.051
G00 X209.868 Y77.84
G00 X209.833 Y77.631
G00 X209.79 Y77.423
G00 X209.741 Y77.216
G00 X209.685 Y77.011
G00 X209.623 Y76.808
G00 X209.555 Y76.606
G00 X209.48 Y76.408
G00 X209.398 Y76.211
G00 X209.311 Y76.018
G00 X209.217 Y75.827
G00 X209.118 Y75.639
G00 X209.012 Y75.455
G00 X208.901 Y75.274
G00 X208.783 Y75.097
G00 X208.661 Y74.923
G00 X208.532 Y74.754
G00 X208.399 Y74.588
G00 X208.26 Y74.427
G00 X208.117 Y74.271
G00 X207.968 Y74.119
G00 X207.814 Y73.972
G00 X207.656 Y73.83
G00 X207.494 Y73.693
G00 X207.327 Y73.562
G00 X207.156 Y73.435
G00 X206.981 Y73.314
G00 X206.803 Y73.199
G00 X206.621 Y73.09
G00 X206.435 Y72.986
G00 X206.307 Y72.92
G00 X206.265 Y72.898
G00 X206.255 Y72.894
G00 X206.246 Y72.889
G00 X206.2 Y72.867
G00 X206.074 Y72.806
G00 X205.88 Y72.719
G00 X205.629 Y72.618
G00 X188.74 Y66.215
G00 X173.371 Y55.457
G00 X157.807 Y43.059
G00 X157.638 Y42.929
G00 X157.466 Y42.805
G00 X157.215 Y42.638
G00 X147.702 Y36.624
G00 X152.219 Y38.501
G00 X174.814 Y52.363
G00 X174.997 Y52.471
G00 X175.209 Y52.587
G00 X197.899 Y64.464
G00 X197.903 Y64.466
G00 X198.091 Y64.567
G00 X198.281 Y64.661
G00 X198.474 Y64.75
G00 X198.67 Y64.832
G00 X198.869 Y64.908
G00 X199.069 Y64.977
G00 X199.272 Y65.04
G00 X199.477 Y65.097
G00 X199.684 Y65.147
G00 X199.75 Y65.161
G00 X213.139 Y68.426
G00 X213.347 Y68.473
G00 X213.555 Y68.513
G00 X213.673 Y68.532
G00 X213.806 Y68.554
G00 X214.016 Y68.583
G00 X214.228 Y68.604
G00 X214.439 Y68.62
G00 X214.652 Y68.628
G00 X214.804 Y68.63
G00 X214.832 Y68.63
G00 X215.045 Y68.626
G00 X215.229 Y68.618
G00 X229.11 Y67.79
G00 X229.322 Y67.774
G00 X229.533 Y67.751
G00 X229.662 Y67.734
G00 X229.712 Y67.727
G00 X229.921 Y67.693
G00 X230.13 Y67.653
G00 X230.337 Y67.606
G00 X230.605 Y67.535
G00 X230.655 Y67.52
G00 X230.858 Y67.458
G00 X231.059 Y67.39
G00 X231.194 Y67.34
G00 X240.49 Y63.784
G00 X252.572 Y64.25
G00 X252.785 Y64.255
G00 X253.086 Y64.25
G00 X280.619 Y63.188
G00 X296.483 Y66.31
G00 X296.692 Y66.348
G00 X296.831 Y66.368
G00 X296.838 Y66.369
G00 X297.048 Y66.401
G00 X297.236 Y66.425
G00 X314.289 Y68.272
G00 X314.388 Y68.285
G00 X314.599 Y68.305
G00 X314.811 Y68.318
G00 X315.024 Y68.324
G00 X315.236 Y68.324
G00 X315.449 Y68.317
G00 X315.661 Y68.303
G00 X315.872 Y68.282
G00 X316.083 Y68.255
G00 X316.292 Y68.221
G00 X316.501 Y68.18
G00 X316.708 Y68.133
G00 X316.914 Y68.079
G00 X317.117 Y68.019
G00 X317.319 Y67.952
G00 X317.336 Y67.946
G00 X317.404 Y67.923
G00 X332.807 Y62.423
G00 X333.006 Y62.348
G00 X333.202 Y62.267
G00 X333.396 Y62.18
G00 X333.636 Y62.061
G00 X333.813 Y61.969
G00 X334 Y61.868
G00 X334.176 Y61.766
G00 X348.228 Y53.32
G00 X371.918 Y39.627
G00 X375.851 Y38.149
G00 X341.136 Y62.935
G00 X331.79 Y68.804
G00 X321.341 Y72.592
G00 X321.143 Y72.667
G00 X320.947 Y72.749
G00 X320.753 Y72.837
G00 X320.563 Y72.932
G00 X320.375 Y73.032
G00 X320.192 Y73.138
G00 X320.011 Y73.25
G00 X319.834 Y73.368
G00 X319.661 Y73.491
G00 X319.492 Y73.62
G00 X319.327 Y73.754
G00 X319.166 Y73.893
G00 X319.01 Y74.037
G00 X318.859 Y74.186
G00 X318.713 Y74.34
G00 X318.571 Y74.499
G00 X318.435 Y74.662
G00 X318.303 Y74.829
G00 X318.177 Y75
G00 X318.057 Y75.175
G00 X317.943 Y75.354
G00 X317.834 Y75.537
G00 X317.731 Y75.723
G00 X317.634 Y75.912
G00 X317.543 Y76.104
G00 X317.458 Y76.299
G00 X317.38 Y76.496
G00 X317.308 Y76.696
G00 X317.242 Y76.898
G00 X317.183 Y77.102
G00 X317.13 Y77.308
G00 X317.084 Y77.515
G00 X317.044 Y77.724
G00 X317.011 Y77.934
G00 X316.985 Y78.145
G00 X316.966 Y78.357
G00 X316.954 Y78.569
G00 X316.947 Y78.781
G00 X316.948 Y78.994
G00 X316.956 Y79.206
G00 X316.97 Y79.418
G00 X316.992 Y79.629
G00 X317.02 Y79.84
G00 X317.054 Y80.05
G00 X317.095 Y80.258
G00 X317.144 Y80.465
G00 X317.198 Y80.671
G00 X317.259 Y80.874
G00 X317.326 Y81.076
G00 X317.4 Y81.275
G00 X317.48 Y81.472
G00 X317.567 Y81.666
G00 X317.659 Y81.857
G00 X317.758 Y82.045
G00 X317.862 Y82.23
G00 X317.973 Y82.412
G00 X318.089 Y82.59
G00 X318.21 Y82.764
G00 X318.338 Y82.934
G00 X318.47 Y83.1
G00 X318.608 Y83.262
G00 X318.751 Y83.419
G00 X318.898 Y83.572
G00 X319.051 Y83.72
G00 X319.208 Y83.863
G00 X319.37 Y84.001
G00 X319.536 Y84.134
G00 X319.706 Y84.261
G00 X319.881 Y84.383
G00 X320.058 Y84.499
G00 X320.24 Y84.609
G00 X320.425 Y84.714
G00 X320.613 Y84.812
G00 X320.674 Y84.842
G00 X320.709 Y84.86
G00 X328.912 Y88.855
G00 X331.396 Y90.554
G00 X330.168 Y91.304
G00 X323.335 Y93.163
G00 X317.499 Y92.548
G00 X301.937 Y88.69
G00 X301.73 Y88.642
G00 X301.521 Y88.601
G00 X301.428 Y88.585
G00 X301.391 Y88.578
G00 X301.181 Y88.545
G00 X300.97 Y88.519
G00 X300.759 Y88.499
G00 X300.547 Y88.487
G00 X300.496 Y88.486
G00 X300.491 Y88.485
G00 X300.446 Y88.484
G00 X300.255 Y88.48
G00 X300.248 Y88.48
G00 X300.035 Y88.484
G00 X299.823 Y88.494
G00 X299.611 Y88.511
G00 X299.4 Y88.535
G00 X299.19 Y88.565
G00 X298.98 Y88.602
G00 X298.772 Y88.646
G00 X298.566 Y88.696
G00 X298.361 Y88.753
G00 X298.158 Y88.816
G00 X297.958 Y88.886
G00 X297.759 Y88.962
G00 X297.563 Y89.045
G00 X297.37 Y89.133
G00 X297.18 Y89.228
G00 X296.993 Y89.329
G00 X296.809 Y89.435
G00 X296.629 Y89.548
G00 X296.453 Y89.666
G00 X296.28 Y89.79
G00 X296.111 Y89.919
G00 X295.947 Y90.053
G00 X295.786 Y90.193
G00 X295.631 Y90.338
G00 X295.48 Y90.487
G00 X295.334 Y90.642
G00 X295.193 Y90.801
G00 X295.057 Y90.964
G00 X294.926 Y91.131
G00 X294.801 Y91.303
G00 X294.681 Y91.479
G00 X294.567 Y91.658
G00 X294.458 Y91.841
G00 X294.356 Y92.027
G00 X294.26 Y92.216
G00 X294.169 Y92.409
G00 X294.085 Y92.604
G00 X294.007 Y92.801
G00 X293.936 Y93.002
G00 X293.871 Y93.204
G00 X293.812 Y93.408
G00 X293.76 Y93.614
G00 X293.714 Y93.821
G00 X293.675 Y94.03
G00 X293.643 Y94.24
G00 X293.635 Y94.305
;Nearing path end, moving to preshutoff position
G00 X293.113 Y97.54
M107 ;Pump off
G00 X291.709 Y106.246
G4 P250 ;Pause for 250 milliseconds
;Completed path #5/5 on color #1
;PancakePainter Footer Start
G4 P1000 ;Pause for 1000 milliseconds
G00 X1 Y1 ;Help homing
G28 X0 Y0 ;Home All Axis
M84 ;Motors off
;PancakePainter Footer Complete

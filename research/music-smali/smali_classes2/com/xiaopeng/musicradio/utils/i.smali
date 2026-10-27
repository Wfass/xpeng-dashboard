.class public Lcom/xiaopeng/musicradio/utils/i;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# direct methods
.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;FILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    if-eqz p4, :cond_0

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 21
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    int-to-float p4, p4

    mul-float/2addr p4, p2

    float-to-int p4, p4

    .line 27
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    const/4 v1, 0x0

    .line 24
    invoke-static {p1, p4, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 30
    :goto_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 31
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 32
    invoke-virtual {v1, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 p2, 0x0

    .line 33
    invoke-virtual {v0, p1, v1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 35
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p0

    .line 36
    sget-object p1, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 p2, 0x1

    invoke-static {p0, p4, p1, p2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object p2

    .line 41
    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v0

    const/16 v1, 0x19

    .line 42
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {v0, p3}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 43
    invoke-virtual {v0, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 44
    invoke-virtual {v0, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 45
    invoke-virtual {p2, p4}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 46
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->destroy()V

    return-object p4
.end method

.method public static a(Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 36

    move/from16 v0, p1

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 83
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 84
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_0

    move-object/from16 v3, p0

    move-object/from16 v2, p2

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    move-object/from16 v3, p0

    invoke-virtual {v3, v2, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_0
    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 94
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 95
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    mul-int v13, v11, v12

    .line 97
    new-array v14, v13, [I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object v4, v14

    move v6, v11

    move v9, v11

    move v10, v12

    .line 98
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v3, v11, -0x1

    add-int/lit8 v4, v12, -0x1

    add-int v5, v0, v0

    add-int/2addr v5, v1

    .line 105
    new-array v6, v13, [I

    .line 106
    new-array v7, v13, [I

    .line 107
    new-array v8, v13, [I

    .line 109
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    new-array v9, v9, [I

    add-int/lit8 v10, v5, 0x1

    shr-int/2addr v10, v1

    mul-int/2addr v10, v10

    mul-int/lit16 v13, v10, 0x100

    .line 113
    new-array v15, v13, [I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v13, :cond_2

    .line 115
    div-int v17, v1, v10

    aput v17, v15, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    .line 120
    filled-new-array {v5, v1}, [I

    move-result-object v1

    const-class v10, I

    invoke-static {v10, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    add-int/lit8 v10, v0, 0x1

    const/4 v13, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_2
    const/16 v19, 0x2

    if-ge v13, v12, :cond_7

    move-object/from16 p2, v2

    neg-int v2, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    :goto_3
    const v29, 0xff00

    const/high16 v30, 0xff0000

    if-gt v2, v0, :cond_4

    move/from16 v32, v4

    move/from16 v31, v12

    const/4 v12, 0x0

    .line 132
    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v17, v4

    aget v4, v14, v4

    add-int v33, v2, v0

    .line 133
    aget-object v33, v1, v33

    and-int v30, v4, v30

    shr-int/lit8 v30, v30, 0x10

    .line 134
    aput v30, v33, v12

    and-int v29, v4, v29

    shr-int/lit8 v29, v29, 0x8

    const/16 v16, 0x1

    .line 135
    aput v29, v33, v16

    and-int/lit16 v4, v4, 0xff

    .line 136
    aput v4, v33, v19

    .line 137
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v4, v10, v4

    .line 138
    aget v29, v33, v12

    mul-int v29, v29, v4

    add-int v20, v20, v29

    .line 139
    aget v29, v33, v16

    mul-int v29, v29, v4

    add-int v21, v21, v29

    .line 140
    aget v29, v33, v19

    mul-int v29, v29, v4

    add-int v22, v22, v29

    if-lez v2, :cond_3

    .line 142
    aget v4, v33, v12

    add-int v26, v26, v4

    .line 143
    aget v4, v33, v16

    add-int v27, v27, v4

    .line 144
    aget v4, v33, v19

    add-int v28, v28, v4

    goto :goto_4

    .line 146
    :cond_3
    aget v4, v33, v12

    add-int v23, v23, v4

    .line 147
    aget v4, v33, v16

    add-int v24, v24, v4

    .line 148
    aget v4, v33, v19

    add-int v25, v25, v4

    :goto_4
    add-int/lit8 v2, v2, 0x1

    move/from16 v12, v31

    move/from16 v4, v32

    goto :goto_3

    :cond_4
    move/from16 v32, v4

    move/from16 v31, v12

    move v4, v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v11, :cond_6

    .line 155
    aget v12, v15, v20

    aput v12, v6, v17

    .line 156
    aget v12, v15, v21

    aput v12, v7, v17

    .line 157
    aget v12, v15, v22

    aput v12, v8, v17

    sub-int v20, v20, v23

    sub-int v21, v21, v24

    sub-int v22, v22, v25

    sub-int v12, v4, v0

    add-int/2addr v12, v5

    .line 164
    rem-int/2addr v12, v5

    aget-object v12, v1, v12

    const/16 v33, 0x0

    .line 166
    aget v34, v12, v33

    sub-int v23, v23, v34

    const/16 v16, 0x1

    .line 167
    aget v33, v12, v16

    sub-int v24, v24, v33

    .line 168
    aget v33, v12, v19

    sub-int v25, v25, v33

    if-nez v13, :cond_5

    add-int v33, v2, v0

    move-object/from16 v34, v15

    add-int/lit8 v15, v33, 0x1

    .line 171
    invoke-static {v15, v3}, Ljava/lang/Math;->min(II)I

    move-result v15

    aput v15, v9, v2

    goto :goto_6

    :cond_5
    move-object/from16 v34, v15

    .line 173
    :goto_6
    aget v15, v9, v2

    add-int v15, v18, v15

    aget v15, v14, v15

    and-int v33, v15, v30

    shr-int/lit8 v33, v33, 0x10

    const/16 v35, 0x0

    .line 175
    aput v33, v12, v35

    and-int v33, v15, v29

    shr-int/lit8 v33, v33, 0x8

    const/16 v16, 0x1

    .line 176
    aput v33, v12, v16

    and-int/lit16 v15, v15, 0xff

    .line 177
    aput v15, v12, v19

    .line 179
    aget v15, v12, v35

    add-int v26, v26, v15

    .line 180
    aget v15, v12, v16

    add-int v27, v27, v15

    .line 181
    aget v12, v12, v19

    add-int v28, v28, v12

    add-int v20, v20, v26

    add-int v21, v21, v27

    add-int v22, v22, v28

    add-int/lit8 v4, v4, 0x1

    .line 187
    rem-int/2addr v4, v5

    .line 188
    rem-int v12, v4, v5

    aget-object v12, v1, v12

    const/4 v15, 0x0

    .line 190
    aget v33, v12, v15

    add-int v23, v23, v33

    const/16 v16, 0x1

    .line 191
    aget v33, v12, v16

    add-int v24, v24, v33

    .line 192
    aget v33, v12, v19

    add-int v25, v25, v33

    .line 194
    aget v33, v12, v15

    sub-int v26, v26, v33

    .line 195
    aget v15, v12, v16

    sub-int v27, v27, v15

    .line 196
    aget v12, v12, v19

    sub-int v28, v28, v12

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v15, v34

    goto/16 :goto_5

    :cond_6
    move-object/from16 v34, v15

    add-int v18, v18, v11

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p2

    move/from16 v12, v31

    move/from16 v4, v32

    goto/16 :goto_2

    :cond_7
    move-object/from16 p2, v2

    move/from16 v32, v4

    move/from16 v31, v12

    move-object/from16 v34, v15

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v11, :cond_d

    neg-int v3, v0

    mul-int v4, v3, v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    :goto_8
    if-gt v3, v0, :cond_a

    move-object/from16 v24, v9

    const/4 v9, 0x0

    .line 206
    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v25

    add-int v25, v25, v2

    add-int v26, v3, v0

    .line 208
    aget-object v26, v1, v26

    .line 210
    aget v27, v6, v25

    aput v27, v26, v9

    .line 211
    aget v9, v7, v25

    const/16 v16, 0x1

    aput v9, v26, v16

    .line 212
    aget v9, v8, v25

    aput v9, v26, v19

    .line 214
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v9

    sub-int v9, v10, v9

    .line 216
    aget v27, v6, v25

    mul-int v27, v27, v9

    add-int v12, v12, v27

    .line 217
    aget v27, v7, v25

    mul-int v27, v27, v9

    add-int v13, v13, v27

    .line 218
    aget v25, v8, v25

    mul-int v25, v25, v9

    add-int v15, v15, v25

    if-lez v3, :cond_8

    const/4 v9, 0x0

    .line 221
    aget v25, v26, v9

    add-int v21, v21, v25

    const/16 v16, 0x1

    .line 222
    aget v25, v26, v16

    add-int v22, v22, v25

    .line 223
    aget v25, v26, v19

    add-int v23, v23, v25

    goto :goto_9

    :cond_8
    const/4 v9, 0x0

    const/16 v16, 0x1

    .line 225
    aget v25, v26, v9

    add-int v17, v17, v25

    .line 226
    aget v9, v26, v16

    add-int v18, v18, v9

    .line 227
    aget v9, v26, v19

    add-int v20, v20, v9

    :goto_9
    move/from16 v9, v32

    if-ge v3, v9, :cond_9

    add-int/2addr v4, v11

    :cond_9
    add-int/lit8 v3, v3, 0x1

    move/from16 v32, v9

    move-object/from16 v9, v24

    goto :goto_8

    :cond_a
    move-object/from16 v24, v9

    move/from16 v9, v32

    move v4, v2

    move/from16 v25, v22

    move/from16 v26, v23

    const/4 v3, 0x0

    move/from16 v22, v0

    move/from16 v23, v21

    move/from16 v21, v20

    move/from16 v20, v18

    move/from16 v18, v17

    move/from16 v17, v15

    move v15, v13

    move v13, v12

    move/from16 v12, v31

    :goto_a
    if-ge v3, v12, :cond_c

    const/high16 v27, -0x1000000

    .line 238
    aget v28, v14, v4

    and-int v27, v28, v27

    aget v28, v34, v13

    shl-int/lit8 v28, v28, 0x10

    or-int v27, v27, v28

    aget v28, v34, v15

    shl-int/lit8 v28, v28, 0x8

    or-int v27, v27, v28

    aget v28, v34, v17

    or-int v27, v27, v28

    aput v27, v14, v4

    sub-int v13, v13, v18

    sub-int v15, v15, v20

    sub-int v17, v17, v21

    sub-int v27, v22, v0

    add-int v27, v27, v5

    .line 245
    rem-int v27, v27, v5

    aget-object v27, v1, v27

    const/16 v28, 0x0

    .line 247
    aget v29, v27, v28

    sub-int v18, v18, v29

    const/16 v16, 0x1

    .line 248
    aget v28, v27, v16

    sub-int v20, v20, v28

    .line 249
    aget v28, v27, v19

    sub-int v21, v21, v28

    if-nez v2, :cond_b

    add-int v0, v3, v10

    .line 252
    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/2addr v0, v11

    aput v0, v24, v3

    .line 254
    :cond_b
    aget v0, v24, v3

    add-int/2addr v0, v2

    .line 256
    aget v28, v6, v0

    const/16 v29, 0x0

    aput v28, v27, v29

    .line 257
    aget v28, v7, v0

    const/16 v16, 0x1

    aput v28, v27, v16

    .line 258
    aget v0, v8, v0

    aput v0, v27, v19

    .line 260
    aget v0, v27, v29

    add-int v23, v23, v0

    .line 261
    aget v0, v27, v16

    add-int v25, v25, v0

    .line 262
    aget v0, v27, v19

    add-int v26, v26, v0

    add-int v13, v13, v23

    add-int v15, v15, v25

    add-int v17, v17, v26

    add-int/lit8 v22, v22, 0x1

    .line 268
    rem-int v22, v22, v5

    .line 269
    aget-object v0, v1, v22

    const/16 v27, 0x0

    .line 271
    aget v28, v0, v27

    add-int v18, v18, v28

    const/16 v16, 0x1

    .line 272
    aget v28, v0, v16

    add-int v20, v20, v28

    .line 273
    aget v28, v0, v19

    add-int v21, v21, v28

    .line 275
    aget v28, v0, v27

    sub-int v23, v23, v28

    .line 276
    aget v28, v0, v16

    sub-int v25, v25, v28

    .line 277
    aget v0, v0, v19

    sub-int v26, v26, v0

    add-int/2addr v4, v11

    add-int/lit8 v3, v3, 0x1

    move/from16 v0, p1

    goto/16 :goto_a

    :cond_c
    const/16 v16, 0x1

    const/16 v27, 0x0

    add-int/lit8 v2, v2, 0x1

    move/from16 v0, p1

    move/from16 v32, v9

    move/from16 v31, v12

    move-object/from16 v9, v24

    goto/16 :goto_7

    :cond_d
    move/from16 v12, v31

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p2

    move-object v4, v14

    move v6, v11

    move v9, v11

    move v10, v12

    .line 283
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object p2
.end method

.class public Lcom/xiaopeng/factory/utils/QRCodeUtil;
.super Ljava/lang/Object;
.source "QRCodeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLogo(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "logo"    # Landroid/graphics/Bitmap;

    .line 82
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 83
    return-object v0

    .line 86
    :cond_0
    if-nez p1, :cond_1

    .line 87
    return-object p0

    .line 91
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 92
    .local v1, "srcWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 93
    .local v2, "srcHeight":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 94
    .local v3, "logoWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 96
    .local v4, "logoHeight":I
    if-eqz v1, :cond_5

    if-nez v2, :cond_2

    goto :goto_2

    .line 100
    :cond_2
    if-eqz v3, :cond_4

    if-nez v4, :cond_3

    goto :goto_1

    .line 105
    :cond_3
    int-to-float v5, v1

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x40a00000    # 5.0f

    div-float/2addr v5, v6

    int-to-float v6, v3

    div-float/2addr v5, v6

    .line 106
    .local v5, "scaleFactor":F
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 108
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 109
    .local v7, "canvas":Landroid/graphics/Canvas;
    const/4 v8, 0x0

    invoke-virtual {v7, p0, v8, v8, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 110
    div-int/lit8 v8, v1, 0x2

    int-to-float v8, v8

    div-int/lit8 v9, v2, 0x2

    int-to-float v9, v9

    invoke-virtual {v7, v5, v5, v8, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 111
    sub-int v8, v1, v3

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-int v9, v2, v4

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v7, p1, v8, v9, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 113
    const/16 v0, 0x1f

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 114
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    .line 117
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v6

    .line 101
    .end local v5    # "scaleFactor":F
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    :goto_1
    return-object p0

    .line 97
    :cond_5
    :goto_2
    return-object v0
.end method

.method public static createQRImage(Ljava/lang/String;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 17
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "widthPix"    # I
    .param p2, "heightPix"    # I
    .param p3, "logoBm"    # Landroid/graphics/Bitmap;

    move-object/from16 v7, p0

    move/from16 v15, p1

    move/from16 v14, p2

    .line 34
    move-object/from16 v13, p3

    const/16 v16, 0x0

    if-eqz v7, :cond_5

    :try_start_0
    const-string v0, ""

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 39
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    .local v0, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    sget-object v1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v2, "utf-8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v1, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    sget-object v2, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->H:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v1, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v1}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object v2, v7

    move v4, v15

    move v5, v14

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    .line 48
    .local v1, "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    mul-int v2, v15, v14

    new-array v2, v2, [I

    .line 51
    .local v2, "pixels":[I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "y":I
    :goto_0
    if-ge v4, v14, :cond_3

    .line 52
    move v5, v3

    .local v5, "x":I
    :goto_1
    if-ge v5, v15, :cond_2

    .line 53
    invoke-virtual {v1, v5, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 54
    mul-int v6, v4, v15

    add-int/2addr v6, v5

    const/high16 v8, -0x1000000

    aput v8, v2, v6

    goto :goto_2

    .line 56
    :cond_1
    mul-int v6, v4, v15

    add-int/2addr v6, v5

    const/4 v8, -0x1

    aput v8, v2, v6

    .line 52
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 51
    .end local v5    # "x":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 62
    .end local v4    # "y":I
    :cond_3
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v15, v14, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v4, 0x0

    move-object v8, v3

    move-object v9, v2

    move v11, v15

    move-object v5, v13

    move v13, v4

    move v14, v15

    move/from16 v15, p2

    :try_start_1
    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 65
    if-eqz v5, :cond_4

    .line 66
    invoke-static {v3, v5}, Lcom/xiaopeng/factory/utils/QRCodeUtil;->addLogo(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v4

    .line 68
    :cond_4
    return-object v3

    .line 71
    .end local v0    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    .end local v1    # "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    .end local v2    # "pixels":[I
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v5, v13

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    return-object v16

    .line 35
    :cond_5
    :goto_4
    move-object v5, v13

    return-object v16
.end method

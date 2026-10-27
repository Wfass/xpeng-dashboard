.class public Lcom/xiaopeng/lib/utils/view/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byte2Bmp(II[BI)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "w"    # I
    .param p1, "h"    # I
    .param p2, "data"    # [B
    .param p3, "quality"    # I

    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "bmp":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/YuvImage;

    const/16 v3, 0x11

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p2

    move v4, p0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 53
    .local v1, "image":Landroid/graphics/YuvImage;
    nop

    .line 54
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 55
    .local v2, "stream":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v3, p3, v2}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 56
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 58
    :try_start_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_0

    .line 59
    :catch_0
    move-exception v3

    .line 60
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 64
    .end local v2    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    return-object v0
.end method

.method public static byte2Bmp(II[BLandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "w"    # I
    .param p1, "h"    # I
    .param p2, "data"    # [B
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .line 40
    mul-int v0, p0, p1

    new-array v0, v0, [I

    .line 41
    .local v0, "RGBData":[I
    invoke-static {v0, p2, p0, p1}, Lcom/xiaopeng/lib/utils/view/BitmapUtils;->decodeYUV420SP([I[BII)V

    .line 42
    invoke-static {v0, p0, p1, p3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 44
    .local v1, "bm":Landroid/graphics/Bitmap;
    return-object v1
.end method

.method private static decodeYUV420SP([I[BII)V
    .locals 19
    .param p0, "rgb"    # [I
    .param p1, "yuv420sp"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    move/from16 v1, p2

    .line 68
    move/from16 v2, p3

    mul-int v3, v1, v2

    .line 70
    .local v3, "frameSize":I
    const/4 v4, 0x0

    .local v4, "j":I
    move v6, v4

    const/4 v4, 0x0

    .local v4, "yp":I
    .local v6, "j":I
    :goto_0
    if-ge v6, v2, :cond_9

    .line 71
    shr-int/lit8 v7, v6, 0x1

    mul-int/2addr v7, v1

    add-int/2addr v7, v3

    .local v7, "uvp":I
    const/4 v8, 0x0

    .local v8, "u":I
    const/4 v9, 0x0

    .line 72
    .local v9, "v":I
    move v10, v4

    const/4 v4, 0x0

    .local v4, "i":I
    .local v10, "yp":I
    :goto_1
    if-ge v4, v1, :cond_8

    .line 73
    aget-byte v11, p1, v10

    const/16 v12, 0xff

    and-int/2addr v11, v12

    add-int/lit8 v11, v11, -0x10

    .line 74
    .local v11, "y":I
    if-gez v11, :cond_0

    .line 75
    const/4 v11, 0x0

    .line 76
    :cond_0
    and-int/lit8 v13, v4, 0x1

    if-nez v13, :cond_1

    .line 77
    add-int/lit8 v13, v7, 0x1

    .local v13, "uvp":I
    aget-byte v7, p1, v7

    .end local v7    # "uvp":I
    and-int/2addr v7, v12

    add-int/lit8 v7, v7, -0x80

    .line 78
    .end local v9    # "v":I
    .local v7, "v":I
    add-int/lit8 v9, v13, 0x1

    .local v9, "uvp":I
    aget-byte v13, p1, v13

    .end local v13    # "uvp":I
    and-int/2addr v13, v12

    add-int/lit8 v13, v13, -0x80

    .line 81
    .end local v8    # "u":I
    .local v13, "u":I
    move v8, v13

    move/from16 v18, v9

    move v9, v7

    move/from16 v7, v18

    .end local v13    # "u":I
    .local v7, "uvp":I
    .restart local v8    # "u":I
    .local v9, "v":I
    :cond_1
    const/16 v13, 0x4a8

    mul-int/2addr v13, v11

    .line 82
    .local v13, "y1192":I
    const/16 v14, 0x662

    mul-int/2addr v14, v9

    add-int/2addr v14, v13

    .line 83
    .local v14, "r":I
    const/16 v15, 0x341

    mul-int/2addr v15, v9

    sub-int v15, v13, v15

    const/16 v16, 0x190

    mul-int v16, v16, v8

    sub-int v15, v15, v16

    .line 84
    .local v15, "g":I
    const/16 v16, 0x812

    mul-int v16, v16, v8

    add-int v5, v13, v16

    .line 86
    .local v5, "b":I
    const v12, 0x3ffff

    if-gez v14, :cond_2

    .line 87
    const/4 v14, 0x0

    goto :goto_2

    .line 88
    :cond_2
    if-le v14, v12, :cond_3

    .line 89
    const v14, 0x3ffff

    .line 90
    :cond_3
    :goto_2
    if-gez v15, :cond_4

    .line 91
    const/4 v15, 0x0

    goto :goto_3

    .line 92
    :cond_4
    if-le v15, v12, :cond_5

    .line 93
    const v15, 0x3ffff

    .line 94
    :cond_5
    :goto_3
    if-gez v5, :cond_6

    .line 95
    const/4 v5, 0x0

    goto :goto_4

    .line 96
    :cond_6
    if-le v5, v12, :cond_7

    .line 97
    const v5, 0x3ffff

    .line 99
    :cond_7
    :goto_4
    const/high16 v12, -0x1000000

    shl-int/lit8 v16, v14, 0x6

    const/high16 v17, 0xff0000

    and-int v16, v16, v17

    or-int v12, v12, v16

    shr-int/lit8 v16, v15, 0x2

    const v17, 0xff00

    and-int v16, v16, v17

    or-int v12, v12, v16

    shr-int/lit8 v0, v5, 0xa

    const/16 v1, 0xff

    and-int/2addr v0, v1

    or-int/2addr v0, v12

    aput v0, p0, v10

    .line 72
    .end local v5    # "b":I
    .end local v11    # "y":I
    .end local v13    # "y1192":I
    .end local v14    # "r":I
    .end local v15    # "g":I
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p2

    goto :goto_1

    .line 70
    .end local v4    # "i":I
    .end local v7    # "uvp":I
    .end local v8    # "u":I
    .end local v9    # "v":I
    :cond_8
    add-int/lit8 v6, v6, 0x1

    move v4, v10

    move/from16 v1, p2

    goto/16 :goto_0

    .line 103
    .end local v6    # "j":I
    .end local v10    # "yp":I
    :cond_9
    return-void
.end method

.method public static saveAsPicture(II[BLjava/lang/String;)V
    .locals 5
    .param p0, "w"    # I
    .param p1, "h"    # I
    .param p2, "data"    # [B
    .param p3, "savePath"    # Ljava/lang/String;

    .line 23
    mul-int v0, p0, p1

    new-array v0, v0, [I

    .line 24
    .local v0, "RGBData":[I
    invoke-static {v0, p2, p0, p1}, Lcom/xiaopeng/lib/utils/view/BitmapUtils;->decodeYUV420SP([I[BII)V

    .line 25
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 28
    .local v1, "bm":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 29
    .local v2, "outputStream":Ljava/io/FileOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 30
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 31
    :catch_0
    move-exception v2

    .line 32
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

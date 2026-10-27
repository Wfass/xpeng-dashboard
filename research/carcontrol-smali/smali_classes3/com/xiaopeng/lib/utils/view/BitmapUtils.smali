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
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "h",
            "data",
            "quality"
        }
    .end annotation

    .line 52
    new-instance v6, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p2

    move v3, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 54
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v6, v0, p3, p2}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 56
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    invoke-static {p0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 58
    :try_start_0
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public static byte2Bmp(II[BLandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "h",
            "data",
            "config"
        }
    .end annotation

    mul-int v0, p0, p1

    .line 40
    new-array v0, v0, [I

    .line 41
    invoke-static {v0, p2, p0, p1}, Lcom/xiaopeng/lib/utils/view/BitmapUtils;->decodeYUV420SP([I[BII)V

    .line 42
    invoke-static {v0, p0, p1, p3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static decodeYUV420SP([I[BII)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rgb",
            "yuv420sp",
            "width",
            "height"
        }
    .end annotation

    move/from16 v0, p2

    move/from16 v1, p3

    mul-int v2, v0, v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v1, :cond_9

    shr-int/lit8 v6, v4, 0x1

    mul-int/2addr v6, v0

    add-int/2addr v6, v2

    move v7, v3

    move v8, v7

    move v9, v8

    :goto_1
    if-ge v7, v0, :cond_8

    .line 73
    aget-byte v10, p1, v5

    and-int/lit16 v10, v10, 0xff

    add-int/lit8 v10, v10, -0x10

    if-gez v10, :cond_0

    move v10, v3

    :cond_0
    and-int/lit8 v11, v7, 0x1

    if-nez v11, :cond_1

    add-int/lit8 v8, v6, 0x1

    .line 77
    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v9, v6, -0x80

    add-int/lit8 v6, v8, 0x1

    .line 78
    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v8, v8, -0x80

    :cond_1
    mul-int/lit16 v10, v10, 0x4a8

    mul-int/lit16 v11, v9, 0x662

    add-int/2addr v11, v10

    mul-int/lit16 v12, v9, 0x341

    sub-int v12, v10, v12

    mul-int/lit16 v13, v8, 0x190

    sub-int/2addr v12, v13

    mul-int/lit16 v13, v8, 0x812

    add-int/2addr v10, v13

    const v13, 0x3ffff

    if-gez v11, :cond_2

    move v11, v3

    goto :goto_2

    :cond_2
    if-le v11, v13, :cond_3

    move v11, v13

    :cond_3
    :goto_2
    if-gez v12, :cond_4

    move v12, v3

    goto :goto_3

    :cond_4
    if-le v12, v13, :cond_5

    move v12, v13

    :cond_5
    :goto_3
    if-gez v10, :cond_6

    move v10, v3

    goto :goto_4

    :cond_6
    if-le v10, v13, :cond_7

    move v10, v13

    :cond_7
    :goto_4
    const/high16 v13, -0x1000000

    shl-int/lit8 v11, v11, 0x6

    const/high16 v14, 0xff0000

    and-int/2addr v11, v14

    or-int/2addr v11, v13

    shr-int/lit8 v12, v12, 0x2

    const v13, 0xff00

    and-int/2addr v12, v13

    or-int/2addr v11, v12

    shr-int/lit8 v10, v10, 0xa

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v10, v11

    .line 99
    aput v10, p0, v5

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_9
    return-void
.end method

.method public static saveAsPicture(II[BLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "h",
            "data",
            "savePath"
        }
    .end annotation

    mul-int v0, p0, p1

    .line 23
    new-array v0, v0, [I

    .line 24
    invoke-static {v0, p2, p0, p1}, Lcom/xiaopeng/lib/utils/view/BitmapUtils;->decodeYUV420SP([I[BII)V

    .line 25
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 28
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 29
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p3, 0x64

    invoke-virtual {p0, p2, p3, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 30
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

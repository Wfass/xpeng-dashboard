.class public Lcom/xiaopeng/carcontrol/util/QrCodeUtils;
.super Ljava/lang/Object;
.source "QrCodeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createQRImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10
        }
        names = {
            "url",
            "width",
            "height"
        }
    .end annotation

    const/4 v0, 0x0

    .line 24
    invoke-static {p0, p1, p2, v0}, Lcom/xiaopeng/carcontrol/util/QrCodeUtils;->createQRImage(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createQRImage(Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x0
        }
        names = {
            "url",
            "width",
            "height",
            "margin"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    :try_start_0
    const-string v1, ""

    .line 30
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_3

    .line 33
    :cond_0
    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    .line 35
    sget-object v1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string/jumbo v2, "utf-8"

    invoke-virtual {v8, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v1, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v8, v1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v3, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v3}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    sget-object v5, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object v4, p0

    move v6, p1

    move v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    mul-int p3, p1, p2

    .line 39
    new-array v2, p3, [I

    const/4 p3, 0x0

    move v1, p3

    :goto_0
    if-ge v1, p2, :cond_3

    move v3, p3

    :goto_1
    if-ge v3, p1, :cond_2

    .line 42
    invoke-virtual {p0, v3, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_1

    mul-int v4, v1, p1

    add-int/2addr v4, v3

    const/high16 v5, -0x1000000

    .line 43
    aput v5, v2, v4

    goto :goto_2

    :cond_1
    mul-int v4, v1, p1

    add-int/2addr v4, v3

    const/4 v5, -0x1

    .line 45
    aput v5, v2, v4

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    :cond_3
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v4, p1

    move v7, p1

    move v8, p2

    .line 51
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 54
    invoke-virtual {p0}, Lcom/google/zxing/WriterException;->printStackTrace()V

    :cond_4
    :goto_3
    return-object v0
.end method

.method public static releaseQrBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-void
.end method

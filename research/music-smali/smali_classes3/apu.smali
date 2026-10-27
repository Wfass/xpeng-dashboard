.class public Lapu;
.super Ljava/lang/Object;
.source "QRCodeEncoder.java"


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lalc;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 19
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lalc;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lapu;->a:Ljava/util/Map;

    .line 22
    sget-object v0, Lapu;->a:Ljava/util/Map;

    sget-object v1, Lalc;->CHARACTER_SET:Lalc;

    const-string v2, "utf-8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lapu;->a:Ljava/util/Map;

    sget-object v1, Lalc;->ERROR_CORRECTION:Lalc;

    sget-object v2, Laln;->H:Laln;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lapu;->a:Ljava/util/Map;

    sget-object v1, Lalc;->MARGIN:Lalc;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    .line 118
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 119
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 120
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v4, v0

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x40a00000    # 5.0f

    div-float/2addr v4, v5

    int-to-float v5, v2

    div-float/2addr v4, v5

    .line 124
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v6, 0x0

    .line 126
    :try_start_0
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v8, 0x0

    .line 127
    invoke-virtual {v7, p0, v8, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 128
    div-int/lit8 p0, v0, 0x2

    int-to-float p0, p0

    div-int/lit8 v8, v1, 0x2

    int-to-float v8, v8

    invoke-virtual {v7, v4, v4, p0, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    sub-int/2addr v0, v2

    .line 129
    div-int/lit8 v0, v0, 0x2

    int-to-float p0, v0

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v1

    invoke-virtual {v7, p1, p0, v0, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 130
    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    .line 131
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v5, v6

    :goto_0
    return-object v5

    :cond_1
    :goto_1
    return-object p0
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    .line 141
    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 142
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 143
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    .line 144
    array-length v2, p0

    invoke-static {p0, v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "base64ToBitmap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "QRCodeEncoder"

    invoke-static {v0, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static a(Ljava/lang/String;IIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    const-string v0, ","

    .line 74
    :try_start_0
    new-instance v1, Lapt;

    invoke-direct {v1}, Lapt;-><init>()V

    sget-object v3, Lalb;->QR_CODE:Lalb;

    sget-object v6, Lapu;->a:Ljava/util/Map;

    move-object v2, p0

    move v4, p1

    move v5, p1

    invoke-virtual/range {v1 .. v6}, Lapt;->a(Ljava/lang/String;Lalb;IILjava/util/Map;)Lalf;

    move-result-object p0

    .line 75
    invoke-virtual {p0}, Lalf;->a()I

    move-result v7

    .line 76
    invoke-virtual {p0}, Lalf;->b()I

    move-result v8

    mul-int v1, v7, v8

    .line 77
    new-array v2, v1, [I

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v8, :cond_2

    move v4, v1

    :goto_1
    if-ge v4, v7, :cond_1

    .line 80
    invoke-virtual {p0, v4, v3}, Lalf;->a(II)Z

    move-result v5

    if-eqz v5, :cond_0

    mul-int v5, v3, v7

    add-int/2addr v5, v4

    .line 81
    aput p2, v2, v5

    goto :goto_2

    :cond_0
    mul-int v5, v3, v7

    add-int/2addr v5, v4

    .line 83
    aput p3, v2, v5

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 87
    :cond_2
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v4, v7

    .line 89
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    if-eqz p4, :cond_5

    .line 91
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    if-ne p2, p1, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    if-eq p2, p1, :cond_5

    :cond_3
    const-string p2, "QRCodeEncoder"

    .line 92
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scale:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 94
    invoke-static {p0, p1, p1, p2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p1, p0, :cond_4

    .line 96
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    move-object p0, p1

    .line 100
    :cond_5
    invoke-static {p0, p4}, Lapu;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, -0x1

    .line 60
    invoke-static {p0, p1, p2, v0, p3}, Lapu;->a(Ljava/lang/String;IIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

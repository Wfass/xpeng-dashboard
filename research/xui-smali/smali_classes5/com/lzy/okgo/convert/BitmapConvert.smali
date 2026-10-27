.class public Lcom/lzy/okgo/convert/BitmapConvert;
.super Ljava/lang/Object;
.source "BitmapConvert.java"

# interfaces
.implements Lcom/lzy/okgo/convert/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lzy/okgo/convert/Converter<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private decodeConfig:Landroid/graphics/Bitmap$Config;

.field private maxHeight:I

.field private maxWidth:I

.field private scaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 42
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const/16 v2, 0x3e8

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/lzy/okgo/convert/BitmapConvert;-><init>(IILandroid/graphics/Bitmap$Config;Landroid/widget/ImageView$ScaleType;)V

    .line 43
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .line 46
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/lzy/okgo/convert/BitmapConvert;-><init>(IILandroid/graphics/Bitmap$Config;Landroid/widget/ImageView$ScaleType;)V

    .line 47
    return-void
.end method

.method public constructor <init>(IILandroid/graphics/Bitmap$Config;Landroid/widget/ImageView$ScaleType;)V
    .locals 0
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "decodeConfig"    # Landroid/graphics/Bitmap$Config;
    .param p4, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/lzy/okgo/convert/BitmapConvert;->maxWidth:I

    .line 51
    iput p2, p0, Lcom/lzy/okgo/convert/BitmapConvert;->maxHeight:I

    .line 52
    iput-object p3, p0, Lcom/lzy/okgo/convert/BitmapConvert;->decodeConfig:Landroid/graphics/Bitmap$Config;

    .line 53
    iput-object p4, p0, Lcom/lzy/okgo/convert/BitmapConvert;->scaleType:Landroid/widget/ImageView$ScaleType;

    .line 54
    return-void
.end method

.method private static findBestSampleSize(IIII)I
    .locals 10
    .param p0, "actualWidth"    # I
    .param p1, "actualHeight"    # I
    .param p2, "desiredWidth"    # I
    .param p3, "desiredHeight"    # I

    .line 136
    int-to-double v0, p0

    int-to-double v2, p2

    div-double/2addr v0, v2

    .line 137
    .local v0, "wr":D
    int-to-double v2, p1

    int-to-double v4, p3

    div-double/2addr v2, v4

    .line 138
    .local v2, "hr":D
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 139
    .local v4, "ratio":D
    const/high16 v6, 0x3f800000    # 1.0f

    .line 140
    .local v6, "n":F
    :goto_0
    const/high16 v7, 0x40000000    # 2.0f

    mul-float v8, v6, v7

    float-to-double v8, v8

    cmpg-double v8, v8, v4

    if-gtz v8, :cond_0

    .line 141
    mul-float/2addr v6, v7

    goto :goto_0

    .line 143
    :cond_0
    float-to-int v7, v6

    return v7
.end method

.method private static getResizedDimension(IIIILandroid/widget/ImageView$ScaleType;)I
    .locals 7
    .param p0, "maxPrimary"    # I
    .param p1, "maxSecondary"    # I
    .param p2, "actualPrimary"    # I
    .param p3, "actualSecondary"    # I
    .param p4, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .line 95
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 96
    return p2

    .line 100
    :cond_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne p4, v0, :cond_2

    .line 101
    if-nez p0, :cond_1

    .line 102
    return p2

    .line 104
    :cond_1
    return p0

    .line 109
    :cond_2
    if-nez p0, :cond_3

    .line 110
    int-to-double v0, p1

    int-to-double v2, p3

    div-double/2addr v0, v2

    .line 111
    .local v0, "ratio":D
    int-to-double v2, p2

    mul-double/2addr v2, v0

    double-to-int v2, v2

    return v2

    .line 114
    .end local v0    # "ratio":D
    :cond_3
    if-nez p1, :cond_4

    .line 115
    return p0

    .line 118
    :cond_4
    int-to-double v0, p3

    int-to-double v2, p2

    div-double/2addr v0, v2

    .line 119
    .restart local v0    # "ratio":D
    move v2, p0

    .line 122
    .local v2, "resized":I
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne p4, v3, :cond_6

    .line 123
    int-to-double v3, v2

    mul-double/2addr v3, v0

    int-to-double v5, p1

    cmpg-double v3, v3, v5

    if-gez v3, :cond_5

    .line 124
    int-to-double v3, p1

    div-double/2addr v3, v0

    double-to-int v2, v3

    .line 126
    :cond_5
    return v2

    .line 129
    :cond_6
    int-to-double v3, v2

    mul-double/2addr v3, v0

    int-to-double v5, p1

    cmpl-double v3, v3, v5

    if-lez v3, :cond_7

    .line 130
    int-to-double v3, p1

    div-double/2addr v3, v0

    double-to-int v2, v3

    .line 132
    :cond_7
    return v2
.end method

.method private parse([B)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "byteArray"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .line 64
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 66
    .local v0, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    iget v1, p0, Lcom/lzy/okgo/convert/BitmapConvert;->maxWidth:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget v1, p0, Lcom/lzy/okgo/convert/BitmapConvert;->maxHeight:I

    if-nez v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/lzy/okgo/convert/BitmapConvert;->decodeConfig:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 68
    array-length v1, p1

    invoke-static {p1, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 70
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 71
    array-length v3, p1

    invoke-static {p1, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 72
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 73
    .local v3, "actualWidth":I
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 75
    .local v4, "actualHeight":I
    iget v5, p0, Lcom/lzy/okgo/convert/BitmapConvert;->maxWidth:I

    iget v6, p0, Lcom/lzy/okgo/convert/BitmapConvert;->maxHeight:I

    iget-object v7, p0, Lcom/lzy/okgo/convert/BitmapConvert;->scaleType:Landroid/widget/ImageView$ScaleType;

    invoke-static {v5, v6, v3, v4, v7}, Lcom/lzy/okgo/convert/BitmapConvert;->getResizedDimension(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v5

    .line 76
    .local v5, "desiredWidth":I
    iget v6, p0, Lcom/lzy/okgo/convert/BitmapConvert;->maxHeight:I

    iget v7, p0, Lcom/lzy/okgo/convert/BitmapConvert;->maxWidth:I

    iget-object v8, p0, Lcom/lzy/okgo/convert/BitmapConvert;->scaleType:Landroid/widget/ImageView$ScaleType;

    invoke-static {v6, v7, v4, v3, v8}, Lcom/lzy/okgo/convert/BitmapConvert;->getResizedDimension(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v6

    .line 78
    .local v6, "desiredHeight":I
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 79
    invoke-static {v3, v4, v5, v6}, Lcom/lzy/okgo/convert/BitmapConvert;->findBestSampleSize(IIII)I

    move-result v7

    iput v7, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 80
    array-length v7, p1

    invoke-static {p1, v2, v7, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 82
    .local v2, "tempBitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-gt v7, v5, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-le v7, v6, :cond_2

    .line 83
    :cond_1
    invoke-static {v2, v5, v6, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 84
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 86
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    nop

    .end local v3    # "actualWidth":I
    .end local v4    # "actualHeight":I
    .end local v5    # "desiredWidth":I
    .end local v6    # "desiredHeight":I
    move-object v1, v2

    .line 89
    .end local v2    # "tempBitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1
.end method


# virtual methods
.method public convertResponse(Lokhttp3/Response;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 58
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    .line 59
    .local v0, "body":Lokhttp3/ResponseBody;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 60
    :cond_0
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lzy/okgo/convert/BitmapConvert;->parse([B)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic convertResponse(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/convert/BitmapConvert;->convertResponse(Lokhttp3/Response;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

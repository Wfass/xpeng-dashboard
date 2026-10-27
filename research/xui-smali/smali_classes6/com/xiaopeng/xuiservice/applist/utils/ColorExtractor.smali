.class public Lcom/xiaopeng/xuiservice/applist/utils/ColorExtractor;
.super Ljava/lang/Object;
.source "ColorExtractor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findBorderColor(Landroid/graphics/Bitmap;)I
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 28
    const/16 v0, 0x14

    invoke-static {p0, v0}, Lcom/xiaopeng/xuiservice/applist/utils/ColorExtractor;->findBorderColor(Landroid/graphics/Bitmap;I)I

    move-result v0

    return v0
.end method

.method public static findBorderColor(Landroid/graphics/Bitmap;I)I
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "samples"    # I

    .line 32
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 33
    .local v0, "height":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 34
    .local v1, "width":I
    int-to-float v2, v0

    int-to-float v3, v1

    mul-float/2addr v2, v3

    int-to-float v3, p1

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 35
    .local v2, "sampleStride":I
    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 36
    const/4 v2, 0x1

    .line 38
    :cond_0
    const/4 v3, 0x0

    move v4, v3

    .local v4, "y":I
    :goto_0
    if-ge v4, v0, :cond_3

    .line 39
    move v5, v3

    .local v5, "x":I
    :goto_1
    if-ge v5, v1, :cond_2

    .line 40
    invoke-virtual {p0, v5, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    .line 41
    .local v6, "argb":I
    const/16 v7, 0xff

    shr-int/lit8 v8, v6, 0x18

    and-int/2addr v7, v8

    .line 42
    .local v7, "alpha":I
    const/16 v8, 0x80

    if-ge v7, v8, :cond_1

    .line 44
    nop

    .line 39
    .end local v6    # "argb":I
    .end local v7    # "alpha":I
    add-int/2addr v5, v2

    goto :goto_1

    .line 46
    .restart local v6    # "argb":I
    .restart local v7    # "alpha":I
    :cond_1
    return v6

    .line 38
    .end local v5    # "x":I
    .end local v6    # "argb":I
    .end local v7    # "alpha":I
    :cond_2
    add-int/2addr v4, v2

    goto :goto_0

    .line 49
    .end local v4    # "y":I
    :cond_3
    const/high16 v3, -0x1000000

    return v3
.end method

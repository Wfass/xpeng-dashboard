.class public final Lcom/blankj/utilcode/util/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getColor(I)I
    .locals 1
    .param p0, "id"    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 32
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getRandomColor()I
    .locals 1

    .line 194
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/blankj/utilcode/util/ColorUtils;->getRandomColor(Z)I

    move-result v0

    return v0
.end method

.method public static getRandomColor(Z)I
    .locals 5
    .param p0, "supportAlpha"    # Z

    .line 204
    if-eqz p0, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4070000000000000L    # 256.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    goto :goto_0

    :cond_0
    const/high16 v0, -0x1000000

    .line 205
    .local v0, "high":I
    :goto_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4170000000000000L    # 1.6777216E7

    mul-double/2addr v1, v3

    double-to-int v1, v1

    or-int/2addr v1, v0

    return v1
.end method

.method public static int2ArgbString(I)Ljava/lang/String;
    .locals 3
    .param p0, "colorInt"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 178
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "color":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 182
    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 185
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static int2RgbString(I)Ljava/lang/String;
    .locals 3
    .param p0, "colorInt"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 163
    const v0, 0xffffff

    and-int/2addr p0, v0

    .line 164
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "color":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 168
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isLightColor(I)Z
    .locals 6
    .param p0, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 215
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fd322d0e5604189L    # 0.299

    mul-double/2addr v2, v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v4, 0x3fe2c8b439581062L    # 0.587

    mul-double/2addr v4, v0

    add-double/2addr v2, v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v4, 0x3fbd2f1a9fbe76c9L    # 0.114

    mul-double/2addr v4, v0

    add-double/2addr v2, v4

    const-wide v0, 0x405fe00000000000L    # 127.5

    cmpl-double v0, v2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setAlphaComponent(IF)I
    .locals 3
    .param p0, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p1, "alpha"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 56
    const v0, 0xffffff

    and-int/2addr v0, p0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static setAlphaComponent(II)I
    .locals 2
    .param p0, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p1, "alpha"    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .line 44
    const v0, 0xffffff

    and-int/2addr v0, p0

    shl-int/lit8 v1, p1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static setBlueComponent(IF)I
    .locals 3
    .param p0, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p1, "blue"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 128
    and-int/lit16 v0, p0, -0x100

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static setBlueComponent(II)I
    .locals 1
    .param p0, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p1, "blue"    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .line 116
    and-int/lit16 v0, p0, -0x100

    or-int/2addr v0, p1

    return v0
.end method

.method public static setGreenComponent(IF)I
    .locals 3
    .param p0, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p1, "green"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 104
    const v0, -0xff01

    and-int/2addr v0, p0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public static setGreenComponent(II)I
    .locals 2
    .param p0, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p1, "green"    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .line 92
    const v0, -0xff01

    and-int/2addr v0, p0

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public static setRedComponent(IF)I
    .locals 3
    .param p0, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p1, "red"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 80
    const v0, -0xff0001

    and-int/2addr v0, p0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method public static setRedComponent(II)I
    .locals 2
    .param p0, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p1, "red"    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .line 68
    const v0, -0xff0001

    and-int/2addr v0, p0

    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method public static string2Int(Ljava/lang/String;)I
    .locals 2
    .param p0, "colorString"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 152
    if-eqz p0, :cond_0

    .line 153
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 152
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'colorString\' of type String (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

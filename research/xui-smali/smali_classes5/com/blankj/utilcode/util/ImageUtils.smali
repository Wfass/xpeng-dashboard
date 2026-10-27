.class public final Lcom/blankj/utilcode/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/ImageUtils$ImageType;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static addBorder(Landroid/graphics/Bitmap;FIZFZ)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "borderSize"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 1.0
        .end annotation
    .end param
    .param p2, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p3, "isCircle"    # Z
    .param p4, "cornerRadius"    # F
    .param p5, "recycle"    # Z

    .line 997
    const/16 v0, 0x8

    new-array v5, v0, [F

    const/4 v0, 0x0

    aput p4, v5, v0

    const/4 v0, 0x1

    aput p4, v5, v0

    const/4 v0, 0x2

    aput p4, v5, v0

    const/4 v0, 0x3

    aput p4, v5, v0

    const/4 v0, 0x4

    aput p4, v5, v0

    const/4 v0, 0x5

    aput p4, v5, v0

    const/4 v0, 0x6

    aput p4, v5, v0

    const/4 v0, 0x7

    aput p4, v5, v0

    .line 999
    .local v5, "radii":[F
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/blankj/utilcode/util/ImageUtils;->addBorder(Landroid/graphics/Bitmap;FIZ[FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static addBorder(Landroid/graphics/Bitmap;FIZ[FZ)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "borderSize"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 1.0
        .end annotation
    .end param
    .param p2, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p3, "isCircle"    # Z
    .param p4, "radii"    # [F
    .param p5, "recycle"    # Z

    .line 1019
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1020
    :cond_0
    const/4 v0, 0x1

    if-eqz p5, :cond_1

    move-object v1, p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1021
    .local v1, "ret":Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 1022
    .local v2, "width":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 1023
    .local v3, "height":I
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1024
    .local v4, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v0}, Landroid/graphics/Paint;-><init>(I)V

    move-object v0, v5

    .line 1025
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1026
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1027
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1028
    const/high16 v5, 0x40000000    # 2.0f

    if-eqz p3, :cond_2

    .line 1029
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    div-float v7, p1, v5

    sub-float/2addr v6, v7

    .line 1030
    .local v6, "radius":F
    int-to-float v7, v2

    div-float/2addr v7, v5

    int-to-float v8, v3

    div-float/2addr v8, v5

    invoke-virtual {v4, v7, v8, v6, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1031
    .end local v6    # "radius":F
    goto :goto_1

    .line 1032
    :cond_2
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v7, v2

    int-to-float v8, v3

    const/4 v9, 0x0

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1033
    .local v6, "rectF":Landroid/graphics/RectF;
    div-float v5, p1, v5

    .line 1034
    .local v5, "halfBorderSize":F
    invoke-virtual {v6, v5, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 1035
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 1036
    .local v7, "path":Landroid/graphics/Path;
    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v6, p4, v8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 1037
    invoke-virtual {v4, v7, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1039
    .end local v5    # "halfBorderSize":F
    .end local v6    # "rectF":Landroid/graphics/RectF;
    .end local v7    # "path":Landroid/graphics/Path;
    :goto_1
    return-object v1
.end method

.method public static addCircleBorder(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "borderSize"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 1.0
        .end annotation
    .end param
    .param p2, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 961
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ImageUtils;->addBorder(Landroid/graphics/Bitmap;FIZFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static addCircleBorder(Landroid/graphics/Bitmap;FIZ)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "borderSize"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 1.0
        .end annotation
    .end param
    .param p2, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p3, "recycle"    # Z

    .line 977
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ImageUtils;->addBorder(Landroid/graphics/Bitmap;FIZFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static addCornerBorder(Landroid/graphics/Bitmap;FIF)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "borderSize"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 1.0
        .end annotation
    .end param
    .param p2, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p3, "cornerRadius"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    .line 895
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ImageUtils;->addBorder(Landroid/graphics/Bitmap;FIZFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static addCornerBorder(Landroid/graphics/Bitmap;FIFZ)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "borderSize"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 1.0
        .end annotation
    .end param
    .param p2, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p3, "cornerRadius"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param
    .param p4, "recycle"    # Z

    .line 947
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ImageUtils;->addBorder(Landroid/graphics/Bitmap;FIZFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static addCornerBorder(Landroid/graphics/Bitmap;FI[F)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "borderSize"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 1.0
        .end annotation
    .end param
    .param p2, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p3, "radii"    # [F

    .line 911
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ImageUtils;->addBorder(Landroid/graphics/Bitmap;FIZ[FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static addCornerBorder(Landroid/graphics/Bitmap;FI[FZ)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "borderSize"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 1.0
        .end annotation
    .end param
    .param p2, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p3, "radii"    # [F
    .param p4, "recycle"    # Z

    .line 929
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ImageUtils;->addBorder(Landroid/graphics/Bitmap;FIZ[FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static addImageWatermark(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "watermark"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "alpha"    # I

    .line 1157
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ImageUtils;->addImageWatermark(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static addImageWatermark(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "watermark"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "alpha"    # I
    .param p5, "recycle"    # Z

    .line 1177
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1178
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1179
    .local v0, "ret":Landroid/graphics/Bitmap;
    invoke-static {p1}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1180
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    move-object v1, v2

    .line 1181
    .local v1, "paint":Landroid/graphics/Paint;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1182
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1183
    int-to-float v3, p2

    int-to-float v4, p3

    invoke-virtual {v2, p1, v3, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1185
    .end local v1    # "paint":Landroid/graphics/Paint;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    :cond_1
    if-eqz p5, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    if-eq v0, p0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1186
    :cond_2
    return-object v0
.end method

.method public static addReflection(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "reflectionHeight"    # I

    .line 1050
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ImageUtils;->addReflection(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static addReflection(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 21
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "reflectionHeight"    # I
    .param p2, "recycle"    # Z

    move-object/from16 v7, p0

    .line 1064
    invoke-static/range {p0 .. p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    return-object v8

    .line 1065
    :cond_0
    const/4 v9, 0x0

    .line 1066
    .local v9, "REFLECTION_GAP":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 1067
    .local v10, "srcWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 1068
    .local v11, "srcHeight":I
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    move-object v12, v0

    .line 1069
    .local v12, "matrix":Landroid/graphics/Matrix;
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1070
    const/4 v1, 0x0

    sub-int v2, v11, p1

    const/4 v6, 0x0

    move-object v0, v7

    move v3, v10

    move/from16 v4, p1

    move-object v5, v12

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1072
    .local v0, "reflectionBitmap":Landroid/graphics/Bitmap;
    add-int v1, v11, p1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v10, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1073
    .local v1, "ret":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1074
    .local v2, "canvas":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    invoke-virtual {v2, v7, v3, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1075
    add-int/lit8 v4, v11, 0x0

    int-to-float v4, v4

    invoke-virtual {v2, v0, v3, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1076
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 1077
    .local v3, "paint":Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/LinearGradient;

    const/4 v14, 0x0

    int-to-float v5, v11

    const/16 v16, 0x0

    .line 1079
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, 0x0

    int-to-float v6, v6

    const v18, 0x70ffffff

    const v19, 0xffffff

    sget-object v20, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v13, v4

    move v15, v5

    move/from16 v17, v6

    invoke-direct/range {v13 .. v20}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 1083
    .local v4, "shader":Landroid/graphics/LinearGradient;
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1084
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1085
    add-int/lit8 v5, v11, 0x0

    int-to-float v5, v5

    int-to-float v6, v10

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    move-object v13, v2

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v8

    move-object/from16 v18, v3

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1086
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1087
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_2

    if-eq v1, v7, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1088
    :cond_2
    return-object v1
.end method

.method public static addTextWatermark(Landroid/graphics/Bitmap;Ljava/lang/String;FIFFZ)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "textSize"    # F
    .param p3, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "recycle"    # Z

    .line 1130
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1131
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1132
    .local v0, "ret":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    move-object v1, v2

    .line 1133
    .local v1, "paint":Landroid/graphics/Paint;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1134
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1135
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1136
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1137
    .local v3, "bounds":Landroid/graphics/Rect;
    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, p1, v4, v5, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1138
    add-float v4, p5, p2

    invoke-virtual {v2, p1, p4, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1139
    if-eqz p6, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_1

    if-eq v0, p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1140
    :cond_1
    return-object v0

    .line 1130
    .end local v0    # "ret":Landroid/graphics/Bitmap;
    .end local v1    # "paint":Landroid/graphics/Paint;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "bounds":Landroid/graphics/Rect;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static addTextWatermark(Landroid/graphics/Bitmap;Ljava/lang/String;IIFF)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "textSize"    # I
    .param p3, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p4, "x"    # F
    .param p5, "y"    # F

    .line 1108
    int-to-float v2, p2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/blankj/utilcode/util/ImageUtils;->addTextWatermark(Landroid/graphics/Bitmap;Ljava/lang/String;FIFFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 80
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ImageUtils;->bitmap2Bytes(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static bitmap2Bytes(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)[B
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "format"    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "quality"    # I

    .line 91
    if-eqz p1, :cond_1

    .line 92
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 93
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 94
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 95
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 91
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'format\' of type CompressFormat (#1 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static bitmap2Drawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 150
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_0
    return-object v0
.end method

.method public static bytes2Bitmap([B)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "bytes"    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 105
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    .line 107
    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 105
    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public static bytes2Drawable([B)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "bytes"    # [B

    .line 181
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->bytes2Bitmap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ImageUtils;->bitmap2Drawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .line 2336
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 2337
    .local v0, "height":I
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 2338
    .local v1, "width":I
    const/4 v2, 0x1

    .line 2339
    .local v2, "inSampleSize":I
    :goto_0
    if-gt v0, p2, :cond_1

    if-le v1, p1, :cond_0

    goto :goto_1

    .line 2344
    :cond_0
    return v2

    .line 2340
    :cond_1
    :goto_1
    shr-int/lit8 v0, v0, 0x1

    .line 2341
    shr-int/lit8 v1, v1, 0x1

    .line 2342
    shl-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static clip(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 520
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ImageUtils;->clip(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static clip(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "recycle"    # Z

    .line 540
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 541
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 542
    .local v0, "ret":Landroid/graphics/Bitmap;
    if-eqz p5, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    if-eq v0, p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 543
    :cond_1
    return-object v0
.end method

.method public static compressByQuality(Landroid/graphics/Bitmap;I)[B
    .locals 1
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "quality"    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param

    .line 2144
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ImageUtils;->compressByQuality(Landroid/graphics/Bitmap;IZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static compressByQuality(Landroid/graphics/Bitmap;IZ)[B
    .locals 3
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "quality"    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param
    .param p2, "recycle"    # Z

    .line 2158
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2159
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2160
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v1, p1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2161
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 2162
    .local v1, "bytes":[B
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2163
    :cond_1
    return-object v1
.end method

.method public static compressByQuality(Landroid/graphics/Bitmap;J)[B
    .locals 1
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "maxByteSize"    # J

    .line 2174
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ImageUtils;->compressByQuality(Landroid/graphics/Bitmap;JZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static compressByQuality(Landroid/graphics/Bitmap;JZ)[B
    .locals 7
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "maxByteSize"    # J
    .param p3, "recycle"    # Z

    .line 2188
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_0

    goto/16 :goto_5

    .line 2189
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2190
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2192
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-gtz v2, :cond_1

    .line 2193
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .local v1, "bytes":[B
    :goto_0
    goto :goto_4

    .line 2195
    .end local v1    # "bytes":[B
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 2196
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v2, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2197
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-ltz v2, :cond_2

    .line 2198
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_0

    .line 2201
    :cond_2
    const/4 v2, 0x0

    .line 2202
    .local v2, "st":I
    const/16 v3, 0x64

    .line 2203
    .local v3, "end":I
    nop

    .line 2204
    .local v1, "mid":I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 2205
    add-int v4, v2, v3

    div-int/lit8 v1, v4, 0x2

    .line 2206
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 2207
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v4, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2208
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    .line 2209
    .local v4, "len":I
    int-to-long v5, v4

    cmp-long v5, v5, p1

    if-nez v5, :cond_3

    .line 2210
    goto :goto_3

    .line 2211
    :cond_3
    int-to-long v5, v4

    cmp-long v5, v5, p1

    if-lez v5, :cond_4

    .line 2212
    add-int/lit8 v3, v1, -0x1

    goto :goto_2

    .line 2214
    :cond_4
    add-int/lit8 v2, v1, 0x1

    .line 2216
    .end local v4    # "len":I
    :goto_2
    goto :goto_1

    .line 2217
    :cond_5
    :goto_3
    add-int/lit8 v4, v1, -0x1

    if-ne v3, v4, :cond_6

    .line 2218
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 2219
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v4, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2221
    :cond_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 2224
    .end local v2    # "st":I
    .end local v3    # "end":I
    .local v1, "bytes":[B
    :goto_4
    if-eqz p3, :cond_7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2225
    :cond_7
    return-object v1

    .line 2188
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "bytes":[B
    :cond_8
    :goto_5
    new-array v0, v1, [B

    return-object v0
.end method

.method public static compressBySampleSize(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "sampleSize"    # I

    .line 2237
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ImageUtils;->compressBySampleSize(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static compressBySampleSize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .line 2272
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ImageUtils;->compressBySampleSize(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static compressBySampleSize(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "recycle"    # Z

    .line 2288
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2289
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2290
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2291
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2292
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2293
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 2294
    .local v2, "bytes":[B
    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2295
    invoke-static {v0, p1, p2}, Lcom/blankj/utilcode/util/ImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2296
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2297
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2298
    :cond_1
    array-length v3, v2

    invoke-static {v2, v4, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method

.method public static compressBySampleSize(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "sampleSize"    # I
    .param p2, "recycle"    # Z

    .line 2251
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2252
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2253
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2254
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2255
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2256
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 2257
    .local v2, "bytes":[B
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2258
    :cond_1
    const/4 v3, 0x0

    array-length v4, v2

    invoke-static {v2, v3, v4, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method

.method public static compressByScale(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "scaleWidth"    # F
    .param p2, "scaleHeight"    # F

    .line 2116
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ImageUtils;->scale(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static compressByScale(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "scaleWidth"    # F
    .param p2, "scaleHeight"    # F
    .param p3, "recycle"    # Z

    .line 2132
    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/ImageUtils;->scale(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static compressByScale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I

    .line 2086
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ImageUtils;->scale(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static compressByScale(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I
    .param p3, "recycle"    # Z

    .line 2102
    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/ImageUtils;->scale(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static drawColor(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "src"    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 419
    if-eqz p0, :cond_0

    .line 420
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ImageUtils;->drawColor(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 419
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'src\' of type Bitmap (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static drawColor(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "src"    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2, "recycle"    # Z

    .line 431
    if-eqz p0, :cond_2

    .line 434
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 435
    :cond_0
    if-eqz p2, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 436
    .local v0, "ret":Landroid/graphics/Bitmap;
    :goto_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 437
    .local v1, "canvas":Landroid/graphics/Canvas;
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 438
    return-object v0

    .line 431
    .end local v0    # "ret":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'src\' of type Bitmap (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 117
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 118
    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 119
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 120
    .local v0, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 121
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 125
    .end local v0    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    const/4 v1, -0x1

    if-lez v0, :cond_4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_1

    .line 131
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 132
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 133
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    if-eq v3, v1, :cond_3

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_3
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 131
    :goto_0
    invoke-static {v0, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    .line 126
    :cond_4
    :goto_1
    nop

    .line 127
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    if-eq v0, v1, :cond_5

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_2

    :cond_5
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 126
    :goto_2
    const/4 v1, 0x1

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 131
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_3
    nop

    .line 137
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 138
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 139
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 140
    return-object v0
.end method

.method public static drawable2Bytes(Landroid/graphics/drawable/Drawable;)[B
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 160
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ImageUtils;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static drawable2Bytes(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$CompressFormat;I)[B
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p2, "quality"    # I

    .line 171
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/blankj/utilcode/util/ImageUtils;->bitmap2Bytes(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static fastBlur(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "scale"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
            to = 1.0
        .end annotation
    .end param
    .param p2, "radius"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
            to = 25.0
        .end annotation
    .end param

    .line 1260
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lcom/blankj/utilcode/util/ImageUtils;->fastBlur(Landroid/graphics/Bitmap;FFZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static fastBlur(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "scale"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
            to = 1.0
        .end annotation
    .end param
    .param p2, "radius"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
            to = 25.0
        .end annotation
    .end param
    .param p3, "recycle"    # Z

    .line 1280
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/blankj/utilcode/util/ImageUtils;->fastBlur(Landroid/graphics/Bitmap;FFZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static fastBlur(Landroid/graphics/Bitmap;FFZZ)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "scale"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
            to = 1.0
        .end annotation
    .end param
    .param p2, "radius"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
            to = 25.0
        .end annotation
    .end param
    .param p3, "recycle"    # Z
    .param p4, "isReturnScale"    # Z

    .line 1303
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1304
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1305
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 1306
    .local v1, "height":I
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 1307
    .local v2, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v2, p1, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1308
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1309
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    move-object v3, p0

    move-object v8, v2

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1310
    .local v3, "scaleBitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 1311
    .local v4, "paint":Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5}, Landroid/graphics/Canvas;-><init>()V

    .line 1312
    .local v5, "canvas":Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1314
    .local v6, "filter":Landroid/graphics/PorterDuffColorFilter;
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1315
    invoke-virtual {v5, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1316
    const/4 v7, 0x0

    invoke-virtual {v5, v3, v7, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1317
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x11

    if-lt v7, v8, :cond_1

    .line 1318
    invoke-static {v3, p2, p3}, Lcom/blankj/utilcode/util/ImageUtils;->renderScriptBlur(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    .line 1320
    :cond_1
    float-to-int v7, p2

    invoke-static {v3, v7, p3}, Lcom/blankj/utilcode/util/ImageUtils;->stackBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1322
    :goto_0
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, p1, v7

    if-eqz v7, :cond_5

    if-eqz p4, :cond_2

    goto :goto_1

    .line 1326
    :cond_2
    const/4 v7, 0x1

    invoke-static {v3, v0, v1, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1327
    .local v7, "ret":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1328
    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_4

    if-eq v7, p0, :cond_4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1329
    :cond_4
    return-object v7

    .line 1323
    .end local v7    # "ret":Landroid/graphics/Bitmap;
    :cond_5
    :goto_1
    if-eqz p3, :cond_6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_6

    if-eq v3, p0, :cond_6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1324
    :cond_6
    return-object v3
.end method

.method public static getBitmap(I)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "resId"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 347
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 348
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 349
    const/4 v1, 0x0

    return-object v1

    .line 351
    :cond_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 352
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 353
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 352
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 355
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 356
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 357
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 358
    return-object v2
.end method

.method public static getBitmap(III)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "resId"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .line 372
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 373
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 374
    .local v1, "resources":Landroid/content/res/Resources;
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 375
    invoke-static {v1, p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 376
    invoke-static {v0, p1, p2}, Lcom/blankj/utilcode/util/ImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 377
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 378
    invoke-static {v1, p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static getBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 226
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 227
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getBitmap(Ljava/io/File;II)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .line 239
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 240
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 241
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 242
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 243
    invoke-static {v0, p1, p2}, Lcom/blankj/utilcode/util/ImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 244
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 245
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getBitmap(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .line 388
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 389
    :cond_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getBitmap(Ljava/io/FileDescriptor;II)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .line 403
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 404
    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 405
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 406
    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 407
    invoke-static {v1, p1, p2}, Lcom/blankj/utilcode/util/ImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 408
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 409
    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;

    .line 284
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 285
    :cond_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getBitmap(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .line 297
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 298
    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 299
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 300
    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 301
    invoke-static {v1, p1, p2}, Lcom/blankj/utilcode/util/ImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 302
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 303
    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .line 255
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 256
    :cond_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .line 268
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 269
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 270
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 271
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 272
    invoke-static {v0, p1, p2}, Lcom/blankj/utilcode/util/ImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 273
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 274
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getBitmap([BI)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 314
    array-length v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 315
    :cond_0
    array-length v0, p0

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getBitmap([BIII)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I

    .line 331
    array-length v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 332
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 333
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 334
    array-length v1, p0

    invoke-static {p0, p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 335
    invoke-static {v0, p2, p3}, Lcom/blankj/utilcode/util/ImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 336
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 337
    array-length v1, p0

    invoke-static {p0, p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getImageType(Ljava/io/File;)Lcom/blankj/utilcode/util/ImageUtils$ImageType;
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .line 1988
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1989
    :cond_0
    move-object v1, v0

    .line 1991
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 1992
    invoke-static {v1}, Lcom/blankj/utilcode/util/ImageUtils;->getImageType(Ljava/io/InputStream;)Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1993
    .local v2, "type":Lcom/blankj/utilcode/util/ImageUtils$ImageType;
    if-eqz v2, :cond_1

    .line 1994
    nop

    .line 2000
    nop

    .line 2001
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2003
    :catch_0
    move-exception v0

    .line 2004
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 2005
    :goto_0
    nop

    .line 1994
    :goto_1
    return-object v2

    .line 2000
    .end local v2    # "type":Lcom/blankj/utilcode/util/ImageUtils$ImageType;
    :cond_1
    nop

    .line 2001
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 2003
    :catch_1
    move-exception v2

    .line 2004
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 2006
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 2005
    :cond_2
    :goto_2
    goto :goto_3

    .line 1999
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 1996
    :catch_2
    move-exception v2

    .line 1997
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2000
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_2

    .line 2001
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 2007
    :goto_3
    return-object v0

    .line 1999
    :goto_4
    nop

    .line 2000
    if-eqz v1, :cond_3

    .line 2001
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    .line 2003
    :catch_3
    move-exception v2

    .line 2004
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 2005
    :cond_3
    :goto_5
    nop

    .line 2006
    :goto_6
    throw v0
.end method

.method private static getImageType(Ljava/io/InputStream;)Lcom/blankj/utilcode/util/ImageUtils$ImageType;
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;

    .line 2011
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2013
    :cond_0
    const/16 v1, 0xc

    :try_start_0
    new-array v1, v1, [B

    .line 2014
    .local v1, "bytes":[B
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-static {v1}, Lcom/blankj/utilcode/util/ImageUtils;->getImageType([B)Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    nop

    :cond_1
    return-object v0

    .line 2015
    .end local v1    # "bytes":[B
    :catch_0
    move-exception v1

    .line 2016
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 2017
    return-object v0
.end method

.method public static getImageType(Ljava/lang/String;)Lcom/blankj/utilcode/util/ImageUtils$ImageType;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .line 1978
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ImageUtils;->getImageType(Ljava/io/File;)Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    move-result-object v0

    return-object v0
.end method

.method private static getImageType([B)Lcom/blankj/utilcode/util/ImageUtils$ImageType;
    .locals 2
    .param p0, "bytes"    # [B

    .line 2022
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 2023
    .local v0, "type":Ljava/lang/String;
    const-string v1, "FFD8FF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2024
    sget-object v1, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_JPG:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    return-object v1

    .line 2025
    :cond_0
    const-string v1, "89504E47"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2026
    sget-object v1, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_PNG:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    return-object v1

    .line 2027
    :cond_1
    const-string v1, "47494638"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2028
    sget-object v1, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_GIF:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    return-object v1

    .line 2029
    :cond_2
    const-string v1, "49492A00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "4D4D002A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 2031
    :cond_3
    const-string v1, "424D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2032
    sget-object v1, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_BMP:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    return-object v1

    .line 2033
    :cond_4
    const-string v1, "52494646"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "57454250"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2034
    sget-object v1, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_WEBP:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    return-object v1

    .line 2035
    :cond_5
    const-string v1, "00000100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "00000200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    .line 2038
    :cond_6
    sget-object v1, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_UNKNOWN:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    return-object v1

    .line 2036
    :cond_7
    :goto_0
    sget-object v1, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_ICO:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    return-object v1

    .line 2030
    :cond_8
    :goto_1
    sget-object v1, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_TIFF:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    return-object v1
.end method

.method public static getRotateDegree(Ljava/lang/String;)I
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .line 665
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 666
    .local v0, "exifInterface":Landroid/media/ExifInterface;
    const-string v1, "Orientation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    .local v1, "orientation":I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 678
    const/4 v2, 0x0

    return v2

    .line 676
    :cond_0
    const/16 v2, 0x10e

    return v2

    .line 672
    :cond_1
    const/16 v2, 0x5a

    return v2

    .line 674
    :cond_2
    const/16 v2, 0xb4

    return v2

    .line 680
    .end local v0    # "exifInterface":Landroid/media/ExifInterface;
    .end local v1    # "orientation":I
    :catch_0
    move-exception v0

    .line 681
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 682
    const/4 v1, -0x1

    return v1
.end method

.method public static getSize(Ljava/io/File;)[I
    .locals 5
    .param p0, "file"    # Ljava/io/File;

    .line 2318
    const/4 v0, 0x2

    if-nez p0, :cond_0

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    .line 2319
    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2320
    .local v1, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2321
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2322
    new-array v0, v0, [I

    const/4 v3, 0x0

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v4, v0, v3

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v3, v0, v2

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static getSize(Ljava/lang/String;)[I
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .line 2308
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ImageUtils;->getSize(Ljava/io/File;)[I

    move-result-object v0

    return-object v0
.end method

.method private static isBMP([B)Z
    .locals 4
    .param p0, "b"    # [B

    .line 2063
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    aget-byte v0, p0, v2

    const/16 v3, 0x42

    if-ne v0, v3, :cond_0

    aget-byte v0, p0, v1

    const/16 v3, 0x4d

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private static isEmptyBitmap(Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p0, "src"    # Landroid/graphics/Bitmap;

    .line 2068
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isGIF([B)Z
    .locals 5
    .param p0, "b"    # [B

    .line 2048
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x6

    if-lt v0, v3, :cond_1

    aget-byte v0, p0, v2

    const/16 v3, 0x47

    if-ne v0, v3, :cond_1

    aget-byte v0, p0, v1

    const/16 v3, 0x49

    if-ne v0, v3, :cond_1

    const/4 v0, 0x2

    aget-byte v0, p0, v0

    const/16 v3, 0x46

    if-ne v0, v3, :cond_1

    const/4 v0, 0x3

    aget-byte v0, p0, v0

    const/16 v3, 0x38

    if-ne v0, v3, :cond_1

    const/4 v0, 0x4

    aget-byte v3, p0, v0

    const/16 v4, 0x37

    if-eq v3, v4, :cond_0

    aget-byte v0, p0, v0

    const/16 v3, 0x39

    if-ne v0, v3, :cond_1

    :cond_0
    const/4 v0, 0x5

    aget-byte v0, p0, v0

    const/16 v3, 0x61

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method public static isImage(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 1948
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1951
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ImageUtils;->isImage(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1949
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isImage(Ljava/lang/String;)Z
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;

    .line 1962
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1963
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1964
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1965
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v3, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v3, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0

    .line 1966
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v1

    .line 1967
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method private static isJPEG([B)Z
    .locals 4
    .param p0, "b"    # [B

    .line 2043
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    aget-byte v0, p0, v2

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    aget-byte v0, p0, v1

    const/16 v3, -0x28

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private static isPNG([B)Z
    .locals 5
    .param p0, "b"    # [B

    .line 2055
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-lt v0, v3, :cond_0

    aget-byte v0, p0, v2

    const/16 v3, -0x77

    if-ne v0, v3, :cond_0

    aget-byte v0, p0, v1

    const/16 v3, 0x50

    if-ne v0, v3, :cond_0

    const/4 v0, 0x2

    aget-byte v0, p0, v0

    const/16 v3, 0x4e

    if-ne v0, v3, :cond_0

    const/4 v0, 0x3

    aget-byte v0, p0, v0

    const/16 v3, 0x47

    if-ne v0, v3, :cond_0

    const/4 v0, 0x4

    aget-byte v0, p0, v0

    const/16 v3, 0xd

    if-ne v0, v3, :cond_0

    const/4 v0, 0x5

    aget-byte v0, p0, v0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_0

    const/4 v0, 0x6

    aget-byte v0, p0, v0

    const/16 v4, 0x1a

    if-ne v0, v4, :cond_0

    const/4 v0, 0x7

    aget-byte v0, p0, v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public static renderScriptBlur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
            to = 25.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x11
    .end annotation

    .line 1344
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ImageUtils;->renderScriptBlur(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static renderScriptBlur(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
            to = 25.0
        .end annotation
    .end param
    .param p2, "recycle"    # Z
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x11
    .end annotation

    .line 1361
    const/4 v0, 0x0

    .line 1362
    .local v0, "rs":Landroid/renderscript/RenderScript;
    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move-object v2, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1364
    .local v2, "ret":Landroid/graphics/Bitmap;
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v3

    move-object v0, v3

    .line 1365
    new-instance v3, Landroid/renderscript/RenderScript$RSMessageHandler;

    invoke-direct {v3}, Landroid/renderscript/RenderScript$RSMessageHandler;-><init>()V

    invoke-virtual {v0, v3}, Landroid/renderscript/RenderScript;->setMessageHandler(Landroid/renderscript/RenderScript$RSMessageHandler;)V

    .line 1366
    sget-object v3, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    invoke-static {v0, v2, v3, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 1370
    .local v1, "input":Landroid/renderscript/Allocation;
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v3

    .line 1371
    .local v3, "output":Landroid/renderscript/Allocation;
    invoke-static {v0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v4

    .line 1372
    .local v4, "blurScript":Landroid/renderscript/ScriptIntrinsicBlur;
    invoke-virtual {v4, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 1373
    invoke-virtual {v4, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 1374
    invoke-virtual {v4, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 1375
    invoke-virtual {v3, v2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1377
    .end local v1    # "input":Landroid/renderscript/Allocation;
    .end local v3    # "output":Landroid/renderscript/Allocation;
    .end local v4    # "blurScript":Landroid/renderscript/ScriptIntrinsicBlur;
    if-eqz v0, :cond_1

    .line 1378
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 1381
    :cond_1
    return-object v2

    .line 1377
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 1378
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 1380
    :cond_2
    throw v1
.end method

.method public static rotate(Landroid/graphics/Bitmap;IFF)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # I
    .param p2, "px"    # F
    .param p3, "py"    # F

    .line 630
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/blankj/utilcode/util/ImageUtils;->rotate(Landroid/graphics/Bitmap;IFFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static rotate(Landroid/graphics/Bitmap;IFFZ)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # I
    .param p2, "px"    # F
    .param p3, "py"    # F
    .param p4, "recycle"    # Z

    .line 648
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 649
    :cond_0
    if-nez p1, :cond_1

    return-object p0

    .line 650
    :cond_1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 651
    .local v0, "matrix":Landroid/graphics/Matrix;
    int-to-float v1, p1

    invoke-virtual {v0, v1, p2, p3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 652
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p0

    move-object v6, v0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 653
    .local v1, "ret":Landroid/graphics/Bitmap;
    if-eqz p4, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    if-eq v1, p0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 654
    :cond_2
    return-object v1
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;)Z
    .locals 2
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "format"    # Landroid/graphics/Bitmap$CompressFormat;

    .line 1623
    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/blankj/utilcode/util/ImageUtils;->save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;IZ)Z

    move-result v0

    return v0
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;I)Z
    .locals 1
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p3, "quality"    # I

    .line 1689
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/blankj/utilcode/util/ImageUtils;->save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;IZ)Z

    move-result v0

    return v0
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;IZ)Z
    .locals 4
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p3, "quality"    # I
    .param p4, "recycle"    # Z

    .line 1731
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1732
    const-string v0, "ImageUtils"

    const-string v2, "bitmap is empty."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    return v1

    .line 1735
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1736
    const-string v0, "ImageUtils"

    const-string v2, "bitmap is recycled."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    return v1

    .line 1739
    :cond_1
    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->createFileByDeleteOldFile(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1740
    const-string v0, "ImageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create or delete file <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "> failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    return v1

    .line 1743
    :cond_2
    const/4 v0, 0x0

    .line 1744
    .local v0, "os":Ljava/io/OutputStream;
    nop

    .line 1746
    .local v1, "ret":Z
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v2

    .line 1747
    invoke-virtual {p0, p2, p3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v2

    move v1, v2

    .line 1748
    if-eqz p4, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1753
    :cond_3
    nop

    .line 1754
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1756
    :catch_0
    move-exception v2

    .line 1757
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1759
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 1758
    :cond_4
    :goto_0
    goto :goto_1

    .line 1752
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 1749
    :catch_1
    move-exception v2

    .line 1750
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1753
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_4

    .line 1754
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1760
    :goto_1
    return v1

    .line 1752
    :goto_2
    nop

    .line 1753
    if-eqz v0, :cond_5

    .line 1754
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 1756
    :catch_2
    move-exception v3

    .line 1757
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 1758
    :cond_5
    :goto_3
    nop

    .line 1759
    :goto_4
    throw v2
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;Z)Z
    .locals 1
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p3, "recycle"    # Z

    .line 1655
    const/16 v0, 0x64

    invoke-static {p0, p1, p2, v0, p3}, Lcom/blankj/utilcode/util/ImageUtils;->save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;IZ)Z

    move-result v0

    return v0
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Z
    .locals 2
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "format"    # Landroid/graphics/Bitmap$CompressFormat;

    .line 1611
    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/blankj/utilcode/util/ImageUtils;->save(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;IZ)Z

    move-result v0

    return v0
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;I)Z
    .locals 2
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p3, "quality"    # I

    .line 1674
    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, p2, p3, v1}, Lcom/blankj/utilcode/util/ImageUtils;->save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;IZ)Z

    move-result v0

    return v0
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;IZ)Z
    .locals 1
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p3, "quality"    # I
    .param p4, "recycle"    # Z

    .line 1710
    invoke-static {p1}, Lcom/blankj/utilcode/util/UtilsBridge;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0, p2, p3, p4}, Lcom/blankj/utilcode/util/ImageUtils;->save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;IZ)Z

    move-result v0

    return v0
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Z)Z
    .locals 1
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p3, "recycle"    # Z

    .line 1639
    const/16 v0, 0x64

    invoke-static {p0, p1, p2, v0, p3}, Lcom/blankj/utilcode/util/ImageUtils;->save(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;IZ)Z

    move-result v0

    return v0
.end method

.method public static save2Album(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)Ljava/io/File;
    .locals 3
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1771
    const-string v0, ""

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-static {p0, v0, p1, v1, v2}, Lcom/blankj/utilcode/util/ImageUtils;->save2Album(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;IZ)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static save2Album(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Ljava/io/File;
    .locals 2
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p2, "quality"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1800
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Lcom/blankj/utilcode/util/ImageUtils;->save2Album(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;IZ)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static save2Album(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;IZ)Ljava/io/File;
    .locals 1
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p2, "quality"    # I
    .param p3, "recycle"    # Z
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1818
    const-string v0, ""

    invoke-static {p0, v0, p1, p2, p3}, Lcom/blankj/utilcode/util/ImageUtils;->save2Album(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;IZ)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static save2Album(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Z)Ljava/io/File;
    .locals 2
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p2, "recycle"    # Z
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1784
    const-string v0, ""

    const/16 v1, 0x64

    invoke-static {p0, v0, p1, v1, p2}, Lcom/blankj/utilcode/util/ImageUtils;->save2Album(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;IZ)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static save2Album(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Ljava/io/File;
    .locals 2
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "dirName"    # Ljava/lang/String;
    .param p2, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1831
    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/blankj/utilcode/util/ImageUtils;->save2Album(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;IZ)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static save2Album(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;I)Ljava/io/File;
    .locals 1
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "dirName"    # Ljava/lang/String;
    .param p2, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p3, "quality"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1864
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/blankj/utilcode/util/ImageUtils;->save2Album(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;IZ)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static save2Album(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;IZ)Ljava/io/File;
    .locals 10
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "dirName"    # Ljava/lang/String;
    .param p2, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p3, "quality"    # I
    .param p4, "recycle"    # Z
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1884
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 1885
    .local v0, "safeDirName":Ljava/lang/String;
    :goto_0
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, p2}, Landroid/graphics/Bitmap$CompressFormat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "JPG"

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap$CompressFormat;->name()Ljava/lang/String;

    move-result-object v1

    .line 1886
    .local v1, "suffix":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1887
    .local v2, "fileName":Ljava/lang/String;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    const/4 v5, 0x0

    if-ge v3, v4, :cond_4

    .line 1888
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/blankj/utilcode/util/UtilsBridge;->isGranted([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1889
    const-string v3, "ImageUtils"

    const-string v4, "save to album need storage permission"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    return-object v5

    .line 1892
    :cond_2
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 1893
    .local v3, "picDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1894
    .local v4, "destFile":Ljava/io/File;
    invoke-static {p0, v4, p2, p3, p4}, Lcom/blankj/utilcode/util/ImageUtils;->save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;IZ)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1895
    return-object v5

    .line 1897
    :cond_3
    invoke-static {v4}, Lcom/blankj/utilcode/util/UtilsBridge;->notifySystemToScan(Ljava/io/File;)V

    .line 1898
    return-object v4

    .line 1900
    .end local v3    # "picDir":Ljava/io/File;
    .end local v4    # "destFile":Ljava/io/File;
    :cond_4
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1901
    .local v3, "contentValues":Landroid/content/ContentValues;
    const-string v4, "_display_name"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1902
    const-string v4, "mime_type"

    const-string v6, "image/*"

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1904
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v6, "mounted"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1905
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .local v4, "contentUri":Landroid/net/Uri;
    goto :goto_2

    .line 1907
    .end local v4    # "contentUri":Landroid/net/Uri;
    :cond_5
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1909
    .restart local v4    # "contentUri":Landroid/net/Uri;
    :goto_2
    const-string v6, "relative_path"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1910
    const-string v6, "is_pending"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1911
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 1912
    .local v6, "uri":Landroid/net/Uri;
    if-nez v6, :cond_6

    .line 1913
    return-object v5

    .line 1915
    :cond_6
    move-object v7, v5

    .line 1917
    .local v7, "os":Ljava/io/OutputStream;
    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v8

    move-object v7, v8

    .line 1918
    invoke-virtual {p0, p2, p3, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1920
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 1921
    const-string v8, "is_pending"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1922
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v6, v3, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1924
    invoke-static {v6}, Lcom/blankj/utilcode/util/UtilsBridge;->uri2File(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1931
    if-eqz v7, :cond_7

    .line 1932
    :try_start_1
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1934
    :catch_0
    move-exception v5

    .line 1935
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 1936
    :cond_7
    :goto_3
    nop

    .line 1924
    :goto_4
    return-object v8

    .line 1930
    :catchall_0
    move-exception v5

    goto :goto_7

    .line 1925
    :catch_1
    move-exception v8

    .line 1926
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v6, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1927
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1928
    nop

    .line 1931
    if-eqz v7, :cond_8

    .line 1932
    :try_start_3
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    .line 1934
    :catch_2
    move-exception v9

    .line 1935
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .end local v9    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 1936
    :cond_8
    :goto_5
    nop

    .line 1928
    :goto_6
    return-object v5

    .line 1930
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_7
    nop

    .line 1931
    if-eqz v7, :cond_9

    .line 1932
    :try_start_4
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_8

    .line 1934
    :catch_3
    move-exception v8

    .line 1935
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .end local v8    # "e":Ljava/io/IOException;
    goto :goto_9

    .line 1936
    :cond_9
    :goto_8
    nop

    .line 1937
    :goto_9
    throw v5
.end method

.method public static save2Album(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Z)Ljava/io/File;
    .locals 1
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "dirName"    # Ljava/lang/String;
    .param p2, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p3, "recycle"    # Z
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1846
    const/16 v0, 0x64

    invoke-static {p0, p1, p2, v0, p3}, Lcom/blankj/utilcode/util/ImageUtils;->save2Album(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;IZ)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static scale(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "scaleWidth"    # F
    .param p2, "scaleHeight"    # F

    .line 481
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ImageUtils;->scale(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static scale(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "scaleWidth"    # F
    .param p2, "scaleHeight"    # F
    .param p3, "recycle"    # Z

    .line 497
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 498
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 499
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 500
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p0

    move-object v6, v0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 501
    .local v1, "ret":Landroid/graphics/Bitmap;
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    if-eq v1, p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 502
    :cond_1
    return-object v1
.end method

.method public static scale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I

    .line 450
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ImageUtils;->scale(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static scale(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I
    .param p3, "recycle"    # Z

    .line 466
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 467
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 468
    .local v0, "ret":Landroid/graphics/Bitmap;
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    if-eq v0, p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 469
    :cond_1
    return-object v0
.end method

.method public static skew(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "kx"    # F
    .param p2, "ky"    # F

    .line 555
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ImageUtils;->skew(Landroid/graphics/Bitmap;FFFFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static skew(Landroid/graphics/Bitmap;FFFF)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "kx"    # F
    .param p2, "ky"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 589
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ImageUtils;->skew(Landroid/graphics/Bitmap;FFFFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static skew(Landroid/graphics/Bitmap;FFFFZ)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "kx"    # F
    .param p2, "ky"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F
    .param p5, "recycle"    # Z

    .line 609
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 610
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 611
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->setSkew(FFFF)V

    .line 612
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p0

    move-object v6, v0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 613
    .local v1, "ret":Landroid/graphics/Bitmap;
    if-eqz p5, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    if-eq v1, p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 614
    :cond_1
    return-object v1
.end method

.method public static skew(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "kx"    # F
    .param p2, "ky"    # F
    .param p3, "recycle"    # Z

    .line 571
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ImageUtils;->skew(Landroid/graphics/Bitmap;FFFFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static stackBlur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # I

    .line 1392
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ImageUtils;->stackBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static stackBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 48
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # I
    .param p2, "recycle"    # Z

    .line 1404
    const/4 v0, 0x1

    if-eqz p2, :cond_0

    move-object/from16 v2, p0

    move-object v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    move-object/from16 v3, p0

    invoke-virtual {v3, v2, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1405
    .local v2, "ret":Landroid/graphics/Bitmap;
    :goto_0
    move/from16 v4, p1

    if-ge v4, v0, :cond_1

    .line 1406
    const/4 v4, 0x1

    .line 1408
    .end local p1    # "radius":I
    .local v12, "radius":I
    :cond_1
    move v12, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 1409
    .local v13, "w":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 1411
    .local v14, "h":I
    mul-int v4, v13, v14

    new-array v15, v4, [I

    .line 1412
    .local v15, "pix":[I
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    move-object v5, v15

    move v7, v13

    move v10, v13

    move v11, v14

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1414
    add-int/lit8 v11, v13, -0x1

    .line 1415
    .local v11, "wm":I
    add-int/lit8 v10, v14, -0x1

    .line 1416
    .local v10, "hm":I
    mul-int v9, v13, v14

    .line 1417
    .local v9, "wh":I
    add-int v4, v12, v12

    add-int/lit8 v8, v4, 0x1

    .line 1419
    .local v8, "div":I
    new-array v7, v9, [I

    .line 1420
    .local v7, "r":[I
    new-array v6, v9, [I

    .line 1421
    .local v6, "g":[I
    new-array v5, v9, [I

    .line 1423
    .local v5, "b":[I
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v4, v4, [I

    .line 1425
    .local v4, "vmin":[I
    add-int/lit8 v16, v8, 0x1

    shr-int/lit8 v16, v16, 0x1

    .line 1426
    .local v16, "divsum":I
    mul-int v16, v16, v16

    .line 1427
    const/16 v17, 0x100

    mul-int v0, v17, v16

    new-array v0, v0, [I

    .line 1428
    .local v0, "dv":[I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1
    move/from16 v20, v19

    .end local v19    # "i":I
    .local v20, "i":I
    mul-int v1, v17, v16

    move/from16 v3, v20

    if-ge v3, v1, :cond_2

    .line 1429
    .end local v20    # "i":I
    .local v3, "i":I
    div-int v20, v3, v16

    aput v20, v0, v3

    .line 1428
    add-int/lit8 v19, v3, 0x1

    .end local v3    # "i":I
    .restart local v19    # "i":I
    move-object/from16 v3, p0

    goto :goto_1

    .line 1432
    .end local v19    # "i":I
    .restart local v3    # "i":I
    :cond_2
    const/4 v1, 0x0

    move/from16 v17, v1

    .local v17, "yi":I
    move/from16 v19, v1

    .line 1434
    .local v19, "yw":I
    const/4 v1, 0x3

    filled-new-array {v8, v1}, [I

    move-result-object v1

    move/from16 v22, v3

    const-class v3, I

    .end local v3    # "i":I
    .local v22, "i":I
    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 1439
    .local v1, "stack":[[I
    add-int/lit8 v3, v12, 0x1

    .line 1443
    .local v3, "r1":I
    move/from16 v20, v19

    move/from16 v19, v17

    const/16 v17, 0x0

    .local v17, "y":I
    .local v19, "yi":I
    .local v20, "yw":I
    :goto_2
    move/from16 v23, v17

    .end local v17    # "y":I
    .local v23, "y":I
    const/16 v17, 0x2

    move/from16 v24, v9

    move/from16 v9, v23

    if-ge v9, v14, :cond_7

    .line 1444
    .end local v23    # "y":I
    .local v9, "y":I
    .local v24, "wh":I
    const/16 v25, 0x0

    move/from16 v21, v25

    .local v21, "bsum":I
    move/from16 v23, v25

    .local v23, "gsum":I
    move/from16 v26, v25

    .local v26, "rsum":I
    move/from16 v27, v25

    .local v27, "boutsum":I
    move/from16 v28, v25

    .local v28, "goutsum":I
    move/from16 v29, v25

    .local v29, "routsum":I
    move/from16 v30, v25

    .local v30, "binsum":I
    move/from16 v31, v25

    .local v31, "ginsum":I
    move/from16 v32, v25

    .line 1445
    .local v32, "rinsum":I
    move-object/from16 v33, v2

    neg-int v2, v12

    .end local v22    # "i":I
    .local v2, "i":I
    .local v33, "ret":Landroid/graphics/Bitmap;
    move/from16 v22, v21

    .end local v21    # "bsum":I
    .local v22, "bsum":I
    :goto_3
    const v34, 0xff00

    const/high16 v35, 0xff0000

    if-gt v2, v12, :cond_4

    .line 1446
    move/from16 v37, v10

    move/from16 v36, v14

    move/from16 v14, v25

    invoke-static {v2, v14}, Ljava/lang/Math;->max(II)I

    move-result v10

    .end local v10    # "hm":I
    .end local v14    # "h":I
    .local v36, "h":I
    .local v37, "hm":I
    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int v10, v19, v10

    aget v10, v15, v10

    .line 1447
    .local v10, "p":I
    add-int v21, v2, v12

    aget-object v25, v1, v21

    .line 1448
    .local v25, "sir":[I
    and-int v21, v10, v35

    shr-int/lit8 v21, v21, 0x10

    aput v21, v25, v14

    .line 1449
    and-int v14, v10, v34

    shr-int/lit8 v14, v14, 0x8

    const/16 v18, 0x1

    aput v14, v25, v18

    .line 1450
    and-int/lit16 v14, v10, 0xff

    aput v14, v25, v17

    .line 1451
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v14

    sub-int v14, v3, v14

    .line 1452
    .local v14, "rbs":I
    const/16 v21, 0x0

    aget v34, v25, v21

    mul-int v34, v34, v14

    add-int v26, v26, v34

    .line 1453
    const/16 v18, 0x1

    aget v34, v25, v18

    mul-int v34, v34, v14

    add-int v23, v23, v34

    .line 1454
    aget v34, v25, v17

    mul-int v34, v34, v14

    add-int v22, v22, v34

    .line 1455
    if-lez v2, :cond_3

    .line 1456
    const/16 v21, 0x0

    aget v34, v25, v21

    add-int v32, v32, v34

    .line 1457
    const/16 v18, 0x1

    aget v34, v25, v18

    add-int v31, v31, v34

    .line 1458
    aget v34, v25, v17

    add-int v30, v30, v34

    goto :goto_4

    .line 1460
    :cond_3
    const/16 v18, 0x1

    const/16 v21, 0x0

    aget v34, v25, v21

    add-int v29, v29, v34

    .line 1461
    aget v34, v25, v18

    add-int v28, v28, v34

    .line 1462
    aget v34, v25, v17

    add-int v27, v27, v34

    .line 1445
    :goto_4
    add-int/lit8 v2, v2, 0x1

    move/from16 v14, v36

    move/from16 v10, v37

    const/16 v25, 0x0

    goto :goto_3

    .line 1465
    .end local v25    # "sir":[I
    .end local v36    # "h":I
    .end local v37    # "hm":I
    .local v10, "hm":I
    .local v14, "h":I
    :cond_4
    move/from16 v37, v10

    move/from16 v36, v14

    .end local v10    # "hm":I
    .end local v14    # "h":I
    .restart local v36    # "h":I
    .restart local v37    # "hm":I
    move v10, v12

    .line 1467
    .local v10, "stackpointer":I
    move v14, v10

    const/4 v10, 0x0

    .local v10, "x":I
    .local v14, "stackpointer":I
    :goto_5
    if-ge v10, v13, :cond_6

    .line 1469
    aget v25, v0, v26

    aput v25, v7, v19

    .line 1470
    aget v25, v0, v23

    aput v25, v6, v19

    .line 1471
    aget v25, v0, v22

    aput v25, v5, v19

    .line 1473
    sub-int v26, v26, v29

    .line 1474
    sub-int v23, v23, v28

    .line 1475
    sub-int v22, v22, v27

    .line 1477
    sub-int v25, v14, v12

    add-int v25, v25, v8

    .line 1478
    .local v25, "stackstart":I
    rem-int v38, v25, v8

    aget-object v38, v1, v38

    .line 1480
    .local v38, "sir":[I
    const/16 v21, 0x0

    aget v39, v38, v21

    sub-int v29, v29, v39

    .line 1481
    const/16 v18, 0x1

    aget v39, v38, v18

    sub-int v28, v28, v39

    .line 1482
    aget v39, v38, v17

    sub-int v27, v27, v39

    .line 1484
    if-nez v9, :cond_5

    .line 1485
    add-int v39, v10, v12

    move/from16 v40, v2

    add-int/lit8 v2, v39, 0x1

    .end local v2    # "i":I
    .local v40, "i":I
    invoke-static {v2, v11}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v4, v10

    goto :goto_6

    .line 1487
    .end local v40    # "i":I
    .restart local v2    # "i":I
    :cond_5
    move/from16 v40, v2

    .end local v2    # "i":I
    .restart local v40    # "i":I
    :goto_6
    aget v2, v4, v10

    add-int v2, v20, v2

    aget v2, v15, v2

    .line 1489
    .local v2, "p":I
    and-int v39, v2, v35

    shr-int/lit8 v39, v39, 0x10

    const/16 v21, 0x0

    aput v39, v38, v21

    .line 1490
    and-int v39, v2, v34

    shr-int/lit8 v39, v39, 0x8

    const/16 v18, 0x1

    aput v39, v38, v18

    .line 1491
    move/from16 v41, v11

    and-int/lit16 v11, v2, 0xff

    .end local v11    # "wm":I
    .local v41, "wm":I
    aput v11, v38, v17

    .line 1493
    aget v11, v38, v21

    add-int v32, v32, v11

    .line 1494
    aget v11, v38, v18

    add-int v31, v31, v11

    .line 1495
    aget v11, v38, v17

    add-int v30, v30, v11

    .line 1497
    add-int v26, v26, v32

    .line 1498
    add-int v23, v23, v31

    .line 1499
    add-int v22, v22, v30

    .line 1501
    add-int/lit8 v11, v14, 0x1

    rem-int v14, v11, v8

    .line 1502
    rem-int v11, v14, v8

    aget-object v11, v1, v11

    .line 1504
    .end local v38    # "sir":[I
    .local v11, "sir":[I
    const/16 v21, 0x0

    aget v38, v11, v21

    add-int v29, v29, v38

    .line 1505
    const/16 v18, 0x1

    aget v38, v11, v18

    add-int v28, v28, v38

    .line 1506
    aget v38, v11, v17

    add-int v27, v27, v38

    .line 1508
    aget v38, v11, v21

    sub-int v32, v32, v38

    .line 1509
    aget v38, v11, v18

    sub-int v31, v31, v38

    .line 1510
    aget v38, v11, v17

    sub-int v30, v30, v38

    .line 1512
    add-int/lit8 v19, v19, 0x1

    .line 1467
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v40

    move/from16 v11, v41

    goto/16 :goto_5

    .line 1514
    .end local v25    # "stackstart":I
    .end local v40    # "i":I
    .end local v41    # "wm":I
    .local v2, "i":I
    .local v11, "wm":I
    :cond_6
    move/from16 v40, v2

    move/from16 v41, v11

    .end local v2    # "i":I
    .end local v11    # "wm":I
    .restart local v40    # "i":I
    .restart local v41    # "wm":I
    add-int v20, v20, v13

    .line 1443
    add-int/lit8 v17, v9, 0x1

    .end local v9    # "y":I
    .restart local v17    # "y":I
    move/from16 v9, v24

    move-object/from16 v2, v33

    move/from16 v14, v36

    move/from16 v10, v37

    move/from16 v22, v40

    goto/16 :goto_2

    .line 1516
    .end local v17    # "y":I
    .end local v23    # "gsum":I
    .end local v26    # "rsum":I
    .end local v27    # "boutsum":I
    .end local v28    # "goutsum":I
    .end local v29    # "routsum":I
    .end local v30    # "binsum":I
    .end local v31    # "ginsum":I
    .end local v32    # "rinsum":I
    .end local v33    # "ret":Landroid/graphics/Bitmap;
    .end local v36    # "h":I
    .end local v37    # "hm":I
    .end local v40    # "i":I
    .end local v41    # "wm":I
    .local v2, "ret":Landroid/graphics/Bitmap;
    .restart local v9    # "y":I
    .local v10, "hm":I
    .restart local v11    # "wm":I
    .local v14, "h":I
    .local v22, "i":I
    :cond_7
    move-object/from16 v33, v2

    move/from16 v37, v10

    move/from16 v41, v11

    move/from16 v36, v14

    .end local v2    # "ret":Landroid/graphics/Bitmap;
    .end local v10    # "hm":I
    .end local v11    # "wm":I
    .end local v14    # "h":I
    .restart local v33    # "ret":Landroid/graphics/Bitmap;
    .restart local v36    # "h":I
    .restart local v37    # "hm":I
    .restart local v41    # "wm":I
    move v14, v9

    const/4 v2, 0x0

    .end local v9    # "y":I
    .local v2, "x":I
    .local v14, "y":I
    :goto_7
    if-ge v2, v13, :cond_d

    .line 1517
    const/4 v9, 0x0

    move v10, v9

    .local v10, "bsum":I
    move v11, v9

    .local v11, "gsum":I
    move/from16 v21, v9

    .local v21, "rsum":I
    move/from16 v23, v9

    .local v23, "boutsum":I
    move/from16 v25, v9

    .local v25, "goutsum":I
    move/from16 v26, v9

    .local v26, "routsum":I
    move/from16 v27, v9

    .local v27, "binsum":I
    move/from16 v28, v9

    .local v28, "ginsum":I
    move/from16 v29, v9

    .line 1518
    .local v29, "rinsum":I
    neg-int v9, v12

    mul-int/2addr v9, v13

    .line 1519
    .local v9, "yp":I
    move/from16 v42, v9

    neg-int v9, v12

    .end local v22    # "i":I
    .local v9, "i":I
    .local v42, "yp":I
    move/from16 v22, v11

    move/from16 v11, v21

    move/from16 v30, v23

    move/from16 v23, v10

    move/from16 v10, v42

    .end local v21    # "rsum":I
    .end local v42    # "yp":I
    .local v10, "yp":I
    .local v11, "rsum":I
    .local v22, "gsum":I
    .local v23, "bsum":I
    .local v30, "boutsum":I
    :goto_8
    if-gt v9, v12, :cond_a

    .line 1520
    move/from16 v43, v14

    const/4 v14, 0x0

    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    move-result v21

    .end local v14    # "y":I
    .local v43, "y":I
    add-int v19, v21, v2

    .line 1522
    add-int v21, v9, v12

    aget-object v31, v1, v21

    .line 1524
    .local v31, "sir":[I
    aget v21, v7, v19

    aput v21, v31, v14

    .line 1525
    aget v14, v6, v19

    const/16 v18, 0x1

    aput v14, v31, v18

    .line 1526
    aget v14, v5, v19

    aput v14, v31, v17

    .line 1528
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v14

    sub-int v14, v3, v14

    .line 1530
    .local v14, "rbs":I
    aget v32, v7, v19

    mul-int v32, v32, v14

    add-int v11, v11, v32

    .line 1531
    aget v32, v6, v19

    mul-int v32, v32, v14

    add-int v22, v22, v32

    .line 1532
    aget v32, v5, v19

    mul-int v32, v32, v14

    add-int v23, v23, v32

    .line 1534
    if-lez v9, :cond_8

    .line 1535
    const/16 v21, 0x0

    aget v32, v31, v21

    add-int v29, v29, v32

    .line 1536
    const/16 v18, 0x1

    aget v32, v31, v18

    add-int v28, v28, v32

    .line 1537
    aget v32, v31, v17

    add-int v27, v27, v32

    goto :goto_9

    .line 1539
    :cond_8
    const/16 v18, 0x1

    const/16 v21, 0x0

    aget v32, v31, v21

    add-int v26, v26, v32

    .line 1540
    aget v32, v31, v18

    add-int v25, v25, v32

    .line 1541
    aget v32, v31, v17

    add-int v30, v30, v32

    .line 1544
    :goto_9
    move/from16 v44, v11

    move/from16 v11, v37

    if-ge v9, v11, :cond_9

    .line 1545
    .end local v37    # "hm":I
    .local v11, "hm":I
    .local v44, "rsum":I
    add-int/2addr v10, v13

    .line 1519
    :cond_9
    add-int/lit8 v9, v9, 0x1

    move/from16 v37, v11

    move/from16 v14, v43

    move/from16 v11, v44

    goto :goto_8

    .line 1548
    .end local v31    # "sir":[I
    .end local v43    # "y":I
    .end local v44    # "rsum":I
    .local v11, "rsum":I
    .local v14, "y":I
    .restart local v37    # "hm":I
    :cond_a
    move/from16 v44, v11

    move/from16 v43, v14

    move/from16 v11, v37

    .end local v14    # "y":I
    .end local v37    # "hm":I
    .local v11, "hm":I
    .restart local v43    # "y":I
    .restart local v44    # "rsum":I
    move v14, v2

    .line 1549
    .end local v19    # "yi":I
    .local v14, "yi":I
    move/from16 v19, v12

    .line 1550
    .local v19, "stackpointer":I
    const/16 v31, 0x0

    .end local v43    # "y":I
    .local v31, "y":I
    move/from16 v47, v19

    move/from16 v19, v14

    move/from16 v14, v31

    move/from16 v31, v27

    move/from16 v27, v47

    .local v14, "y":I
    .local v19, "yi":I
    .local v27, "stackpointer":I
    .local v31, "binsum":I
    :goto_a
    move/from16 v45, v9

    move/from16 v9, v36

    if-ge v14, v9, :cond_c

    .line 1552
    .end local v36    # "h":I
    .local v9, "h":I
    .local v45, "i":I
    const/high16 v32, -0x1000000

    aget v34, v15, v19

    and-int v32, v32, v34

    aget v34, v0, v44

    shl-int/lit8 v34, v34, 0x10

    or-int v32, v32, v34

    aget v34, v0, v22

    shl-int/lit8 v34, v34, 0x8

    or-int v32, v32, v34

    aget v34, v0, v23

    or-int v32, v32, v34

    aput v32, v15, v19

    .line 1554
    sub-int v44, v44, v26

    .line 1555
    sub-int v22, v22, v25

    .line 1556
    sub-int v23, v23, v30

    .line 1558
    sub-int v32, v27, v12

    add-int v32, v32, v8

    .line 1559
    .local v32, "stackstart":I
    rem-int v34, v32, v8

    aget-object v34, v1, v34

    .line 1561
    .local v34, "sir":[I
    const/16 v21, 0x0

    aget v35, v34, v21

    sub-int v26, v26, v35

    .line 1562
    const/16 v18, 0x1

    aget v35, v34, v18

    sub-int v25, v25, v35

    .line 1563
    aget v35, v34, v17

    sub-int v30, v30, v35

    .line 1565
    if-nez v2, :cond_b

    .line 1566
    move-object/from16 v46, v0

    add-int v0, v14, v3

    .end local v0    # "dv":[I
    .local v46, "dv":[I
    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/2addr v0, v13

    aput v0, v4, v14

    goto :goto_b

    .line 1568
    .end local v46    # "dv":[I
    .restart local v0    # "dv":[I
    :cond_b
    move-object/from16 v46, v0

    .end local v0    # "dv":[I
    .restart local v46    # "dv":[I
    :goto_b
    aget v0, v4, v14

    add-int/2addr v0, v2

    .line 1570
    .local v0, "p":I
    aget v35, v7, v0

    const/16 v21, 0x0

    aput v35, v34, v21

    .line 1571
    aget v35, v6, v0

    const/16 v18, 0x1

    aput v35, v34, v18

    .line 1572
    aget v35, v5, v0

    aput v35, v34, v17

    .line 1574
    aget v35, v34, v21

    add-int v29, v29, v35

    .line 1575
    aget v35, v34, v18

    add-int v28, v28, v35

    .line 1576
    aget v35, v34, v17

    add-int v31, v31, v35

    .line 1578
    add-int v44, v44, v29

    .line 1579
    add-int v22, v22, v28

    .line 1580
    add-int v23, v23, v31

    .line 1582
    add-int/lit8 v35, v27, 0x1

    rem-int v27, v35, v8

    .line 1583
    aget-object v34, v1, v27

    .line 1585
    const/16 v21, 0x0

    aget v35, v34, v21

    add-int v26, v26, v35

    .line 1586
    const/16 v18, 0x1

    aget v35, v34, v18

    add-int v25, v25, v35

    .line 1587
    aget v35, v34, v17

    add-int v30, v30, v35

    .line 1589
    aget v35, v34, v21

    sub-int v29, v29, v35

    .line 1590
    aget v35, v34, v18

    sub-int v28, v28, v35

    .line 1591
    aget v35, v34, v17

    sub-int v31, v31, v35

    .line 1593
    add-int v19, v19, v13

    .line 1550
    add-int/lit8 v14, v14, 0x1

    move/from16 v36, v9

    move/from16 v9, v45

    move-object/from16 v0, v46

    goto/16 :goto_a

    .line 1516
    .end local v32    # "stackstart":I
    .end local v34    # "sir":[I
    .end local v46    # "dv":[I
    .local v0, "dv":[I
    :cond_c
    move-object/from16 v46, v0

    const/16 v18, 0x1

    const/16 v21, 0x0

    .end local v0    # "dv":[I
    .restart local v46    # "dv":[I
    add-int/lit8 v2, v2, 0x1

    move/from16 v36, v9

    move/from16 v37, v11

    move/from16 v22, v45

    goto/16 :goto_7

    .line 1596
    .end local v9    # "h":I
    .end local v10    # "yp":I
    .end local v11    # "hm":I
    .end local v23    # "bsum":I
    .end local v25    # "goutsum":I
    .end local v26    # "routsum":I
    .end local v27    # "stackpointer":I
    .end local v28    # "ginsum":I
    .end local v29    # "rinsum":I
    .end local v30    # "boutsum":I
    .end local v31    # "binsum":I
    .end local v44    # "rsum":I
    .end local v45    # "i":I
    .end local v46    # "dv":[I
    .restart local v0    # "dv":[I
    .local v22, "i":I
    .restart local v36    # "h":I
    .restart local v37    # "hm":I
    :cond_d
    move-object/from16 v46, v0

    move/from16 v43, v14

    move/from16 v9, v36

    move/from16 v11, v37

    .end local v0    # "dv":[I
    .end local v14    # "y":I
    .end local v36    # "h":I
    .end local v37    # "hm":I
    .restart local v9    # "h":I
    .restart local v11    # "hm":I
    .restart local v43    # "y":I
    .restart local v46    # "dv":[I
    const/4 v0, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    move-object/from16 v17, v4

    move-object/from16 v4, v33

    .end local v4    # "vmin":[I
    .local v17, "vmin":[I
    move-object/from16 v18, v5

    move-object v5, v15

    .end local v5    # "b":[I
    .local v18, "b":[I
    move-object/from16 v21, v6

    move v6, v0

    .end local v6    # "g":[I
    .local v21, "g":[I
    move-object v0, v7

    move v7, v13

    .end local v7    # "r":[I
    .local v0, "r":[I
    move/from16 v23, v8

    move v8, v10

    .end local v8    # "div":I
    .local v23, "div":I
    move/from16 v25, v24

    move/from16 v24, v9

    move v9, v14

    .end local v9    # "h":I
    .local v24, "h":I
    .local v25, "wh":I
    move v14, v11

    move v10, v13

    .end local v11    # "hm":I
    .local v14, "hm":I
    move/from16 v26, v41

    move/from16 v11, v24

    .end local v41    # "wm":I
    .local v26, "wm":I
    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1597
    return-object v33
.end method

.method public static toAlpha(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "src"    # Landroid/graphics/Bitmap;

    .line 1196
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ImageUtils;->toAlpha(Landroid/graphics/Bitmap;Ljava/lang/Boolean;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static toAlpha(Landroid/graphics/Bitmap;Ljava/lang/Boolean;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "recycle"    # Ljava/lang/Boolean;

    .line 1207
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1208
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1209
    .local v0, "ret":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    if-eq v0, p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1210
    :cond_1
    return-object v0
.end method

.method public static toGray(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "src"    # Landroid/graphics/Bitmap;

    .line 1220
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ImageUtils;->toGray(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static toGray(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "recycle"    # Z

    .line 1231
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1232
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1233
    .local v0, "ret":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1234
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 1235
    .local v2, "paint":Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 1236
    .local v3, "colorMatrix":Landroid/graphics/ColorMatrix;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 1237
    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 1238
    .local v5, "colorMatrixColorFilter":Landroid/graphics/ColorMatrixColorFilter;
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1239
    invoke-virtual {v1, p0, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1240
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_1

    if-eq v0, p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1241
    :cond_1
    return-object v0
.end method

.method public static toRound(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "src"    # Landroid/graphics/Bitmap;

    .line 693
    const/4 v0, 0x0

    invoke-static {p0, v0, v0, v0}, Lcom/blankj/utilcode/util/ImageUtils;->toRound(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static toRound(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "borderSize"    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2, "borderColor"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 718
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ImageUtils;->toRound(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static toRound(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 17
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "borderSize"    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2, "borderColor"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p3, "recycle"    # Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 734
    invoke-static/range {p0 .. p0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    .line 735
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 736
    .local v2, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 737
    .local v4, "height":I
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 738
    .local v5, "size":I
    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    .line 739
    .local v6, "paint":Landroid/graphics/Paint;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    invoke-static {v2, v4, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 740
    .local v7, "ret":Landroid/graphics/Bitmap;
    int-to-float v8, v5

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    .line 741
    .local v8, "center":F
    new-instance v10, Landroid/graphics/RectF;

    int-to-float v11, v2

    int-to-float v12, v4

    const/4 v13, 0x0

    invoke-direct {v10, v13, v13, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 742
    .local v10, "rectF":Landroid/graphics/RectF;
    sub-int v11, v2, v5

    int-to-float v11, v11

    div-float/2addr v11, v9

    sub-int v12, v4, v5

    int-to-float v12, v12

    div-float/2addr v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/graphics/RectF;->inset(FF)V

    .line 743
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 744
    .local v11, "matrix":Landroid/graphics/Matrix;
    iget v12, v10, Landroid/graphics/RectF;->left:F

    iget v13, v10, Landroid/graphics/RectF;->top:F

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 745
    if-eq v2, v4, :cond_1

    .line 746
    int-to-float v12, v5

    int-to-float v13, v2

    div-float/2addr v12, v13

    int-to-float v13, v5

    int-to-float v14, v4

    div-float/2addr v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 748
    :cond_1
    new-instance v12, Landroid/graphics/BitmapShader;

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v12, v0, v13, v14}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 749
    .local v12, "shader":Landroid/graphics/BitmapShader;
    invoke-virtual {v12, v11}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 750
    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 751
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 752
    .local v13, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v13, v10, v8, v8, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 753
    if-lez v1, :cond_2

    .line 754
    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 755
    move/from16 v3, p2

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 756
    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 757
    int-to-float v14, v1

    invoke-virtual {v6, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 758
    int-to-float v14, v1

    div-float/2addr v14, v9

    sub-float v14, v8, v14

    .line 759
    .local v14, "radius":F
    int-to-float v15, v2

    div-float/2addr v15, v9

    int-to-float v1, v4

    div-float/2addr v1, v9

    invoke-virtual {v13, v15, v1, v14, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .end local v14    # "radius":F
    goto :goto_0

    .line 761
    :cond_2
    move/from16 v3, p2

    :goto_0
    if-eqz p3, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-nez v9, :cond_3

    if-eq v7, v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 762
    :cond_3
    return-object v7
.end method

.method public static toRound(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "recycle"    # Z

    .line 704
    const/4 v0, 0x0

    invoke-static {p0, v0, v0, p1}, Lcom/blankj/utilcode/util/ImageUtils;->toRound(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static toRoundCorner(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # F

    .line 773
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v0}, Lcom/blankj/utilcode/util/ImageUtils;->toRoundCorner(Landroid/graphics/Bitmap;FFIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static toRoundCorner(Landroid/graphics/Bitmap;FFI)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # F
    .param p2, "borderSize"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param
    .param p3, "borderColor"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 803
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/blankj/utilcode/util/ImageUtils;->toRoundCorner(Landroid/graphics/Bitmap;FFIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static toRoundCorner(Landroid/graphics/Bitmap;FFIZ)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # F
    .param p2, "borderSize"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param
    .param p3, "borderColor"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p4, "recycle"    # Z

    .line 837
    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    const/4 v1, 0x5

    aput p1, v0, v1

    const/4 v1, 0x6

    aput p1, v0, v1

    const/4 v1, 0x7

    aput p1, v0, v1

    .line 838
    .local v0, "radii":[F
    invoke-static {p0, v0, p2, p3, p4}, Lcom/blankj/utilcode/util/ImageUtils;->toRoundCorner(Landroid/graphics/Bitmap;[FFIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static toRoundCorner(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # F
    .param p2, "recycle"    # Z

    .line 787
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lcom/blankj/utilcode/util/ImageUtils;->toRoundCorner(Landroid/graphics/Bitmap;FFIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static toRoundCorner(Landroid/graphics/Bitmap;[FFI)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "radii"    # [F
    .param p2, "borderSize"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param
    .param p3, "borderColor"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 819
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/blankj/utilcode/util/ImageUtils;->toRoundCorner(Landroid/graphics/Bitmap;[FFIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static toRoundCorner(Landroid/graphics/Bitmap;[FFIZ)Landroid/graphics/Bitmap;
    .locals 15
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "radii"    # [F
    .param p2, "borderSize"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param
    .param p3, "borderColor"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p4, "recycle"    # Z

    move-object v0, p0

    move/from16 v1, p2

    .line 856
    invoke-static {v0}, Lcom/blankj/utilcode/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    .line 857
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 858
    .local v2, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 859
    .local v4, "height":I
    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 860
    .local v5, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-static {v2, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 861
    .local v6, "ret":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/BitmapShader;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v7, v0, v8, v9}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 862
    .local v7, "shader":Landroid/graphics/BitmapShader;
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 863
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 864
    .local v8, "canvas":Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/RectF;

    int-to-float v10, v2

    int-to-float v11, v4

    const/4 v12, 0x0

    invoke-direct {v9, v12, v12, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 865
    .local v9, "rectF":Landroid/graphics/RectF;
    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v1, v10

    .line 866
    .local v10, "halfBorderSize":F
    invoke-virtual {v9, v10, v10}, Landroid/graphics/RectF;->inset(FF)V

    .line 867
    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    .line 868
    .local v11, "path":Landroid/graphics/Path;
    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v14, p1

    invoke-virtual {v11, v9, v14, v13}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 869
    invoke-virtual {v8, v11, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 870
    cmpl-float v12, v1, v12

    if-lez v12, :cond_1

    .line 871
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 872
    move/from16 v3, p3

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 873
    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 874
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 875
    sget-object v12, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 876
    invoke-virtual {v8, v11, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 878
    :cond_1
    move/from16 v3, p3

    :goto_0
    if-eqz p4, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v13

    if-nez v13, :cond_2

    if-eq v6, v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 879
    :cond_2
    return-object v6
.end method

.method public static view2Bitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "view"    # Landroid/view/View;

    .line 191
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 192
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v0

    .line 193
    .local v0, "drawingCacheEnabled":Z
    invoke-virtual {p0}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v1

    .line 194
    .local v1, "willNotCacheDrawing":Z
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 195
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 196
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 198
    .local v3, "drawingCache":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 212
    :cond_1
    invoke-static {v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_2

    .line 199
    :cond_2
    :goto_0
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 200
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 199
    invoke-virtual {p0, v4, v5}, Landroid/view/View;->measure(II)V

    .line 201
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0, v2, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 202
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    .line 203
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 204
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 209
    :cond_3
    invoke-static {v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 205
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 206
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 207
    .local v4, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 208
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    nop

    .line 212
    :goto_2
    nop

    .line 214
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 215
    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 216
    return-object v2
.end method

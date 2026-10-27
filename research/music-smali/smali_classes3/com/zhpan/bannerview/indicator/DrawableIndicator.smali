.class public final Lcom/zhpan/bannerview/indicator/DrawableIndicator;
.super Lbyj;
.source "DrawableIndicator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhpan/bannerview/indicator/DrawableIndicator$IndicatorSize;
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field private checkCanResize:Z

.field private mCheckedBitmap:Landroid/graphics/Bitmap;

.field private mCheckedBitmapHeight:I

.field private mCheckedBitmapWidth:I

.field private mIndicatorPadding:I

.field private mIndicatorSize:Lcom/zhpan/bannerview/indicator/DrawableIndicator$IndicatorSize;

.field private mNormalBitmap:Landroid/graphics/Bitmap;

.field private mNormalBitmapHeight:I

.field private mNormalBitmapWidth:I

.field private normalCanResize:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/zhpan/bannerview/indicator/DrawableIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILccc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/zhpan/bannerview/indicator/DrawableIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILccc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-static {p1}, Lccf;->a(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2, p3}, Lbyj;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->normalCanResize:Z

    .line 58
    iput-boolean p1, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->checkCanResize:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILccc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 33
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/zhpan/bannerview/indicator/DrawableIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final drawIcon(Landroid/graphics/Canvas;IILandroid/graphics/Bitmap;)V
    .locals 1

    if-nez p4, :cond_0

    return-void

    :cond_0
    int-to-float p2, p2

    int-to-float p3, p3

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p1, p4, p2, p3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private final getBitmapFromVectorDrawable(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 4

    .line 199
    invoke-static {p1, p2}, Ldj;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 201
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge p2, v0, :cond_0

    .line 202
    invoke-static {p1}, Lccf;->a(Ljava/lang/Object;)V

    invoke-static {p1}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 203
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 206
    :cond_0
    invoke-static {p1}, Lccf;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    .line 207
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 205
    invoke-static {p2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 209
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 210
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 211
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private final initIconSize()V
    .locals 8

    .line 111
    iget-object v0, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mCheckedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 112
    iget-object v1, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mIndicatorSize:Lcom/zhpan/bannerview/indicator/DrawableIndicator$IndicatorSize;

    if-eqz v1, :cond_1

    .line 113
    invoke-static {v0}, Lccf;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->checkCanResize:Z

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mCheckedBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lccf;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mIndicatorSize:Lcom/zhpan/bannerview/indicator/DrawableIndicator$IndicatorSize;

    invoke-static {v1}, Lccf;->a(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/zhpan/bannerview/indicator/DrawableIndicator$IndicatorSize;->getCheckedWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setWidth(I)V

    .line 115
    iget-object v0, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mCheckedBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lccf;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mIndicatorSize:Lcom/zhpan/bannerview/indicator/DrawableIndicator$IndicatorSize;

    invoke-static {v1}, Lccf;->a(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/zhpan/bannerview/indicator/DrawableIndicator$IndicatorSize;->getCheckedHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHeight(I)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mCheckedBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lccf;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 118
    iget-object v0, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mCheckedBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lccf;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 119
    iget-object v0, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mIndicatorSize:Lcom/zhpan/bannerview/indicator/DrawableIndicator$IndicatorSize;

    invoke-static {v0}, Lccf;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/zhpan/bannerview/indicator/DrawableIndicator$IndicatorSize;->getCheckedWidth()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v4

    div-float/2addr v0, v1

    .line 120
    iget-object v1, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mIndicatorSize:Lcom/zhpan/bannerview/indicator/DrawableIndicator$IndicatorSize;

    invoke-static {v1}, Lccf;->a(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/zhpan/bannerview/indicator/DrawableIndicator$IndicatorSize;->getCheckedHeight()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v5

    div-float/2addr v1, v2

    .line 121
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 122
    invoke-virtual {v6, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 123
    iget-object v1, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mCheckedBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lccf;->a(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mCheckedBitmap:Landroid/graphics/Bitmap;

    .line 126
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mCheckedBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lccf;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mCheckedBitmapWidth:I

    .line 127
    iget-object v0, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mCheckedBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lccf;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mCheckedBitmapHeight:I

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mNormalBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 130
    iget-object v1, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mIndicatorSize:Lcom/zhpan/bannerview/indicator/DrawableIndicator$IndicatorSize;

    if-eqz v1, :cond_4

    .line 131
    invoke-static {v0}, Lccf;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->normalCanResize:Z

    if-eqz v0, :cond_3

    .line 132
    iget-object v0, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mNormalBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lccf;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mIndicatorSize:Lcom/zhpan/bannerview/indicator/DrawableIndicator$IndicatorSize;

    invoke-static {v1}, Lccf;->a(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/zhpan/bannerview/indicator/DrawableIndicator$IndicatorSize;->getNormalWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setWidth(I)V

    .line 133
    iget-object v0, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mNormalBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lccf;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mIndicatorSize:Lcom/zhpan/bannerview/indicator/DrawableIndicator$IndicatorSize;

    invoke-static {v1}, Lccf;->a(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/zhpan/bannerview/indicator/DrawableIndicator$IndicatorSize;->getNormalHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHeight(I)V

    goto :goto_1

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mNormalBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lccf;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 136
    iget-object v0, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mNormalBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lccf;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 137
    iget-object v0, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mIndicatorSize:Lcom/zhpan/bannerview/indicator/DrawableIndicator$IndicatorSize;

    invoke-static {v0}, Lccf;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/zhpan/bannerview/indicator/DrawableIndicator$IndicatorSize;->getNormalWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mNormalBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lccf;->a(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 138
    iget-object v1, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mIndicatorSize:Lcom/zhpan/bannerview/indicator/DrawableIndicator$IndicatorSize;

    invoke-static {v1}, Lccf;->a(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/zhpan/bannerview/indicator/DrawableIndicator$IndicatorSize;->getNormalHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mNormalBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lccf;->a(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 139
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 140
    invoke-virtual {v6, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 141
    iget-object v1, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mNormalBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lccf;->a(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mNormalBitmap:Landroid/graphics/Bitmap;

    .line 144
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mNormalBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lccf;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mNormalBitmapWidth:I

    .line 145
    iget-object v0, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mNormalBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lccf;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mNormalBitmapHeight:I

    :cond_5
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-super {p0, p1}, Lbyj;->onDraw(Landroid/graphics/Canvas;)V

    .line 72
    invoke-virtual {p0}, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->getPageSize()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mCheckedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mNormalBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 73
    invoke-virtual {p0}, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->getPageSize()I

    move-result v0

    add-int/2addr v0, v1

    :goto_0
    if-ge v1, v0, :cond_2

    .line 76
    iget-object v2, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mNormalBitmap:Landroid/graphics/Bitmap;

    add-int/lit8 v3, v1, -0x1

    .line 79
    invoke-virtual {p0}, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->getCurrentPosition()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 80
    iget v4, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mNormalBitmapWidth:I

    iget v5, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mIndicatorPadding:I

    add-int/2addr v4, v5

    mul-int/2addr v3, v4

    .line 81
    invoke-virtual {p0}, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mNormalBitmapHeight:I

    div-int/lit8 v5, v5, 0x2

    :goto_1
    sub-int/2addr v4, v5

    goto :goto_2

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->getCurrentPosition()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 84
    iget v2, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mNormalBitmapWidth:I

    iget v4, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mIndicatorPadding:I

    add-int/2addr v2, v4

    mul-int/2addr v3, v2

    .line 85
    invoke-virtual {p0}, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v4, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mCheckedBitmapHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v2, v4

    .line 86
    iget-object v2, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mCheckedBitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 89
    :cond_1
    iget v4, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mIndicatorPadding:I

    mul-int/2addr v3, v4

    add-int/lit8 v4, v1, -0x2

    iget v5, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mNormalBitmapWidth:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iget v4, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mCheckedBitmapWidth:I

    add-int/2addr v3, v4

    .line 90
    invoke-virtual {p0}, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mNormalBitmapHeight:I

    div-int/lit8 v5, v5, 0x2

    goto :goto_1

    .line 93
    :goto_2
    invoke-direct {p0, p1, v3, v4, v2}, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->drawIcon(Landroid/graphics/Canvas;IILandroid/graphics/Bitmap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 63
    invoke-super {p0, p1, p2}, Lbyj;->onMeasure(II)V

    .line 64
    iget p1, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mCheckedBitmapHeight:I

    iget p2, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mNormalBitmapHeight:I

    invoke-static {p1, p2}, Lkotlin/ranges/f;->c(II)I

    move-result p1

    .line 66
    iget p2, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mCheckedBitmapWidth:I

    iget v0, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mNormalBitmapWidth:I

    iget v1, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mIndicatorPadding:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->getPageSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 67
    invoke-virtual {p0, p2, p1}, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->setMeasuredDimension(II)V

    return-void
.end method

.method public final setIndicatorDrawable(II)Lcom/zhpan/bannerview/indicator/DrawableIndicator;
    .locals 3

    .line 153
    invoke-virtual {p0}, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mNormalBitmap:Landroid/graphics/Bitmap;

    .line 154
    invoke-virtual {p0}, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mCheckedBitmap:Landroid/graphics/Bitmap;

    .line 155
    iget-object v0, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mNormalBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const-string v2, "context"

    if-nez v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lccf;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->getBitmapFromVectorDrawable(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mNormalBitmap:Landroid/graphics/Bitmap;

    .line 157
    iput-boolean v1, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->normalCanResize:Z

    .line 159
    :cond_0
    iget-object p1, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mCheckedBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_1

    .line 160
    invoke-virtual {p0}, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lccf;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->getBitmapFromVectorDrawable(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mCheckedBitmap:Landroid/graphics/Bitmap;

    .line 161
    iput-boolean v1, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->checkCanResize:Z

    .line 163
    :cond_1
    invoke-direct {p0}, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->initIconSize()V

    .line 164
    invoke-virtual {p0}, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->postInvalidate()V

    return-object p0
.end method

.method public final setIndicatorGap(I)Lcom/zhpan/bannerview/indicator/DrawableIndicator;
    .locals 0

    if-ltz p1, :cond_0

    .line 182
    iput p1, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mIndicatorPadding:I

    .line 183
    invoke-virtual {p0}, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->postInvalidate()V

    :cond_0
    return-object p0
.end method

.method public final setIndicatorSize(IIII)Lcom/zhpan/bannerview/indicator/DrawableIndicator;
    .locals 1

    .line 174
    new-instance v0, Lcom/zhpan/bannerview/indicator/DrawableIndicator$IndicatorSize;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/zhpan/bannerview/indicator/DrawableIndicator$IndicatorSize;-><init>(IIII)V

    iput-object v0, p0, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->mIndicatorSize:Lcom/zhpan/bannerview/indicator/DrawableIndicator$IndicatorSize;

    .line 175
    invoke-direct {p0}, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->initIconSize()V

    .line 176
    invoke-virtual {p0}, Lcom/zhpan/bannerview/indicator/DrawableIndicator;->postInvalidate()V

    return-object p0
.end method

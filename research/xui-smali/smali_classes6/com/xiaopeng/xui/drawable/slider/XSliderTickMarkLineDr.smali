.class public Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkLineDr;
.super Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;
.source "XSliderTickMarkLineDr.java"


# static fields
.field private static final halfLineHeight:F = 5.0f

.field private static final halfLineWidth:F = 3.2258065f

.field private static final slope:F = 1.55f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 16
    .local v0, "count":I
    iget-boolean v1, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkLineDr;->mSelected:Z

    const/high16 v2, 0x40a00000    # 5.0f

    const v3, 0x404e739d

    if-eqz v1, :cond_0

    .line 17
    iget v1, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkLineDr;->mHalfWidth:F

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkLineDr;->getProgress()F

    move-result v4

    mul-float/2addr v4, v3

    sub-float/2addr v1, v4

    .line 18
    .local v1, "startX":F
    iget v4, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkLineDr;->mHalfWidth:F

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkLineDr;->getProgress()F

    move-result v5

    mul-float/2addr v3, v5

    add-float/2addr v3, v4

    .line 19
    .local v3, "stopX":F
    iget v4, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkLineDr;->mHalfHeight:F

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkLineDr;->getProgress()F

    move-result v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    .line 20
    .local v4, "startY":F
    iget v5, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkLineDr;->mHalfHeight:F

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkLineDr;->getProgress()F

    move-result v6

    mul-float/2addr v2, v6

    sub-float v2, v5, v2

    .line 21
    .local v2, "stopY":F
    iget-object v10, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkLineDr;->mPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v6, v1

    move v7, v4

    move v8, v3

    move v9, v2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 22
    iget-object v10, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkLineDr;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 23
    .end local v1    # "startX":F
    .end local v2    # "stopY":F
    .end local v3    # "stopX":F
    .end local v4    # "startY":F
    goto :goto_0

    .line 24
    :cond_0
    iget v1, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkLineDr;->mHalfWidth:F

    sub-float v5, v1, v3

    iget v1, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkLineDr;->mHalfHeight:F

    add-float v6, v1, v2

    iget v1, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkLineDr;->mHalfWidth:F

    add-float v7, v1, v3

    iget v1, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkLineDr;->mHalfHeight:F

    sub-float v8, v1, v2

    iget-object v9, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkLineDr;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 29
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 30
    return-void
.end method

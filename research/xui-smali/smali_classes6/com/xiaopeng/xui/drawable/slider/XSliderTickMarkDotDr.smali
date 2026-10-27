.class public Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDotDr;
.super Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;
.source "XSliderTickMarkDotDr.java"


# static fields
.field private static final BG_DOC_RADIUS:F = 2.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 12
    iget v0, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDotDr;->mHalfWidth:F

    iget v1, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDotDr;->mHalfHeight:F

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDotDr;->getProgress()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    iget-object v4, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDotDr;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 13
    iget v0, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDotDr;->mHalfWidth:F

    iget v1, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDotDr;->mHalfHeight:F

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDotDr;->getProgress()F

    move-result v2

    mul-float/2addr v3, v2

    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDotDr;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 14
    return-void
.end method

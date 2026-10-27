.class public Lcom/xiaopeng/xui/widget/slider/XSlider;
.super Lcom/xiaopeng/xui/widget/slider/AbsSlider;
.source "XSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/slider/XSlider$ProgressChangeListener;,
        Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XSlider"


# instance fields
.field private mVuiInterval:F

.field private mVuiMaxValue:I

.field private mVuiMinValue:I

.field private progressChangeListener:Lcom/xiaopeng/xui/widget/slider/XSlider$ProgressChangeListener;

.field private sliderProgressListener:Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/slider/XSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/slider/XSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 54
    sget v0, Lbyg$m;->XSlider:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/slider/XSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, -0x1

    .line 40
    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mVuiMaxValue:I

    .line 41
    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mVuiMinValue:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 42
    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mVuiInterval:F

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lbyg$n;->XSlider:[I

    invoke-virtual {v1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 60
    sget p3, Lbyg$n;->XSlider_slider_vuiMinValue:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mVuiMinValue:I

    .line 61
    sget p3, Lbyg$n;->XSlider_slider_vuiMaxValue:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mVuiMaxValue:I

    .line 62
    sget p1, Lbyg$n;->XSlider_slider_vuiInterval:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mVuiInterval:F

    return-void
.end method

.method private calculateIndicatorFromTouch(Landroid/view/MotionEvent;)F
    .locals 1

    .line 154
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getOrientation()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float p1, v0, p1

    :goto_0
    return p1
.end method

.method private static down(DI)D
    .locals 0

    if-ltz p2, :cond_0

    .line 192
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    .line 195
    sget-object p1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {p0, p2, p1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    .line 196
    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p0

    return-wide p0

    .line 190
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private notifyChildren(ZZ)V
    .locals 8

    .line 158
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->filterValidValue()F

    move-result v0

    .line 159
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 161
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xui/widget/slider/SlideLineView;

    .line 162
    invoke-virtual {v4}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->getX()F

    move-result v5

    invoke-virtual {v4}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->filterValidValue()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    .line 163
    invoke-virtual {v4}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->isSelect()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    .line 164
    invoke-virtual {v4, v5}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->setSelect(Z)V

    goto :goto_1

    .line 167
    :cond_0
    invoke-virtual {v4, v2}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->setSelect(Z)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_4

    const/high16 p1, 0x41800000    # 16.0f

    sub-float/2addr v0, p1

    .line 171
    iget p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->workableTotalLength:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    iget p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorValue:F

    .line 173
    iget p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorValue:F

    float-to-double v0, p1

    iget p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->decimal:I

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->down(DI)D

    move-result-wide v0

    double-to-float p1, v0

    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->sliderProgressListener:Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;

    if-eqz v0, :cond_4

    if-nez p2, :cond_3

    iget p2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->currentUpdateIndex:F

    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->accuracy:F

    add-float/2addr p2, v0

    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    int-to-float v0, v0

    .line 175
    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    cmpl-float p2, p1, p2

    if-gez p2, :cond_3

    iget p2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->currentUpdateIndex:F

    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->accuracy:F

    sub-float/2addr p2, v0

    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    int-to-float v0, v0

    .line 176
    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    cmpg-float p2, p1, p2

    if-gtz p2, :cond_4

    :cond_3
    iget p2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->currentUpdateIndex:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_4

    .line 177
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->sliderProgressListener:Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->unit:Ljava/lang/String;

    invoke-interface {p2, p0, p1, v0}, Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;->onProgressChanged(Lcom/xiaopeng/xui/widget/slider/XSlider;FLjava/lang/String;)V

    .line 179
    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->currentUpdateIndex:F

    .line 180
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->updateVui(Landroid/view/View;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public getIndicatorValue()F
    .locals 3

    .line 200
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorValue:F

    float-to-double v0, v0

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->decimal:I

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xui/widget/slider/XSlider;->down(DI)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mStep:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public getVuiCurrentIndex()F
    .locals 1

    .line 409
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->currentUpdateIndex:F

    return v0
.end method

.method public synthetic lambda$setCurrentIndex$0$XSlider(IZ)V
    .locals 3

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fromUser:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XSlider"

    invoke-static {v1, v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorValue:F

    .line 234
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorValue:F

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->calculateProgressView(F)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mProgressViewLength:F

    .line 235
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->invalidate()V

    const/4 v0, 0x0

    .line 236
    invoke-direct {p0, v0, v0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->notifyChildren(ZZ)V

    int-to-float p1, p1

    .line 237
    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->currentUpdateIndex:F

    .line 238
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorDrawable:Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;

    if-eqz p1, :cond_0

    .line 239
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorDrawable:Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->filterValidValue()F

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getPopString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getSliderLength()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->updateCenter(FLjava/lang/String;I)V

    :cond_0
    if-eqz p2, :cond_1

    .line 241
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->progressChangeListener:Lcom/xiaopeng/xui/widget/slider/XSlider$ProgressChangeListener;

    if-eqz p1, :cond_1

    .line 242
    iget p2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorValue:F

    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->unit:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, p0, p2, v0, v1}, Lcom/xiaopeng/xui/widget/slider/XSlider$ProgressChangeListener;->onProgressChanged(Lcom/xiaopeng/xui/widget/slider/XSlider;FLjava/lang/String;Z)V

    .line 244
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getVuiValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getVuiValue()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/Float;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getVuiValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getIndicatorValue()F

    move-result p2

    cmpl-float p1, p1, p2

    if-nez p1, :cond_2

    return-void

    .line 247
    :cond_2
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->updateVui(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$setEndIndex$2$XSlider()V
    .locals 0

    .line 283
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->invalidate()V

    return-void
.end method

.method public synthetic lambda$setStartIndex$1$XSlider()V
    .locals 4

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorDrawable:Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorDrawable:Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->filterValidValue()F

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getPopString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getSliderLength()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->updateCenter(FLjava/lang/String;I)V

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->invalidate()V

    return-void
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lbxr;)Lbye;
    .locals 5

    const-string p1, "customSetProps"

    const/4 p2, 0x0

    .line 350
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getVuiElementType()Lbxy;

    move-result-object v0

    sget-object v1, Lbxy;->STATEFULBUTTON:Lbxy;

    if-ne v0, v1, :cond_0

    return-object p2

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getIndicatorValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->setVuiValue(Ljava/lang/Object;)V

    .line 354
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p2

    .line 360
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getVuiProps()Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    .line 362
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_2
    const-string v0, "minValue"

    .line 364
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mVuiMinValue:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mVuiMinValue:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    :goto_0
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "maxValue"

    .line 365
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mVuiMaxValue:I

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mVuiMaxValue:I

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    :goto_1
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "interval"

    .line 366
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mVuiInterval:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mVuiInterval:F

    float-to-int v1, v1

    goto :goto_2

    :cond_5
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    sub-int/2addr v1, v2

    int-to-double v1, v1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    :goto_2
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 367
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 67
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 70
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    if-eq v0, v1, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto/16 :goto_d

    .line 142
    :cond_1
    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mIsDragging:Z

    if-eqz p1, :cond_2

    .line 143
    iput-boolean v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mIsDragging:Z

    .line 145
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->invalidateAll()V

    goto/16 :goto_d

    .line 99
    :cond_3
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mIsDragging:Z

    if-eqz v0, :cond_4

    .line 100
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->calculateIndicatorFromTouch(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mProgressViewLength:F

    .line 101
    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xui/widget/slider/XSlider;->notifyChildren(ZZ)V

    .line 102
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->invalidateAll()V

    goto/16 :goto_d

    .line 104
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 106
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getOrientation()I

    move-result v4

    if-nez v4, :cond_5

    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mTouchDownX:F

    sub-float/2addr v0, v3

    .line 107
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mScaledTouchSlop:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_6

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mTouchDownY:F

    sub-float/2addr v3, v0

    .line 108
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mScaledTouchSlop:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_6

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_6
    move v0, v2

    :goto_1
    if-eqz v0, :cond_19

    .line 110
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mIsDragging:Z

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->sliderProgressListener:Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;

    if-eqz v0, :cond_7

    .line 112
    invoke-interface {v0, p0}, Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;->onStartTrackingTouch(Lcom/xiaopeng/xui/widget/slider/XSlider;)V

    .line 114
    :cond_7
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->calculateIndicatorFromTouch(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mProgressViewLength:F

    .line 115
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 116
    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xui/widget/slider/XSlider;->notifyChildren(ZZ)V

    .line 117
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->invalidateAll()V

    goto/16 :goto_d

    .line 123
    :cond_8
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mIsDragging:Z

    if-eqz v0, :cond_9

    .line 124
    iput-boolean v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mIsDragging:Z

    goto :goto_2

    .line 127
    :cond_9
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->sliderProgressListener:Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;

    if-eqz v0, :cond_a

    .line 128
    invoke-interface {v0, p0}, Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;->onStartTrackingTouch(Lcom/xiaopeng/xui/widget/slider/XSlider;)V

    .line 131
    :cond_a
    :goto_2
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->calculateIndicatorFromTouch(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mProgressViewLength:F

    .line 132
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->stickIndicator()V

    .line 133
    invoke-direct {p0, v1, v1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->notifyChildren(ZZ)V

    .line 134
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 135
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->sliderProgressListener:Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;

    if-eqz p1, :cond_b

    .line 136
    invoke-interface {p1, p0}, Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;->onStopTrackingTouch(Lcom/xiaopeng/xui/widget/slider/XSlider;)V

    .line 138
    :cond_b
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->invalidateAll()V

    goto/16 :goto_d

    .line 72
    :cond_c
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->isInScrollContainer()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v3

    if-eqz v3, :cond_d

    move v3, v1

    goto :goto_3

    :cond_d
    move v3, v2

    :goto_3
    const/4 v4, -0x1

    if-eqz v0, :cond_e

    .line 74
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v5

    if-eqz v5, :cond_e

    move v5, v1

    goto :goto_4

    :cond_e
    move v5, v2

    :goto_4
    if-nez v3, :cond_10

    if-eqz v5, :cond_f

    goto :goto_5

    :cond_f
    move v3, v2

    goto :goto_6

    :cond_10
    :goto_5
    move v3, v1

    :goto_6
    if-eqz v0, :cond_11

    .line 76
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v5

    if-eqz v5, :cond_11

    move v5, v1

    goto :goto_7

    :cond_11
    move v5, v2

    :goto_7
    if-eqz v0, :cond_12

    .line 77
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    goto :goto_8

    :cond_12
    move v0, v2

    :goto_8
    if-nez v0, :cond_14

    if-eqz v5, :cond_13

    goto :goto_9

    :cond_13
    move v0, v2

    goto :goto_a

    :cond_14
    :goto_9
    move v0, v1

    .line 83
    :goto_a
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getOrientation()I

    move-result v4

    if-nez v4, :cond_15

    if-nez v3, :cond_16

    goto :goto_b

    :cond_15
    if-nez v0, :cond_16

    :goto_b
    move v0, v1

    goto :goto_c

    :cond_16
    move v0, v2

    :goto_c
    if-nez v0, :cond_17

    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mTouchDownX:F

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mTouchDownY:F

    goto :goto_d

    .line 88
    :cond_17
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mIsDragging:Z

    .line 89
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->sliderProgressListener:Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;

    if-eqz v0, :cond_18

    .line 91
    invoke-interface {v0, p0}, Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;->onStartTrackingTouch(Lcom/xiaopeng/xui/widget/slider/XSlider;)V

    .line 93
    :cond_18
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->calculateIndicatorFromTouch(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mProgressViewLength:F

    .line 94
    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xui/widget/slider/XSlider;->notifyChildren(ZZ)V

    .line 95
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->invalidateAll()V

    :cond_19
    :goto_d
    return v1
.end method

.method public onVuiElementEvent(Landroid/view/View;Lbyf;)Z
    .locals 3

    const-string v0, "slider onVuiElementEvent"

    .line 376
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->logD(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getVuiElementType()Lbxy;

    move-result-object p1

    sget-object v1, Lbxy;->STATEFULBUTTON:Lbxy;

    if-ne p1, v1, :cond_1

    return v0

    .line 381
    :cond_1
    invoke-virtual {p2, p2}, Lbyf;->getEventValue(Lbyf;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    if-eqz p1, :cond_4

    .line 384
    iget p2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mStep:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 385
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    goto :goto_0

    .line 387
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mStep:I

    int-to-double v1, v1

    div-double/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p1, p1

    .line 389
    :goto_0
    iget p2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    if-lt p1, p2, :cond_4

    iget p2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    if-le p1, p2, :cond_3

    goto :goto_1

    .line 390
    :cond_3
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->setCurrentIndex(IZ)V

    .line 391
    new-instance p1, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$G7bSwaFjR6szpZX2DzaD1OrXsng;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$G7bSwaFjR6szpZX2DzaD1OrXsng;-><init>(Lcom/xiaopeng/xui/widget/slider/XSlider;)V

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_1
    return v0
.end method

.method public setAccuracy(F)V
    .locals 0

    .line 209
    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->accuracy:F

    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 2

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentIndex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->isAttachedToWindow()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XSlider"

    invoke-static {v1, v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 227
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->setCurrentIndex(IZ)V

    return-void
.end method

.method public setCurrentIndex(IZ)V
    .locals 1

    .line 231
    new-instance v0, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$XSlider$6nRMnQGFhZSAnHXSTyWZZ5qLEF4;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$XSlider$6nRMnQGFhZSAnHXSTyWZZ5qLEF4;-><init>(Lcom/xiaopeng/xui/widget/slider/XSlider;IZ)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 254
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mIsDragging:Z

    .line 256
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->setEnabled(Z)V

    .line 257
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 258
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->setAlphaByEnable(Z)V

    .line 261
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->invalidate()V

    return-void
.end method

.method public setEndIndex(I)V
    .locals 1

    .line 278
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    if-eq v0, p1, :cond_0

    .line 281
    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    .line 282
    new-instance p1, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$XSlider$kB2KeMUVNgZs-Tjtgxuk4WuttL4;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$XSlider$kB2KeMUVNgZs-Tjtgxuk4WuttL4;-><init>(Lcom/xiaopeng/xui/widget/slider/XSlider;)V

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 279
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "startIndex = endIndex!!!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInitIndex(I)V
    .locals 1

    .line 288
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    if-le p1, v0, :cond_0

    .line 289
    iget p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->initIndex:I

    return-void

    .line 292
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    if-ge p1, v0, :cond_1

    .line 293
    iget p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->initIndex:I

    return-void

    .line 296
    :cond_1
    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->initIndex:I

    .line 297
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorValue:F

    .line 298
    iget p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorValue:F

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->calculateProgressView(F)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mProgressViewLength:F

    .line 299
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->invalidate()V

    return-void
.end method

.method public setProgressChangeListener(Lcom/xiaopeng/xui/widget/slider/XSlider$ProgressChangeListener;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->progressChangeListener:Lcom/xiaopeng/xui/widget/slider/XSlider$ProgressChangeListener;

    return-void
.end method

.method public setSliderProgressListener(Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->sliderProgressListener:Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;

    return-void
.end method

.method public setStartIndex(I)V
    .locals 1

    .line 265
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    if-eq p1, v0, :cond_0

    .line 268
    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    .line 269
    new-instance p1, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$XSlider$Xz60DHZ7J60ywvILqd--vaYYV3k;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$XSlider$Xz60DHZ7J60ywvILqd--vaYYV3k;-><init>(Lcom/xiaopeng/xui/widget/slider/XSlider;)V

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 266
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "startIndex = endIndex!!!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public showVuiFloating()V
    .locals 5

    .line 399
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getHeightExIndicator()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getSliderThickness()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 400
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getSliderLength()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getProgressViewLength()F

    move-result v3

    sub-float/2addr v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getProgressViewLength()F

    move-result v1

    :goto_0
    float-to-int v1, v1

    .line 401
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getSliderLength()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    .line 403
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getOrientation()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    .line 404
    :goto_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getOrientation()I

    move-result v4

    if-ne v4, v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    .line 405
    :goto_2
    invoke-static {p0, v0, v3}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;II)V

    return-void
.end method

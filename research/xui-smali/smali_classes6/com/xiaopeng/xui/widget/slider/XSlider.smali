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
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/slider/XSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/slider/XSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 54
    sget v0, Lcom/xiaopeng/xpui/R$style;->XSlider:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/slider/XSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mVuiMaxValue:I

    .line 41
    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mVuiMinValue:I

    .line 42
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mVuiInterval:F

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/xpui/R$styleable;->XSlider:[I

    invoke-virtual {v2, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 60
    .local v2, "attributes":Landroid/content/res/TypedArray;
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_vuiMinValue:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mVuiMinValue:I

    .line 61
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_vuiMaxValue:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mVuiMaxValue:I

    .line 62
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_vuiInterval:I

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mVuiInterval:F

    .line 63
    return-void
.end method

.method private calculateIndicatorFromTouch(Landroid/view/MotionEvent;)F
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 154
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getOrientation()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    :goto_0
    return v0
.end method

.method private static down(DI)D
    .locals 3
    .param p0, "value"    # D
    .param p2, "places"    # I

    .line 190
    if-ltz p2, :cond_0

    .line 192
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    .line 195
    .local v0, "bd":Ljava/math/BigDecimal;
    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v0, p2, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    return-wide v1

    .line 190
    .end local v0    # "bd":Ljava/math/BigDecimal;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static synthetic lambda$setCurrentIndex$0(Lcom/xiaopeng/xui/widget/slider/XSlider;IZ)V
    .locals 4
    .param p1, "currentIndex"    # I
    .param p2, "fromUser"    # Z

    .line 232
    const-string v0, "XSlider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fromUser:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

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

    .line 236
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->notifyChildren(ZZ)V

    .line 237
    int-to-float v0, p1

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->currentUpdateIndex:F

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorDrawable:Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorDrawable:Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->filterValidValue()F

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getPopString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getSliderLength()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->updateCenter(FLjava/lang/String;I)V

    .line 241
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->progressChangeListener:Lcom/xiaopeng/xui/widget/slider/XSlider$ProgressChangeListener;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->progressChangeListener:Lcom/xiaopeng/xui/widget/slider/XSlider$ProgressChangeListener;

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorValue:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->unit:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/xiaopeng/xui/widget/slider/XSlider$ProgressChangeListener;->onProgressChanged(Lcom/xiaopeng/xui/widget/slider/XSlider;FLjava/lang/String;Z)V

    .line 244
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getVuiValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getVuiValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Float;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getVuiValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getIndicatorValue()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 245
    return-void

    .line 247
    :cond_2
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->updateVui(Landroid/view/View;)V

    .line 248
    return-void
.end method

.method public static synthetic lambda$setEndIndex$2(Lcom/xiaopeng/xui/widget/slider/XSlider;)V
    .locals 0

    .line 283
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->invalidate()V

    .line 284
    return-void
.end method

.method public static synthetic lambda$setStartIndex$1(Lcom/xiaopeng/xui/widget/slider/XSlider;)V
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

    .line 274
    return-void
.end method

.method private notifyChildren(ZZ)V
    .locals 8
    .param p1, "isNeedUpdate"    # Z
    .param p2, "isForce"    # Z

    .line 158
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->filterValidValue()F

    move-result v0

    .line 159
    .local v0, "xLocation":F
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getChildCount()I

    move-result v1

    .line 160
    .local v1, "count":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 161
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xui/widget/slider/SlideLineView;

    .line 162
    .local v4, "child":Lcom/xiaopeng/xui/widget/slider/SlideLineView;
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

    .line 164
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->setSelect(Z)V

    goto :goto_1

    .line 167
    :cond_0
    invoke-virtual {v4, v2}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->setSelect(Z)V

    .line 160
    .end local v4    # "child":Lcom/xiaopeng/xui/widget/slider/SlideLineView;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 170
    .end local v3    # "i":I
    :cond_2
    if-eqz p1, :cond_4

    .line 171
    const/high16 v2, 0x41800000    # 16.0f

    sub-float v2, v0, v2

    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->workableTotalLength:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorValue:F

    .line 173
    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorValue:F

    float-to-double v2, v2

    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->decimal:I

    invoke-static {v2, v3, v4}, Lcom/xiaopeng/xui/widget/slider/XSlider;->down(DI)D

    move-result-wide v2

    double-to-float v2, v2

    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 174
    .local v2, "currentProgress":F
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->sliderProgressListener:Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;

    if-eqz v3, :cond_4

    if-nez p2, :cond_3

    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->currentUpdateIndex:F

    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->accuracy:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    int-to-float v4, v4

    .line 175
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    cmpl-float v3, v2, v3

    if-gez v3, :cond_3

    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->currentUpdateIndex:F

    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->accuracy:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    int-to-float v4, v4

    .line 176
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_4

    :cond_3
    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->currentUpdateIndex:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_4

    .line 177
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->sliderProgressListener:Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->unit:Ljava/lang/String;

    invoke-interface {v3, p0, v2, v4}, Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;->onProgressChanged(Lcom/xiaopeng/xui/widget/slider/XSlider;FLjava/lang/String;)V

    .line 179
    iput v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->currentUpdateIndex:F

    .line 180
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->updateVui(Landroid/view/View;)V

    .line 183
    .end local v2    # "currentProgress":F
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

.method public onBuildVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiElementBuilder;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 7
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "iVuiElementBuilder"    # Lcom/xiaopeng/vui/commons/IVuiElementBuilder;

    .line 350
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getVuiElementType()Lcom/xiaopeng/vui/commons/VuiElementType;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/vui/commons/VuiElementType;->STATEFULBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    if-ne v1, v2, :cond_0

    .line 351
    return-object v0

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getIndicatorValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->setVuiValue(Ljava/lang/Object;)V

    .line 354
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "customSetProps"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 355
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "customSetProps"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 356
    .local v1, "customSet":Z
    if-eqz v1, :cond_1

    .line 357
    return-object v0

    .line 360
    .end local v1    # "customSet":Z
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v1

    .line 361
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-nez v1, :cond_2

    .line 362
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v2

    .line 364
    :cond_2
    const-string v2, "minValue"

    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mVuiMinValue:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mVuiMinValue:I

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    :goto_0
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 365
    const-string v2, "maxValue"

    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mVuiMaxValue:I

    if-eq v3, v4, :cond_4

    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mVuiMaxValue:I

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    :goto_1
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 366
    const-string v2, "interval"

    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mVuiInterval:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mVuiInterval:F

    float-to-int v3, v3

    goto :goto_2

    :cond_5
    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    sub-int/2addr v3, v4

    int-to-double v3, v3

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    :goto_2
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 367
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_3

    .line 368
    :catch_0
    move-exception v1

    .line 371
    :goto_3
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 67
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 68
    return v1

    .line 70
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_e

    .line 142
    :pswitch_0
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mIsDragging:Z

    if-eqz v0, :cond_1

    .line 143
    iput-boolean v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mIsDragging:Z

    .line 145
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->invalidateAll()V

    goto/16 :goto_e

    .line 99
    :pswitch_1
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mIsDragging:Z

    if-eqz v0, :cond_2

    .line 100
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->calculateIndicatorFromTouch(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mProgressViewLength:F

    .line 101
    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xui/widget/slider/XSlider;->notifyChildren(ZZ)V

    .line 102
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->invalidateAll()V

    goto/16 :goto_e

    .line 104
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 105
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 106
    .local v3, "y":F
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getOrientation()I

    move-result v4

    if-nez v4, :cond_4

    .line 107
    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mTouchDownX:F

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mScaledTouchSlop:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 108
    :goto_0
    move v4, v1

    goto :goto_2

    .line 107
    :cond_3
    nop

    .line 108
    :goto_1
    move v4, v2

    goto :goto_2

    :cond_4
    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mTouchDownY:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mScaledTouchSlop:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    goto :goto_0

    :cond_5
    goto :goto_1

    .line 109
    .local v4, "shouldStartDrag":Z
    :goto_2
    if-eqz v4, :cond_7

    .line 110
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mIsDragging:Z

    .line 111
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->sliderProgressListener:Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;

    if-eqz v5, :cond_6

    .line 112
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->sliderProgressListener:Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;

    invoke-interface {v5, p0}, Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;->onStartTrackingTouch(Lcom/xiaopeng/xui/widget/slider/XSlider;)V

    .line 114
    :cond_6
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->calculateIndicatorFromTouch(Landroid/view/MotionEvent;)F

    move-result v5

    iput v5, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mProgressViewLength:F

    .line 115
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 116
    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xui/widget/slider/XSlider;->notifyChildren(ZZ)V

    .line 117
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->invalidateAll()V

    .line 121
    .end local v0    # "x":F
    .end local v3    # "y":F
    .end local v4    # "shouldStartDrag":Z
    :cond_7
    goto/16 :goto_e

    .line 123
    :pswitch_2
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mIsDragging:Z

    if-eqz v0, :cond_8

    .line 124
    iput-boolean v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mIsDragging:Z

    goto :goto_3

    .line 127
    :cond_8
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->sliderProgressListener:Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;

    if-eqz v0, :cond_9

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->sliderProgressListener:Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;

    invoke-interface {v0, p0}, Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;->onStartTrackingTouch(Lcom/xiaopeng/xui/widget/slider/XSlider;)V

    .line 131
    :cond_9
    :goto_3
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->calculateIndicatorFromTouch(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mProgressViewLength:F

    .line 132
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->stickIndicator()V

    .line 133
    invoke-direct {p0, v1, v1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->notifyChildren(ZZ)V

    .line 134
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->sliderProgressListener:Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;

    if-eqz v0, :cond_a

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->sliderProgressListener:Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;

    invoke-interface {v0, p0}, Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;->onStopTrackingTouch(Lcom/xiaopeng/xui/widget/slider/XSlider;)V

    .line 138
    :cond_a
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->invalidateAll()V

    .line 139
    goto/16 :goto_e

    .line 72
    :pswitch_3
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->isInScrollContainer()Landroid/view/ViewGroup;

    move-result-object v0

    .line 73
    .local v0, "scrollableParent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v1

    goto :goto_4

    :cond_b
    move v3, v2

    .line 74
    .local v3, "canScrollDown":Z
    :goto_4
    const/4 v4, -0x1

    if-eqz v0, :cond_c

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v5

    if-eqz v5, :cond_c

    move v5, v1

    goto :goto_5

    :cond_c
    move v5, v2

    .line 75
    .local v5, "canScrollUp":Z
    :goto_5
    if-nez v3, :cond_e

    if-eqz v5, :cond_d

    goto :goto_6

    :cond_d
    move v6, v2

    goto :goto_7

    :cond_e
    :goto_6
    move v6, v1

    .line 76
    .local v6, "canScrollVertical":Z
    :goto_7
    if-eqz v0, :cond_f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v7

    if-eqz v7, :cond_f

    move v7, v1

    goto :goto_8

    :cond_f
    move v7, v2

    .line 77
    .local v7, "canScrollRight":Z
    :goto_8
    if-eqz v0, :cond_10

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v4

    if-eqz v4, :cond_10

    move v4, v1

    goto :goto_9

    :cond_10
    move v4, v2

    .line 78
    .local v4, "canScrollLeft":Z
    :goto_9
    if-nez v4, :cond_12

    if-eqz v7, :cond_11

    goto :goto_a

    :cond_11
    move v8, v2

    goto :goto_b

    :cond_12
    :goto_a
    move v8, v1

    .line 83
    .local v8, "canScrollHorizontal":Z
    :goto_b
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getOrientation()I

    move-result v9

    if-nez v9, :cond_14

    if-nez v6, :cond_13

    :goto_c
    move v9, v1

    goto :goto_d

    :cond_13
    move v9, v2

    goto :goto_d

    :cond_14
    if-nez v8, :cond_13

    goto :goto_c

    .line 84
    .local v9, "startDrag":Z
    :goto_d
    if-nez v9, :cond_15

    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mTouchDownX:F

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mTouchDownY:F

    goto :goto_e

    .line 88
    :cond_15
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mIsDragging:Z

    .line 89
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-interface {v10, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 90
    iget-object v10, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->sliderProgressListener:Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;

    if-eqz v10, :cond_16

    .line 91
    iget-object v10, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->sliderProgressListener:Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;

    invoke-interface {v10, p0}, Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;->onStartTrackingTouch(Lcom/xiaopeng/xui/widget/slider/XSlider;)V

    .line 93
    :cond_16
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->calculateIndicatorFromTouch(Landroid/view/MotionEvent;)F

    move-result v10

    iput v10, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mProgressViewLength:F

    .line 94
    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xui/widget/slider/XSlider;->notifyChildren(ZZ)V

    .line 95
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->invalidateAll()V

    .line 97
    nop

    .line 150
    .end local v0    # "scrollableParent":Landroid/view/ViewGroup;
    .end local v3    # "canScrollDown":Z
    .end local v4    # "canScrollLeft":Z
    .end local v5    # "canScrollUp":Z
    .end local v6    # "canScrollVertical":Z
    .end local v7    # "canScrollRight":Z
    .end local v8    # "canScrollHorizontal":Z
    .end local v9    # "startDrag":Z
    :goto_e
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onVuiElementEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "vuiEvent"    # Lcom/xiaopeng/vui/commons/model/VuiEvent;

    .line 376
    const-string v0, "slider onVuiElementEvent"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->logD(Ljava/lang/String;)V

    .line 377
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getVuiElementType()Lcom/xiaopeng/vui/commons/VuiElementType;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/vui/commons/VuiElementType;->STATEFULBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    if-ne v1, v2, :cond_1

    .line 379
    return v0

    .line 381
    :cond_1
    invoke-virtual {p2, p2}, Lcom/xiaopeng/vui/commons/model/VuiEvent;->getEventValue(Lcom/xiaopeng/vui/commons/model/VuiEvent;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 382
    .local v1, "value":Ljava/lang/Double;
    if-eqz v1, :cond_5

    .line 383
    const/4 v0, -0x1

    .line 384
    .local v0, "index":I
    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mStep:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 385
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    goto :goto_0

    .line 387
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mStep:I

    int-to-double v6, v2

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v0, v4

    .line 389
    :goto_0
    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    if-lt v0, v2, :cond_4

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    if-le v0, v2, :cond_3

    goto :goto_1

    .line 390
    :cond_3
    invoke-virtual {p0, v0, v3}, Lcom/xiaopeng/xui/widget/slider/XSlider;->setCurrentIndex(IZ)V

    .line 391
    new-instance v2, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$G7bSwaFjR6szpZX2DzaD1OrXsng;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$G7bSwaFjR6szpZX2DzaD1OrXsng;-><init>(Lcom/xiaopeng/xui/widget/slider/XSlider;)V

    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/slider/XSlider;->post(Ljava/lang/Runnable;)Z

    .line 392
    return v3

    .line 389
    :cond_4
    :goto_1
    return v3

    .line 394
    .end local v0    # "index":I
    :cond_5
    return v0
.end method

.method public setAccuracy(F)V
    .locals 0
    .param p1, "accuracy"    # F

    .line 209
    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->accuracy:F

    .line 210
    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 3
    .param p1, "currentIndex"    # I

    .line 226
    const-string v0, "XSlider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->isAttachedToWindow()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->setCurrentIndex(IZ)V

    .line 228
    return-void
.end method

.method public setCurrentIndex(IZ)V
    .locals 1
    .param p1, "currentIndex"    # I
    .param p2, "fromUser"    # Z

    .line 231
    new-instance v0, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$XSlider$6nRMnQGFhZSAnHXSTyWZZ5qLEF4;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$XSlider$6nRMnQGFhZSAnHXSTyWZZ5qLEF4;-><init>(Lcom/xiaopeng/xui/widget/slider/XSlider;IZ)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->post(Ljava/lang/Runnable;)Z

    .line 249
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 253
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 254
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mIsDragging:Z

    .line 256
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->setEnabled(Z)V

    .line 257
    nop

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 258
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->setAlphaByEnable(Z)V

    .line 261
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->invalidate()V

    .line 262
    return-void
.end method

.method public setEndIndex(I)V
    .locals 2
    .param p1, "endIndex"    # I

    .line 278
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    if-eq v0, p1, :cond_0

    .line 281
    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    .line 282
    new-instance v0, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$XSlider$kB2KeMUVNgZs-Tjtgxuk4WuttL4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$XSlider$kB2KeMUVNgZs-Tjtgxuk4WuttL4;-><init>(Lcom/xiaopeng/xui/widget/slider/XSlider;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->post(Ljava/lang/Runnable;)Z

    .line 285
    return-void

    .line 279
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "startIndex = endIndex!!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInitIndex(I)V
    .locals 1
    .param p1, "initIndex"    # I

    .line 288
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    if-le p1, v0, :cond_0

    .line 289
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->initIndex:I

    .line 290
    return-void

    .line 292
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    if-ge p1, v0, :cond_1

    .line 293
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->initIndex:I

    .line 294
    return-void

    .line 296
    :cond_1
    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->initIndex:I

    .line 297
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorValue:F

    .line 298
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->indicatorValue:F

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->calculateProgressView(F)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->mProgressViewLength:F

    .line 299
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->invalidate()V

    .line 300
    return-void
.end method

.method public setProgressChangeListener(Lcom/xiaopeng/xui/widget/slider/XSlider$ProgressChangeListener;)V
    .locals 0
    .param p1, "progressChangeListener"    # Lcom/xiaopeng/xui/widget/slider/XSlider$ProgressChangeListener;

    .line 217
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->progressChangeListener:Lcom/xiaopeng/xui/widget/slider/XSlider$ProgressChangeListener;

    .line 218
    return-void
.end method

.method public setSliderProgressListener(Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;)V
    .locals 0
    .param p1, "sliderProgressListener"    # Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;

    .line 213
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->sliderProgressListener:Lcom/xiaopeng/xui/widget/slider/XSlider$SliderProgressListener;

    .line 214
    return-void
.end method

.method public setStartIndex(I)V
    .locals 2
    .param p1, "startIndex"    # I

    .line 265
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->endIndex:I

    if-eq p1, v0, :cond_0

    .line 268
    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;->startIndex:I

    .line 269
    new-instance v0, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$XSlider$Xz60DHZ7J60ywvILqd--vaYYV3k;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$XSlider$Xz60DHZ7J60ywvILqd--vaYYV3k;-><init>(Lcom/xiaopeng/xui/widget/slider/XSlider;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->post(Ljava/lang/Runnable;)Z

    .line 275
    return-void

    .line 266
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "startIndex = endIndex!!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showVuiFloating()V
    .locals 6

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
    .local v0, "offsetY":I
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

    .line 401
    .local v1, "progressY":F
    :goto_0
    float-to-int v3, v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getSliderLength()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 403
    .local v3, "offsetX":I
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getOrientation()I

    move-result v4

    if-ne v4, v2, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v0

    .line 404
    .local v4, "resultOffsetY":I
    :goto_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->getOrientation()I

    move-result v5

    if-ne v5, v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v3

    .line 405
    .local v2, "resultOffsetX":I
    :goto_2
    invoke-static {p0, v2, v4}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;II)V

    .line 406
    return-void
.end method

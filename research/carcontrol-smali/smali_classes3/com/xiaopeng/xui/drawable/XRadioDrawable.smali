.class public Lcom/xiaopeng/xui/drawable/XRadioDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "XRadioDrawable.java"


# instance fields
.field private DIMEN_16:F

.field private DIMEN_16_5:F

.field private DIMEN_18:F

.field private DIMEN_3:F

.field private DIMEN_8:F

.field private mBgColor:I

.field private mBgDisableColor:I

.field private mBgEnableNormalColor:I

.field private mBgEnablePressedColor:I

.field private mCenterX:F

.field private mCenterY:F

.field private mCircleColor:I

.field private mCircleDisableColor:I

.field private mCircleEnableColor:I

.field private mHeight:F

.field private mInnerColor:I

.field private mInnerDisableColor:I

.field private mInnerEnableColor:I

.field private mInnerRadius:F

.field private mLeft:F

.field private mPaint:Landroid/graphics/Paint;

.field private mTop:F

.field private mWidth:F

.field private final stateSpecCheck:[I

.field private final stateSpecEnable:[I

.field private final stateSpecPress:[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 21
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, 0x41800000    # 16.0f

    .line 24
    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->DIMEN_16:F

    const/high16 v0, 0x41840000    # 16.5f

    .line 25
    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->DIMEN_16_5:F

    const/high16 v0, 0x40400000    # 3.0f

    .line 26
    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->DIMEN_3:F

    const/high16 v0, 0x41000000    # 8.0f

    .line 27
    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->DIMEN_8:F

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a7

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 50
    iput-object v1, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->stateSpecPress:[I

    new-array v1, v0, [I

    const v2, 0x101009e

    aput v2, v1, v3

    .line 51
    iput-object v1, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->stateSpecEnable:[I

    new-array v0, v0, [I

    const v1, 0x10100a0

    aput v1, v0, v3

    .line 52
    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->stateSpecCheck:[I

    return-void
.end method

.method private changeParams()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->stateSpecEnable:[I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->getState()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->stateSpecPress:[I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->getState()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mBgEnablePressedColor:I

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mBgColor:I

    goto :goto_0

    .line 100
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mBgEnableNormalColor:I

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mBgColor:I

    .line 102
    :goto_0
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mCircleEnableColor:I

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mCircleColor:I

    .line 103
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mInnerEnableColor:I

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mInnerColor:I

    goto :goto_1

    .line 105
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mBgDisableColor:I

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mBgColor:I

    .line 106
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mCircleDisableColor:I

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mCircleColor:I

    .line 107
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mInnerDisableColor:I

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mInnerColor:I

    .line 109
    :goto_1
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->updateInnerShape()V

    return-void
.end method

.method private inflateAttrs(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V
    .locals 2

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    .line 72
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_theme_primary_neutral_normal:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mBgEnableNormalColor:I

    .line 73
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_theme_primary_neutral_pressed:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mBgEnablePressedColor:I

    .line 74
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_theme_primary_neutral_disable:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mBgDisableColor:I

    .line 76
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_theme_primary_normal:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mCircleEnableColor:I

    .line 77
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_radio_disable_color:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mCircleDisableColor:I

    .line 79
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_radio_inner_color:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mInnerEnableColor:I

    .line 80
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_radio_inner_disable_color:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mInnerDisableColor:I

    const/high16 p2, 0x41900000    # 18.0f

    .line 83
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 82
    invoke-static {v1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->DIMEN_18:F

    const/high16 p2, 0x41800000    # 16.0f

    .line 85
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 84
    invoke-static {v1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->DIMEN_16:F

    const/high16 p2, 0x41840000    # 16.5f

    .line 87
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 86
    invoke-static {v1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->DIMEN_16_5:F

    const/high16 p2, 0x40400000    # 3.0f

    .line 89
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 88
    invoke-static {v1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->DIMEN_3:F

    const/high16 p2, 0x41000000    # 8.0f

    .line 91
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 90
    invoke-static {v1, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->DIMEN_8:F

    :cond_0
    return-void
.end method

.method private updateInnerShape()V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->stateSpecCheck:[I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->getState()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mCenterX:F

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->DIMEN_16_5:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mLeft:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    .line 115
    iput v1, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mWidth:F

    .line 116
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mCenterY:F

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mTop:F

    const/4 v0, 0x0

    .line 117
    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mHeight:F

    .line 118
    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mInnerRadius:F

    goto :goto_0

    .line 120
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mCenterX:F

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->DIMEN_8:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mLeft:F

    .line 121
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->DIMEN_16:F

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mWidth:F

    .line 122
    iget v2, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mCenterY:F

    sub-float/2addr v2, v1

    iput v2, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mTop:F

    .line 123
    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mHeight:F

    .line 124
    iput v1, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mInnerRadius:F

    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mBgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mCenterX:F

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mCenterY:F

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->DIMEN_18:F

    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mCircleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->stateSpecCheck:[I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->getState()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->DIMEN_3:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 139
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mCenterX:F

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mCenterY:F

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->DIMEN_16_5:F

    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 141
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mCenterX:F

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mCenterY:F

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->DIMEN_18:F

    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 143
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mInnerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    iget v3, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mLeft:F

    iget v4, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mTop:F

    iget v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mWidth:F

    add-float v5, v3, v0

    iget v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mHeight:F

    add-float v6, v4, v0

    iget v8, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mInnerRadius:F

    iget-object v9, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v7, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 0

    const/4 p2, 0x0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->inflateAttrs(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p4}, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->inflateAttrs(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2

    .line 172
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 173
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mCenterX:F

    .line 174
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    iput p1, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mCenterY:F

    .line 175
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->changeParams()V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 0

    .line 161
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->changeParams()V

    const/4 p1, 0x1

    return p1
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

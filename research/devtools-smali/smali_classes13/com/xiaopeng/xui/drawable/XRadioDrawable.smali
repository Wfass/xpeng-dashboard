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

    .line 19
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 22
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->DIMEN_16:F

    .line 23
    const/high16 v0, 0x41840000    # 16.5f

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->DIMEN_16_5:F

    .line 24
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->DIMEN_3:F

    .line 25
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->DIMEN_8:F

    .line 48
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10100a7

    aput v3, v1, v2

    iput-object v1, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->stateSpecPress:[I

    .line 49
    new-array v1, v0, [I

    const v3, 0x101009e

    aput v3, v1, v2

    iput-object v1, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->stateSpecEnable:[I

    .line 50
    new-array v0, v0, [I

    const v1, 0x10100a0

    aput v1, v0, v2

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->stateSpecCheck:[I

    return-void
.end method

.method private changeParams()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->stateSpecEnable:[I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->getState()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->stateSpecPress:[I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->getState()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mBgEnablePressedColor:I

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mBgColor:I

    goto :goto_0

    .line 98
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mBgEnableNormalColor:I

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mBgColor:I

    .line 100
    :goto_0
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mCircleEnableColor:I

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mCircleColor:I

    .line 101
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mInnerEnableColor:I

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mInnerColor:I

    goto :goto_1

    .line 103
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mBgDisableColor:I

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mBgColor:I

    .line 104
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mCircleDisableColor:I

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mCircleColor:I

    .line 105
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mInnerDisableColor:I

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mInnerColor:I

    .line 107
    :goto_1
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->updateInnerShape()V

    .line 108
    return-void
.end method

.method private inflateAttrs(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V
    .locals 2

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mPaint:Landroid/graphics/Paint;

    .line 69
    if-eqz p1, :cond_0

    .line 70
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_theme_primary_neutral_normal:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mBgEnableNormalColor:I

    .line 71
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_theme_primary_neutral_pressed:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mBgEnablePressedColor:I

    .line 72
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_theme_primary_neutral_disable:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mBgDisableColor:I

    .line 74
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_theme_primary_normal:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mCircleEnableColor:I

    .line 75
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_radio_disable_color:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mCircleDisableColor:I

    .line 77
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_radio_inner_color:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mInnerEnableColor:I

    .line 78
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_radio_inner_disable_color:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mInnerDisableColor:I

    .line 80
    const/high16 p2, 0x41900000    # 18.0f

    .line 81
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 80
    invoke-static {v1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->DIMEN_18:F

    .line 82
    const/high16 p2, 0x41800000    # 16.0f

    .line 83
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 82
    invoke-static {v1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->DIMEN_16:F

    .line 84
    const/high16 p2, 0x41840000    # 16.5f

    .line 85
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 84
    invoke-static {v1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->DIMEN_16_5:F

    .line 86
    const/high16 p2, 0x40400000    # 3.0f

    .line 87
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 86
    invoke-static {v1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->DIMEN_3:F

    .line 88
    const/high16 p2, 0x41000000    # 8.0f

    .line 89
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 88
    invoke-static {v1, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->DIMEN_8:F

    .line 91
    :cond_0
    return-void
.end method

.method private updateInnerShape()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->stateSpecCheck:[I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->getState()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mCenterX:F

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->DIMEN_16_5:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mLeft:F

    .line 113
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->DIMEN_16_5:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mWidth:F

    .line 114
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mCenterY:F

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mTop:F

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mHeight:F

    .line 116
    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mInnerRadius:F

    goto :goto_0

    .line 118
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mCenterX:F

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->DIMEN_8:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mLeft:F

    .line 119
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->DIMEN_16:F

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mWidth:F

    .line 120
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mCenterY:F

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->DIMEN_8:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mTop:F

    .line 121
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->DIMEN_16:F

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mHeight:F

    .line 122
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->DIMEN_8:F

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mInnerRadius:F

    .line 124
    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mBgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mCenterX:F

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mCenterY:F

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->DIMEN_18:F

    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mCircleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->stateSpecCheck:[I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->getState()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->DIMEN_3:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 137
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mCenterX:F

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mCenterY:F

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->DIMEN_16_5:F

    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 139
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mCenterX:F

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mCenterY:F

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->DIMEN_18:F

    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 141
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mInnerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    iget v3, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mLeft:F

    iget v4, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mTop:F

    iget v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mLeft:F

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mWidth:F

    add-float v5, v0, v1

    iget v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mTop:F

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mHeight:F

    add-float v6, v0, v1

    iget v7, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mInnerRadius:F

    iget v8, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mInnerRadius:F

    iget-object v9, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 145
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 64
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->inflateAttrs(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    .line 65
    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 58
    invoke-direct {p0, p1, p4}, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->inflateAttrs(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    .line 59
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2

    .line 170
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 171
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mCenterX:F

    .line 172
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    iput p1, p0, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->mCenterY:F

    .line 173
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->changeParams()V

    .line 174
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 0

    .line 159
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/XRadioDrawable;->changeParams()V

    .line 160
    const/4 p1, 0x1

    return p1
.end method

.method public setAlpha(I)V
    .locals 0

    .line 150
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 155
    return-void
.end method

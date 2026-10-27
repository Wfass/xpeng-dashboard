.class public abstract Lcom/xiaopeng/xui/widget/slider/AbsSlider;
.super Lcom/xiaopeng/xui/widget/XViewGroup;
.source "AbsSlider.java"

# interfaces
.implements Lcom/xiaopeng/vui/commons/IVuiElementListener;


# static fields
.field protected static final BG_ITEM_MARGIN:I = 0x12

.field protected static final BG_ITEM_SIZE:I = 0x1e

.field protected static final BG_ITEM_SIZE_MIN:I = 0x3

.field protected static final CHILDREN_LAYOUT_HEIGHT:I = 0x28

.field protected static final CHILDREN_LAYOUT_WIDTH:I = 0x14

.field protected static final INDICATOR_HOLD_HORIZONTAL:I = 0x0

.field protected static final INDICATOR_HOLD_VERTICAL:I = 0x28

.field protected static final INDICATOR_MARGIN:I = 0x10

.field private static final INDICATOR_OUTER:I = 0x7

.field public static final ORIENTATION_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AbsSlider"


# instance fields
.field protected accuracy:F

.field protected bgItemGap:F

.field protected currentUpdateIndex:F

.field protected decimal:I

.field protected decimalFormat:Ljava/text/DecimalFormat;

.field private desireHeight:F

.field private final desireWidth:F

.field protected disableAlpha:I

.field protected dismissPop:Z

.field private final enableAlpha:I

.field protected endIndex:I

.field protected hidePop:Z

.field indicatorDrawable:Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;

.field protected indicatorValue:F

.field protected initIndex:I

.field protected isNight:Z

.field private itemCount:I

.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mBgDrawableRes:I

.field protected mBgThickness:F

.field protected mBgThicknessHalf:F

.field private mHeight:I

.field protected mIsDragging:Z

.field protected mOrientation:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressDrawableRes:I

.field protected mProgressViewLength:F

.field protected mScaledTouchSlop:F

.field protected mStep:I

.field protected mTextTagSize:I

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbResId:I

.field private mTickMarkStyleRes:I

.field protected mTouchDownX:F

.field protected mTouchDownY:F

.field private mWidth:I

.field protected prefixUnit:Ljava/lang/String;

.field protected startIndex:I

.field protected unit:Ljava/lang/String;

.field protected upperLimit:I

.field protected workableTotalLength:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 135
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 v0, 0x5c

    .line 67
    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->enableAlpha:I

    const/high16 v0, 0x44210000    # 644.0f

    .line 68
    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->desireWidth:F

    const/16 v0, 0x28

    .line 73
    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->disableAlpha:I

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->initIndex:I

    const/high16 v0, -0x80000000

    .line 79
    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->upperLimit:I

    const/high16 v0, 0x42000000    # 32.0f

    .line 80
    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgThickness:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 81
    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgThicknessHalf:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 88
    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->accuracy:F

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->dismissPop:Z

    const/4 v1, 0x1

    .line 96
    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mStep:I

    .line 98
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->hidePop:Z

    const/high16 v1, 0x42c80000    # 100.0f

    .line 105
    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->desireHeight:F

    const/16 v1, 0x1e

    .line 106
    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->itemCount:I

    .line 111
    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mOrientation:I

    .line 113
    sget v1, Lcom/xiaopeng/xpui/R$style;->XSliderLine:I

    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mTickMarkStyleRes:I

    .line 136
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->setWillNotDraw(Z)V

    .line 137
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->initView(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 138
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xui/theme/XThemeManager;->isNight(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->isNight:Z

    :cond_0
    return-void
.end method

.method private applyStyleValues()V
    .locals 4

    .line 292
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->itemCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 293
    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->itemCount:I

    .line 295
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->dismissPop:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 296
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->hidePop:Z

    const/high16 v0, 0x42000000    # 32.0f

    .line 297
    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->desireHeight:F

    .line 299
    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->hidePop:Z

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const/16 v0, 0x28

    .line 300
    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mTextTagSize:I

    goto :goto_0

    .line 302
    :cond_2
    iput v2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mTextTagSize:I

    .line 304
    :goto_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mOrientation:I

    const/16 v3, 0x50

    if-ne v0, v1, :cond_3

    .line 305
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->setMinimumWidth(I)V

    .line 306
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->setMinimumHeight(I)V

    goto :goto_1

    .line 308
    :cond_3
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->setMinimumWidth(I)V

    .line 309
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->setMinimumHeight(I)V

    :goto_1
    const/4 v0, 0x0

    .line 311
    invoke-super {p0, v0}, Lcom/xiaopeng/xui/widget/XViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 313
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getChildCount()I

    move-result v0

    :goto_2
    if-ge v2, v0, :cond_5

    .line 315
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 316
    instance-of v3, v1, Lcom/xiaopeng/xui/widget/slider/SlideLineView;

    if-eqz v3, :cond_4

    .line 317
    check-cast v1, Lcom/xiaopeng/xui/widget/slider/SlideLineView;

    .line 318
    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mTickMarkStyleRes:I

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->setStyle(I)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 321
    :cond_5
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->invalidate()V

    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 181
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mScaledTouchSlop:F

    .line 183
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/xpui/R$styleable;->XSlider:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 184
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XSlider_android_layout_width:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mWidth:I

    .line 185
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XSlider_android_layout_height:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mHeight:I

    .line 186
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mWidth:I

    invoke-direct {p0, v1, p3}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->setWorkableTotalLength(II)V

    .line 187
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_unit:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->unit:Ljava/lang/String;

    .line 188
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_start_index:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->startIndex:I

    .line 189
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_step:I

    const/4 v1, 0x1

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mStep:I

    .line 190
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_init_index:I

    const/4 v2, -0x1

    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->initIndex:I

    .line 191
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_end_index:I

    const/16 v3, 0x64

    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->endIndex:I

    .line 192
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_upper_limit:I

    const/high16 v3, -0x80000000

    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->upperLimit:I

    .line 193
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_index_decimal:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->decimal:I

    .line 194
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_unit_prefix:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->prefixUnit:Ljava/lang/String;

    .line 195
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_accuracy:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->accuracy:F

    .line 196
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 197
    iget p1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->initIndex:I

    if-ne p1, v2, :cond_0

    .line 198
    iget p1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->startIndex:I

    iget p3, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->endIndex:I

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->initIndex:I

    .line 200
    :cond_0
    iget p1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->initIndex:I

    iget p3, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->startIndex:I

    sub-int/2addr p1, p3

    int-to-float p1, p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->indicatorValue:F

    .line 201
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->calculateProgressView(F)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressViewLength:F

    .line 202
    iget p1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->endIndex:I

    iget p3, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->startIndex:I

    if-eq p1, p3, :cond_7

    .line 205
    iget p1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->decimal:I

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    new-instance p1, Ljava/text/DecimalFormat;

    const-string p3, "0.0"

    invoke-direct {p1, p3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/text/DecimalFormat;

    const-string p3, "0.00"

    invoke-direct {p1, p3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->decimalFormat:Ljava/text/DecimalFormat;

    if-eqz p1, :cond_3

    .line 209
    sget-object p3, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {p1, p3}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 211
    :cond_3
    iget p1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->accuracy:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_6

    .line 212
    iget p1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->decimal:I

    if-nez p1, :cond_4

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_4
    if-ne p1, v1, :cond_5

    const p1, 0x3dcccccd    # 0.1f

    goto :goto_1

    :cond_5
    const p1, 0x3c23d70a    # 0.01f

    :goto_1
    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->accuracy:F

    .line 215
    :cond_6
    invoke-direct {p0, p2, p4}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->setStyle(Landroid/util/AttributeSet;I)V

    return-void

    .line 203
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "startIndex = endIndex!!! please check the xml"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readStyleAttrs(Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/xpui/R$styleable;->XSlider:[I

    invoke-virtual {v1, p1, v2, v0, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XSlider:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 244
    :goto_0
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 245
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_background:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgDrawableRes:I

    .line 248
    :cond_1
    iget p2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgDrawableRes:I

    if-eqz p2, :cond_2

    .line 249
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getContext()Landroid/content/Context;

    move-result-object p2

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgDrawableRes:I

    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_1

    .line 251
    :cond_2
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_background:I

    const/16 v1, -0x7800

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 252
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object p2, v1

    .line 254
    :goto_1
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->setSliderBackground(Landroid/graphics/drawable/Drawable;)V

    .line 256
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_progress_drawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 257
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_progress_drawable:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressDrawableRes:I

    .line 260
    :cond_3
    iget p2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressDrawableRes:I

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    .line 261
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getContext()Landroid/content/Context;

    move-result-object p2

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressDrawableRes:I

    invoke-static {p2, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_2

    :cond_4
    move-object p2, v1

    .line 263
    :goto_2
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->setSliderProgress(Landroid/graphics/drawable/Drawable;)V

    .line 265
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_hide_pop:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 266
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_hide_pop:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->hidePop:Z

    .line 268
    :cond_5
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_dismiss_pop:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 269
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_dismiss_pop:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->dismissPop:Z

    .line 271
    :cond_6
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_item_count:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 272
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_item_count:I

    const/16 v2, 0x1e

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->itemCount:I

    .line 274
    :cond_7
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_orientation:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 275
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_orientation:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mOrientation:I

    .line 277
    :cond_8
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_thumb:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 278
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_thumb:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mThumbResId:I

    .line 281
    :cond_9
    iget p2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mThumbResId:I

    if-eqz p2, :cond_a

    .line 282
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getContext()Landroid/content/Context;

    move-result-object p2

    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mThumbResId:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 284
    :cond_a
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 285
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_tickMarkStyle:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 286
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_tickMarkStyle:I

    sget v0, Lcom/xiaopeng/xpui/R$style;->XSliderLine:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mTickMarkStyleRes:I

    .line 288
    :cond_b
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private resetAlpha(II)I
    .locals 1

    const v0, 0xffffff

    and-int/2addr p1, v0

    shl-int/lit8 p2, p2, 0x18

    or-int/2addr p1, p2

    return p1
.end method

.method private setBackgroundBounds()V
    .locals 5

    .line 397
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getHeightExIndicator()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgThicknessHalf:F

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 398
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getWidthExIndicator()F

    move-result v2

    float-to-int v2, v2

    .line 399
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getHeightExIndicator()F

    move-result v3

    div-float/2addr v3, v1

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgThicknessHalf:F

    add-float/2addr v3, v1

    float-to-int v1, v3

    .line 400
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    .line 401
    invoke-virtual {v3, v4, v0, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method private setStyle(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 223
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->readStyleAttrs(Landroid/util/AttributeSet;I)V

    .line 224
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->applyStyleValues()V

    .line 226
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->hidePop:Z

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;

    invoke-direct {v0}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->indicatorDrawable:Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;

    .line 228
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->inflateAttr(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;I)V

    .line 229
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->indicatorDrawable:Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getDrawableState()[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->setState([I)Z

    .line 230
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->indicatorDrawable:Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;

    invoke-virtual {p1, p0}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 231
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->indicatorDrawable:Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->filterValidValue()F

    move-result p2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getPopString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getSliderLength()I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->updateCenter(FLjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private setWorkableTotalLength(II)V
    .locals 2

    .line 466
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mOrientation:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    add-int/lit8 p1, p1, -0x20

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->workableTotalLength:I

    return-void
.end method

.method private upperLimitDistance()I
    .locals 4

    .line 654
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->upperLimit:I

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_0

    return v1

    .line 658
    :cond_0
    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->startIndex:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->endIndex:I

    if-ge v2, v3, :cond_1

    if-gt v2, v0, :cond_1

    if-gt v0, v3, :cond_1

    sub-int v0, v3, v0

    .line 660
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->workableTotalLength:I

    mul-int/2addr v0, v1

    sub-int/2addr v3, v2

    div-int/2addr v0, v3

    return v0

    :cond_1
    return v1
.end method


# virtual methods
.method protected calculateProgressView(F)F
    .locals 2

    .line 470
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->endIndex:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->startIndex:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->workableTotalLength:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    const/high16 v0, 0x41800000    # 16.0f

    add-float/2addr p1, v0

    return p1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 578
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 579
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mOrientation:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 580
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, 0x43870000    # 270.0f

    .line 581
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 584
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 585
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->filterValidValue()F

    move-result v1

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    return-void

    .line 589
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getHeightExIndicator()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 590
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->indicatorDrawable:Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;

    if-eqz v4, :cond_2

    .line 591
    invoke-virtual {v4, p1}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 593
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    return-void

    .line 597
    :cond_3
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    .line 598
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    .line 599
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    sub-float/2addr v1, v5

    sub-float/2addr v2, v4

    .line 602
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    float-to-int v4, v1

    float-to-int v5, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v1, v6

    float-to-int v1, v1

    iget-object v6, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v2, v6

    float-to-int v2, v2

    invoke-virtual {v3, v4, v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 603
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 605
    :cond_4
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 3

    .line 551
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XViewGroup;->drawableStateChanged()V

    .line 553
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getDrawableState()[I

    move-result-object v0

    .line 554
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->indicatorDrawable:Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;

    if-eqz v1, :cond_0

    .line 555
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 556
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 557
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 560
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 561
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 562
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 565
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 566
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 567
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 570
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 571
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 572
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method protected filterValidValue()F
    .locals 3

    .line 643
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressViewLength:F

    const/high16 v1, 0x41800000    # 16.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return v1

    .line 646
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getSliderLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x10

    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->upperLimitDistance()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 647
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressViewLength:F

    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method public getHeightExIndicator()F
    .locals 2

    .line 614
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getSliderThickness()I

    move-result v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mTextTagSize:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method public getIndicatorValue()F
    .locals 2

    .line 532
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->indicatorValue:F

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->startIndex:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mStep:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 609
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mOrientation:I

    return v0
.end method

.method protected getPopString()Ljava/lang/String;
    .locals 4

    .line 673
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->unit:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 674
    iput-object v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->unit:Ljava/lang/String;

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->prefixUnit:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 677
    iput-object v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->prefixUnit:Ljava/lang/String;

    .line 679
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->decimalFormat:Ljava/text/DecimalFormat;

    if-nez v0, :cond_3

    .line 680
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mStep:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->prefixUnit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->startIndex:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->indicatorValue:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->unit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 683
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->prefixUnit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getIndicatorValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->unit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 686
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->prefixUnit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->decimalFormat:Ljava/text/DecimalFormat;

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->startIndex:I

    int-to-float v2, v2

    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->indicatorValue:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mStep:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->unit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgressViewLength()F
    .locals 1

    .line 633
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressViewLength:F

    return v0
.end method

.method public getSliderLength()I
    .locals 2

    .line 624
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mHeight:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mWidth:I

    :goto_0
    return v0
.end method

.method public getSliderThickness()I
    .locals 2

    .line 629
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mWidth:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mHeight:I

    :goto_0
    return v0
.end method

.method public getWidthExIndicator()F
    .locals 1

    .line 619
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getSliderLength()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method protected invalidateAll()V
    .locals 4

    .line 500
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->invalidate()V

    .line 501
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->indicatorDrawable:Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;

    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->filterValidValue()F

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getPopString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getSliderLength()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->updateCenter(FLjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method protected isInScrollContainer()Landroid/view/ViewGroup;
    .locals 3

    .line 507
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 508
    :goto_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 509
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 510
    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 513
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 709
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XViewGroup;->onAttachedToWindow()V

    .line 710
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 711
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xui/theme/XThemeManager;->isNight(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->isNight:Z

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 145
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 146
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 147
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xui/theme/XThemeManager;->isNight(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->isNight:Z

    .line 148
    invoke-static {p1}, Lcom/xiaopeng/xui/theme/XThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 149
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->indicatorDrawable:Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;

    if-eqz p1, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->refreshUI(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    .line 154
    :cond_0
    iget p1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mThumbResId:I

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mThumbResId:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 157
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 159
    iget p1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgDrawableRes:I

    if-eqz p1, :cond_2

    .line 160
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgDrawableRes:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 161
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->setSliderBackground(Landroid/graphics/drawable/Drawable;)V

    .line 165
    :cond_2
    iget p1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressDrawableRes:I

    if-eqz p1, :cond_3

    .line 166
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressDrawableRes:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 168
    :cond_3
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->setSliderProgress(Landroid/graphics/drawable/Drawable;)V

    .line 171
    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->invalidate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 703
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 407
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 409
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 410
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, 0x43870000    # 270.0f

    .line 411
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 416
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 417
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 420
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 422
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getHeightExIndicator()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgThicknessHalf:F

    sub-float/2addr v1, v3

    float-to-int v1, v1

    .line 424
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 425
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_2
    move v3, v4

    .line 427
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->filterValidValue()F

    move-result v5

    int-to-float v3, v3

    add-float/2addr v5, v3

    const/high16 v3, 0x40e00000    # 7.0f

    add-float/2addr v5, v3

    float-to-int v3, v5

    .line 428
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getHeightExIndicator()F

    move-result v5

    div-float/2addr v5, v2

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgThicknessHalf:F

    add-float/2addr v5, v2

    float-to-int v2, v5

    .line 429
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v4, v1, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 430
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 433
    :cond_3
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 486
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getChildCount()I

    move-result p1

    .line 487
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getSliderLength()I

    move-result p2

    add-int/lit8 p2, p2, -0x24

    int-to-float p2, p2

    add-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    div-float/2addr p2, p1

    const/4 p1, 0x0

    .line 488
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getChildCount()I

    move-result p3

    if-ge p1, p3, :cond_0

    .line 489
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    const/high16 p4, 0x41900000    # 18.0f

    int-to-float p5, p1

    mul-float/2addr p5, p2

    add-float/2addr p5, p4

    const/high16 p4, 0x41200000    # 10.0f

    sub-float v0, p5, p4

    float-to-int v0, v0

    .line 491
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getHeightExIndicator()F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x14

    add-float/2addr p5, p4

    float-to-int p4, p5

    .line 493
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getHeightExIndicator()F

    move-result p5

    float-to-int p5, p5

    div-int/lit8 p5, p5, 0x2

    add-int/lit8 p5, p5, 0x14

    .line 494
    invoke-virtual {p3, v0, v1, p4, p5}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 370
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XViewGroup;->onMeasure(II)V

    .line 373
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mOrientation:I

    const/16 v1, 0x284

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 374
    iget p1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->desireHeight:F

    float-to-int p1, p1

    .line 375
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p2, v0, :cond_0

    goto :goto_1

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getMeasuredHeight()I

    move-result v1

    goto :goto_1

    .line 382
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 p2, -0x80000000

    if-ne p1, p2, :cond_2

    goto :goto_0

    .line 385
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getMeasuredWidth()I

    move-result v1

    .line 387
    :goto_0
    iget p1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->desireHeight:F

    float-to-int p1, p1

    move v3, v1

    move v1, p1

    move p1, v3

    .line 390
    :goto_1
    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mWidth:I

    .line 391
    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mHeight:I

    .line 392
    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    .line 448
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XViewGroup;->onSizeChanged(IIII)V

    const/4 p3, 0x0

    .line 449
    invoke-virtual {p0, p3, p3, p3, p3}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->setPadding(IIII)V

    .line 450
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->setWorkableTotalLength(II)V

    .line 451
    iget p1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->workableTotalLength:I

    int-to-float p1, p1

    iget p2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->itemCount:I

    const/4 p4, 0x1

    sub-int/2addr p2, p4

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->bgItemGap:F

    move p1, p3

    .line 452
    :goto_0
    iget p2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->itemCount:I

    if-ge p1, p2, :cond_1

    .line 453
    new-instance p2, Lcom/xiaopeng/xui/widget/slider/SlideLineView;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressViewLength:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->bgItemGap:F

    int-to-float v3, p1

    mul-float/2addr v2, v3

    const/high16 v3, 0x41800000    # 16.0f

    add-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    move v1, p4

    goto :goto_1

    :cond_0
    move v1, p3

    :goto_1
    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mTickMarkStyleRes:I

    invoke-direct {p2, v0, v1, v2}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;-><init>(Landroid/content/Context;ZI)V

    .line 454
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->addView(Landroid/view/View;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 457
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->indicatorDrawable:Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;

    if-eqz p1, :cond_2

    .line 458
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->filterValidValue()F

    move-result p2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getPopString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getSliderLength()I

    move-result p4

    invoke-virtual {p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->updateCenter(FLjava/lang/String;I)V

    .line 461
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->setBackgroundBounds()V

    .line 462
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->invalidate()V

    return-void
.end method

.method public setAccuracy(F)V
    .locals 0

    .line 541
    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->accuracy:F

    return-void
.end method

.method protected setAlphaByEnable(Z)V
    .locals 0

    return-void
.end method

.method public setSliderBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 326
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 329
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 330
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 332
    :cond_1
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 333
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->setBackgroundBounds()V

    .line 334
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 335
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setSliderProgress(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 341
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 344
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 345
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 347
    :cond_1
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 349
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setStyle(I)V
    .locals 1

    const/4 v0, 0x0

    .line 219
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->setStyle(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 355
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 358
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 359
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 361
    :cond_1
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 363
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method protected stickIndicator()V
    .locals 3

    .line 519
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mStep:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 522
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->workableTotalLength:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->endIndex:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->startIndex:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 523
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressViewLength:F

    const/high16 v2, 0x41800000    # 16.0f

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    float-to-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    .line 526
    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressViewLength:F

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    if-eq p1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->indicatorDrawable:Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;

    if-eqz v0, :cond_1

    if-eq p1, v0, :cond_2

    :cond_1
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

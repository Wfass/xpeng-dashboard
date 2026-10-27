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
    .param p1, "context"    # Landroid/content/Context;

    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 135
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 67
    const/16 v0, 0x5c

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->enableAlpha:I

    .line 68
    const/high16 v0, 0x44210000    # 644.0f

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->desireWidth:F

    .line 73
    const/16 v0, 0x28

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->disableAlpha:I

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->initIndex:I

    .line 79
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->upperLimit:I

    .line 80
    const/high16 v0, 0x42000000    # 32.0f

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgThickness:F

    .line 81
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgThickness:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgThicknessHalf:F

    .line 88
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->accuracy:F

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->dismissPop:Z

    .line 96
    const/4 v1, 0x1

    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mStep:I

    .line 98
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->hidePop:Z

    .line 105
    const/high16 v1, 0x42c80000    # 100.0f

    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->desireHeight:F

    .line 106
    const/16 v1, 0x1e

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

    move-result v0

    if-nez v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xui/theme/XThemeManager;->isNight(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->isNight:Z

    .line 141
    :cond_0
    return-void
.end method

.method private applyStyleValues()V
    .locals 5

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

    .line 297
    const/high16 v0, 0x42000000    # 32.0f

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->desireHeight:F

    .line 299
    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->hidePop:Z

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 300
    const/16 v0, 0x28

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

    .line 311
    :goto_1
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/xiaopeng/xui/widget/XViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 313
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getChildCount()I

    move-result v0

    .line 314
    .local v0, "childCount":I
    nop

    .local v2, "i":I
    :goto_2
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    if-ge v1, v0, :cond_5

    .line 315
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 316
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Lcom/xiaopeng/xui/widget/slider/SlideLineView;

    if-eqz v3, :cond_4

    .line 317
    move-object v3, v2

    check-cast v3, Lcom/xiaopeng/xui/widget/slider/SlideLineView;

    .line 318
    .local v3, "slideLineView":Lcom/xiaopeng/xui/widget/slider/SlideLineView;
    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mTickMarkStyleRes:I

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->setStyle(I)V

    .line 314
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "slideLineView":Lcom/xiaopeng/xui/widget/slider/SlideLineView;
    :cond_4
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    goto :goto_2

    .line 321
    .end local v2    # "i":I
    :cond_5
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->invalidate()V

    .line 322
    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 181
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mScaledTouchSlop:F

    .line 183
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XSlider:[I

    invoke-virtual {v0, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 184
    .local v0, "attributes":Landroid/content/res/TypedArray;
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XSlider_android_layout_width:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mWidth:I

    .line 185
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XSlider_android_layout_height:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mHeight:I

    .line 186
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mWidth:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mHeight:I

    invoke-direct {p0, v1, v3}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->setWorkableTotalLength(II)V

    .line 187
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_unit:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->unit:Ljava/lang/String;

    .line 188
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_start_index:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->startIndex:I

    .line 189
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_step:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mStep:I

    .line 190
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_init_index:I

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->initIndex:I

    .line 191
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_end_index:I

    const/16 v5, 0x64

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->endIndex:I

    .line 192
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_upper_limit:I

    const/high16 v5, -0x80000000

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->upperLimit:I

    .line 193
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_index_decimal:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->decimal:I

    .line 194
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_unit_prefix:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->prefixUnit:Ljava/lang/String;

    .line 195
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_accuracy:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->accuracy:F

    .line 196
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 197
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->initIndex:I

    if-ne v1, v4, :cond_0

    .line 198
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->startIndex:I

    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->endIndex:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->initIndex:I

    .line 200
    :cond_0
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->initIndex:I

    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->startIndex:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->indicatorValue:F

    .line 201
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->indicatorValue:F

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->calculateProgressView(F)F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressViewLength:F

    .line 202
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->endIndex:I

    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->startIndex:I

    if-eq v1, v4, :cond_7

    .line 205
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->decimal:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->decimal:I

    if-ne v1, v3, :cond_2

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v4, "0.0"

    invoke-direct {v1, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v4, "0.00"

    invoke-direct {v1, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->decimalFormat:Ljava/text/DecimalFormat;

    .line 206
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->decimalFormat:Ljava/text/DecimalFormat;

    if-eqz v1, :cond_3

    .line 209
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->decimalFormat:Ljava/text/DecimalFormat;

    sget-object v4, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v1, v4}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 211
    :cond_3
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->accuracy:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_6

    .line 212
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->decimal:I

    if-nez v1, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->decimal:I

    if-ne v1, v3, :cond_5

    const v1, 0x3dcccccd    # 0.1f

    goto :goto_1

    :cond_5
    const v1, 0x3c23d70a    # 0.01f

    :goto_1
    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->accuracy:F

    .line 215
    :cond_6
    invoke-direct {p0, p2, p4}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->setStyle(Landroid/util/AttributeSet;I)V

    .line 216
    return-void

    .line 203
    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "startIndex = endIndex!!! please check the xml"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readStyleAttrs(Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "styleRes"    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 237
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/xpui/R$styleable;->XSlider:[I

    invoke-virtual {v1, p1, v2, v0, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .local v1, "attributes":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 240
    .end local v1    # "attributes":Landroid/content/res/TypedArray;
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/xpui/R$styleable;->XSlider:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 244
    .restart local v1    # "attributes":Landroid/content/res/TypedArray;
    :goto_0
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_background:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 245
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_background:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgDrawableRes:I

    .line 247
    :cond_1
    const/4 v2, 0x0

    .line 248
    .local v2, "bg":Landroid/graphics/drawable/Drawable;
    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgDrawableRes:I

    if-eqz v3, :cond_2

    .line 249
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgDrawableRes:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    .line 251
    :cond_2
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_background:I

    const/16 v4, -0x7800

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 252
    .local v3, "color":I
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object v2, v4

    .line 254
    .end local v3    # "color":I
    :goto_1
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->setSliderBackground(Landroid/graphics/drawable/Drawable;)V

    .line 256
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_progress_drawable:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 257
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_progress_drawable:I

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressDrawableRes:I

    .line 259
    :cond_3
    const/4 v3, 0x0

    .line 260
    .local v3, "pg":Landroid/graphics/drawable/Drawable;
    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressDrawableRes:I

    if-eqz v4, :cond_4

    .line 261
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressDrawableRes:I

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 263
    :cond_4
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->setSliderProgress(Landroid/graphics/drawable/Drawable;)V

    .line 265
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_hide_pop:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 266
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_hide_pop:I

    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->hidePop:Z

    .line 268
    :cond_5
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_dismiss_pop:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 269
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_dismiss_pop:I

    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->dismissPop:Z

    .line 271
    :cond_6
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_item_count:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 272
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_item_count:I

    const/16 v5, 0x1e

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->itemCount:I

    .line 274
    :cond_7
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_orientation:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 275
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_orientation:I

    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mOrientation:I

    .line 277
    :cond_8
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_thumb:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 278
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_thumb:I

    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mThumbResId:I

    .line 280
    :cond_9
    const/4 v0, 0x0

    .line 281
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mThumbResId:I

    if-eqz v4, :cond_a

    .line 282
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mThumbResId:I

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 284
    :cond_a
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 285
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_tickMarkStyle:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 286
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XSlider_slider_tickMarkStyle:I

    sget v5, Lcom/xiaopeng/xpui/R$style;->XSliderLine:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mTickMarkStyleRes:I

    .line 288
    :cond_b
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 289
    return-void
.end method

.method private resetAlpha(II)I
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2, "alpha"    # I

    .line 696
    const v0, 0xffffff

    and-int/2addr p1, v0

    .line 697
    shl-int/lit8 v0, p2, 0x18

    or-int/2addr p1, v0

    .line 698
    return p1
.end method

.method private setBackgroundBounds()V
    .locals 5

    .line 396
    const/4 v0, 0x0

    .line 397
    .local v0, "left":I
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getHeightExIndicator()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgThicknessHalf:F

    sub-float/2addr v1, v3

    float-to-int v1, v1

    .line 398
    .local v1, "top":I
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getWidthExIndicator()F

    move-result v3

    float-to-int v3, v3

    .line 399
    .local v3, "right":I
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getHeightExIndicator()F

    move-result v4

    div-float/2addr v4, v2

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgThicknessHalf:F

    add-float/2addr v4, v2

    float-to-int v2, v4

    .line 400
    .local v2, "bottom":I
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 401
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0, v1, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 403
    :cond_0
    return-void
.end method

.method private setStyle(Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "styleRes"    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

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
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->indicatorDrawable:Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->inflateAttr(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;I)V

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->indicatorDrawable:Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->setState([I)Z

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->indicatorDrawable:Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->indicatorDrawable:Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->filterValidValue()F

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getPopString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getSliderLength()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->updateCenter(FLjava/lang/String;I)V

    .line 233
    :cond_0
    return-void
.end method

.method private setWorkableTotalLength(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 466
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mOrientation:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, -0x20

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->workableTotalLength:I

    .line 467
    return-void
.end method

.method private upperLimitDistance()I
    .locals 3

    .line 654
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->upperLimit:I

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_0

    .line 655
    return v1

    .line 658
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->startIndex:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->endIndex:I

    if-ge v0, v2, :cond_1

    .line 659
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->startIndex:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->upperLimit:I

    if-gt v0, v2, :cond_1

    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->upperLimit:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->endIndex:I

    if-gt v0, v2, :cond_1

    .line 660
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->endIndex:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->upperLimit:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->workableTotalLength:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->endIndex:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->startIndex:I

    sub-int/2addr v1, v2

    div-int/2addr v0, v1

    return v0

    .line 663
    :cond_1
    return v1
.end method


# virtual methods
.method protected calculateProgressView(F)F
    .locals 2
    .param p1, "valueFromStart"    # F

    .line 470
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->endIndex:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->startIndex:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->workableTotalLength:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x41800000    # 16.0f

    add-float/2addr v0, v1

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 578
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 579
    .local v0, "count":I
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mOrientation:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 580
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 581
    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 584
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 585
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->filterValidValue()F

    move-result v1

    .line 586
    .local v1, "currentLocation":F
    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    .line 587
    return-void

    .line 589
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getHeightExIndicator()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 590
    .local v2, "barCenterY":F
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->indicatorDrawable:Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;

    if-eqz v4, :cond_2

    .line 591
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->indicatorDrawable:Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;

    invoke-virtual {v4, p1}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 593
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 594
    return-void

    .line 597
    :cond_3
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    .line 598
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    .line 599
    .local v4, "halfThumbHeight":F
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    .line 600
    .local v5, "halfThumbWidth":F
    sub-float v3, v1, v5

    .line 601
    .local v3, "left":F
    sub-float v6, v2, v4

    .line 602
    .local v6, "top":F
    iget-object v7, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    float-to-int v8, v3

    float-to-int v9, v6

    iget-object v10, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v3

    float-to-int v10, v10

    iget-object v11, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v11, v6

    float-to-int v11, v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 603
    iget-object v7, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 605
    .end local v3    # "left":F
    .end local v4    # "halfThumbHeight":F
    .end local v5    # "halfThumbWidth":F
    .end local v6    # "top":F
    :cond_4
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 606
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
    .local v0, "states":[I
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->indicatorDrawable:Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;

    .line 555
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

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
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 561
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 562
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 565
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 566
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 567
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 570
    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 571
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 572
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 574
    :cond_3
    return-void
.end method

.method protected filterValidValue()F
    .locals 2

    .line 643
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressViewLength:F

    const/high16 v1, 0x41800000    # 16.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 644
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
    .local v0, "maxValue":F
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressViewLength:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    .line 648
    return v0

    .line 650
    :cond_1
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressViewLength:F

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

    if-nez v0, :cond_0

    .line 674
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->unit:Ljava/lang/String;

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->prefixUnit:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 677
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->prefixUnit:Ljava/lang/String;

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

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->startIndex:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->indicatorValue:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->unit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 683
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->prefixUnit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getIndicatorValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->unit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 686
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->prefixUnit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->unit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->indicatorDrawable:Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->filterValidValue()F

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getPopString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getSliderLength()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->updateCenter(FLjava/lang/String;I)V

    .line 504
    :cond_0
    return-void
.end method

.method protected isInScrollContainer()Landroid/view/ViewGroup;
    .locals 3

    .line 507
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 508
    .local v0, "p":Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 509
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 510
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 511
    return-object v1

    .line 513
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 514
    .end local v1    # "viewGroup":Landroid/view/ViewGroup;
    goto :goto_0

    .line 515
    :cond_1
    const/4 v1, 0x0

    return-object v1
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

    .line 713
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

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

    move-result v0

    if-eqz v0, :cond_4

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->indicatorDrawable:Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->indicatorDrawable:Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->refreshUI(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    .line 153
    :cond_0
    const/4 v0, 0x0

    .line 154
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mThumbResId:I

    if-eqz v1, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mThumbResId:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 157
    :cond_1
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 159
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgDrawableRes:I

    if-eqz v1, :cond_2

    .line 160
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgDrawableRes:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 161
    .local v1, "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->setSliderBackground(Landroid/graphics/drawable/Drawable;)V

    .line 164
    .end local v1    # "bg":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v1, 0x0

    .line 165
    .local v1, "pg":Landroid/graphics/drawable/Drawable;
    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressDrawableRes:I

    if-eqz v2, :cond_3

    .line 166
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressDrawableRes:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 168
    :cond_3
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->setSliderProgress(Landroid/graphics/drawable/Drawable;)V

    .line 171
    .end local v0    # "thumb":Landroid/graphics/drawable/Drawable;
    .end local v1    # "pg":Landroid/graphics/drawable/Drawable;
    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->invalidate()V

    .line 172
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 703
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XViewGroup;->onDetachedFromWindow()V

    .line 704
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 407
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 409
    .local v0, "count":I
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 410
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 411
    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 416
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 417
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 420
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 421
    const/4 v1, 0x0

    .line 422
    .local v1, "left":I
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getHeightExIndicator()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgThicknessHalf:F

    sub-float/2addr v2, v4

    float-to-int v2, v2

    .line 423
    .local v2, "top":I
    const/4 v4, 0x0

    .line 424
    .local v4, "offset":I
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    .line 425
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v4, v5, 0x2

    .line 427
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->filterValidValue()F

    move-result v5

    int-to-float v6, v4

    add-float/2addr v5, v6

    const/high16 v6, 0x40e00000    # 7.0f

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 428
    .local v5, "right":I
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getHeightExIndicator()F

    move-result v6

    div-float/2addr v6, v3

    iget v3, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgThicknessHalf:F

    add-float/2addr v6, v3

    float-to-int v3, v6

    .line 429
    .local v3, "bottom":I
    iget-object v6, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v1, v2, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 430
    iget-object v6, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 433
    .end local v1    # "left":I
    .end local v2    # "top":I
    .end local v3    # "bottom":I
    .end local v4    # "offset":I
    .end local v5    # "right":I
    :cond_3
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 434
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 486
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getChildCount()I

    move-result v0

    .line 487
    .local v0, "childCount":I
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getSliderLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x24

    int-to-float v1, v1

    add-int/lit8 v2, v0, -0x1

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 488
    .local v1, "itemGap":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 489
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 490
    .local v3, "childAt":Landroid/view/View;
    int-to-float v4, v2

    mul-float/2addr v4, v1

    const/high16 v5, 0x41900000    # 18.0f

    add-float/2addr v4, v5

    const/high16 v6, 0x41200000    # 10.0f

    sub-float/2addr v4, v6

    float-to-int v4, v4

    .line 491
    .local v4, "left":I
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getHeightExIndicator()F

    move-result v7

    float-to-int v7, v7

    div-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, -0x14

    .line 492
    .local v7, "top":I
    int-to-float v8, v2

    mul-float/2addr v8, v1

    add-float/2addr v5, v8

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 493
    .local v5, "right":I
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getHeightExIndicator()F

    move-result v6

    float-to-int v6, v6

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x14

    .line 494
    .local v6, "bottom":I
    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 488
    .end local v3    # "childAt":Landroid/view/View;
    .end local v4    # "left":I
    .end local v5    # "right":I
    .end local v6    # "bottom":I
    .end local v7    # "top":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 496
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 370
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XViewGroup;->onMeasure(II)V

    .line 373
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 374
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->desireHeight:F

    float-to-int v0, v0

    .line 375
    .local v0, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_0

    .line 376
    const/16 v1, 0x284

    .local v1, "height":I
    :goto_0
    goto :goto_2

    .line 378
    .end local v1    # "height":I
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getMeasuredHeight()I

    move-result v1

    goto :goto_0

    .line 382
    .end local v0    # "width":I
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_2

    .line 383
    const/16 v0, 0x284

    .restart local v0    # "width":I
    goto :goto_1

    .line 385
    .end local v0    # "width":I
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getMeasuredWidth()I

    move-result v0

    .line 387
    .restart local v0    # "width":I
    :goto_1
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->desireHeight:F

    float-to-int v1, v1

    .line 390
    .restart local v1    # "height":I
    :goto_2
    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mWidth:I

    .line 391
    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mHeight:I

    .line 392
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->setMeasuredDimension(II)V

    .line 393
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 8
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 448
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XViewGroup;->onSizeChanged(IIII)V

    .line 449
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->setPadding(IIII)V

    .line 450
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->setWorkableTotalLength(II)V

    .line 451
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->workableTotalLength:I

    int-to-float v1, v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->itemCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->bgItemGap:F

    .line 452
    move v1, v0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->itemCount:I

    if-ge v1, v2, :cond_1

    .line 453
    new-instance v2, Lcom/xiaopeng/xui/widget/slider/SlideLineView;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressViewLength:F

    iget v6, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->bgItemGap:F

    int-to-float v7, v1

    mul-float/2addr v6, v7

    const/high16 v7, 0x41800000    # 16.0f

    add-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v0

    :goto_1
    iget v6, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mTickMarkStyleRes:I

    invoke-direct {v2, v4, v5, v6}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;-><init>(Landroid/content/Context;ZI)V

    .line 454
    .local v2, "slideLineView":Lcom/xiaopeng/xui/widget/slider/SlideLineView;
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->addView(Landroid/view/View;)V

    .line 452
    .end local v2    # "slideLineView":Lcom/xiaopeng/xui/widget/slider/SlideLineView;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 457
    .end local v1    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->indicatorDrawable:Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;

    if-eqz v0, :cond_2

    .line 458
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->indicatorDrawable:Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->filterValidValue()F

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getPopString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->getSliderLength()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;->updateCenter(FLjava/lang/String;I)V

    .line 461
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->setBackgroundBounds()V

    .line 462
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->invalidate()V

    .line 463
    return-void
.end method

.method public setAccuracy(F)V
    .locals 0
    .param p1, "accuracy"    # F

    .line 541
    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->accuracy:F

    .line 542
    return-void
.end method

.method protected setAlphaByEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 693
    return-void
.end method

.method public setSliderBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 328
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
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 335
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 337
    :cond_2
    return-void
.end method

.method public setSliderProgress(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 340
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 343
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

    .line 348
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 349
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 351
    :cond_2
    return-void
.end method

.method public setStyle(I)V
    .locals 1
    .param p1, "styleRes"    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->setStyle(Landroid/util/AttributeSet;I)V

    .line 220
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 354
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 357
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

    .line 362
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 363
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 365
    :cond_2
    return-void
.end method

.method protected stickIndicator()V
    .locals 4

    .line 519
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mStep:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 520
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
    .local v0, "natureGap":F
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressViewLength:F

    const/high16 v2, 0x41800000    # 16.0f

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    .line 526
    .local v1, "number":F
    float-to-int v3, v1

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v3, v2

    iput v3, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mProgressViewLength:F

    .line 528
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 546
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->indicatorDrawable:Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/AbsSlider;->indicatorDrawable:Lcom/xiaopeng/xui/widget/slider/IndicatorDrawable;

    if-eq p1, v0, :cond_2

    :cond_1
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

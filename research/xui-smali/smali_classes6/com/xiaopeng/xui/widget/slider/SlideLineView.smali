.class Lcom/xiaopeng/xui/widget/slider/SlideLineView;
.super Lcom/xiaopeng/xui/view/XView;
.source "SlideLineView.java"


# static fields
.field private static final DEFAULT_LEVEL:I = 0x64

.field private static final DURATION:J = 0x320L

.field public static final LINE_WIDTH:I = 0x16


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private final desireHeight:I

.field private final desireWidth:I

.field private isSelect:Z

.field private mColorRes:I

.field private mTickMarkColor:Landroid/content/res/ColorStateList;

.field private mTickMarkDr:Landroid/graphics/drawable/Drawable;

.field private mTickMarkRes:I

.field protected mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

.field private progress:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/view/XView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 28
    const/16 v0, 0x16

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->desireWidth:I

    .line 29
    const/16 v0, 0x28

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->desireHeight:I

    .line 34
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->progress:F

    .line 57
    invoke-static {p0, p2, p3, p4}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 58
    invoke-direct {p0, p2, p4}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->initView(Landroid/util/AttributeSet;I)V

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$SlideLineView$xXR7LZYT_54TGyx1qFjkRa_CZFs;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$SlideLineView$xXR7LZYT_54TGyx1qFjkRa_CZFs;-><init>(Lcom/xiaopeng/xui/widget/slider/SlideLineView;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isSelect"    # Z
    .param p3, "defStyle"    # I

    .line 63
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p3}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 64
    invoke-virtual {p0, p2, v0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->setSelect(ZZ)V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/slider/SlideLineView;)F
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/slider/SlideLineView;

    .line 23
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->progress:F

    return v0
.end method

.method static synthetic access$002(Lcom/xiaopeng/xui/widget/slider/SlideLineView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/slider/SlideLineView;
    .param p1, "x1"    # F

    .line 23
    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->progress:F

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/widget/slider/SlideLineView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/slider/SlideLineView;

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mTickMarkDr:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private applyStyle()V
    .locals 3

    .line 105
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->refreshTickMark()V

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->animator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->animator:Landroid/animation/ValueAnimator;

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/xiaopeng/xui/widget/slider/SlideLineView$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView$1;-><init>(Lcom/xiaopeng/xui/widget/slider/SlideLineView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/xiaopeng/xui/widget/slider/SlideLineView$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView$2;-><init>(Lcom/xiaopeng/xui/widget/slider/SlideLineView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 141
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->setEnabled(Z)V

    .line 142
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->invalidate()V

    .line 143
    return-void

    :array_0
    .array-data 4
        0x0
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initView(Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defaultStyle"    # I

    .line 155
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->setStyle(Landroid/util/AttributeSet;I)V

    .line 157
    return-void
.end method

.method public static synthetic lambda$xXR7LZYT_54TGyx1qFjkRa_CZFs(Lcom/xiaopeng/xui/widget/slider/SlideLineView;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->refreshTickMark()V

    return-void
.end method

.method private readStyleAttrs(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defaultStyle"    # I

    .line 88
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 89
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->SlideLineView:[I

    invoke-virtual {p1, p2, v1, v0, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .local v1, "a":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 91
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_0
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->SlideLineView:[I

    invoke-virtual {p1, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 93
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    :goto_0
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->SlideLineView_slider_tickMark:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->SlideLineView_slider_tickMark:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mTickMarkRes:I

    .line 96
    :cond_1
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->SlideLineView_slider_tickMark_color:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mColorRes:I

    .line 97
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mColorRes:I

    if-eqz v0, :cond_2

    .line 98
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mColorRes:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mTickMarkColor:Landroid/content/res/ColorStateList;

    .line 101
    :cond_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    return-void
.end method

.method private refreshTickMark()V
    .locals 3

    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "tickMark":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mTickMarkRes:I

    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mTickMarkRes:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 164
    :cond_0
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mColorRes:I

    if-eqz v1, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mColorRes:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mTickMarkColor:Landroid/content/res/ColorStateList;

    .line 167
    :cond_1
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    .line 168
    return-void
.end method

.method private setStyle(Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defaultStyle"    # I

    .line 150
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->readStyleAttrs(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 151
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->applyStyle()V

    .line 152
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 3

    .line 172
    invoke-super {p0}, Lcom/xiaopeng/xui/view/XView;->drawableStateChanged()V

    .line 173
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->getDrawableState()[I

    move-result-object v0

    .line 174
    .local v0, "state":[I
    const/4 v1, 0x0

    .line 175
    .local v1, "changed":Z
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mTickMarkDr:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mTickMarkDr:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mTickMarkDr:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    or-int/2addr v1, v2

    .line 179
    :cond_0
    if-eqz v1, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->invalidate()V

    .line 182
    :cond_1
    return-void
.end method

.method public isSelect()Z
    .locals 1

    .line 243
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->isSelect:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 248
    invoke-super {p0}, Lcom/xiaopeng/xui/view/XView;->onAttachedToWindow()V

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 252
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 191
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/view/XView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 195
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 256
    invoke-super {p0}, Lcom/xiaopeng/xui/view/XView;->onDetachedFromWindow()V

    .line 257
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 260
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 207
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/view/XView;->onDraw(Landroid/graphics/Canvas;)V

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mTickMarkDr:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mTickMarkDr:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 211
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 215
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/view/XView;->onMeasure(II)V

    .line 216
    const/16 v0, 0x16

    const/16 v1, 0x28

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->setMeasuredDimension(II)V

    .line 217
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 199
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/view/XView;->onSizeChanged(IIII)V

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mTickMarkDr:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mTickMarkDr:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 203
    :cond_0
    return-void
.end method

.method public setSelect(Z)V
    .locals 1
    .param p1, "isSelect"    # Z

    .line 220
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->setSelect(ZZ)V

    .line 221
    return-void
.end method

.method public setSelect(ZZ)V
    .locals 1
    .param p1, "isSelect"    # Z
    .param p2, "animate"    # Z

    .line 225
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->setSelected(Z)V

    .line 226
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->isSelect:Z

    .line 227
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 228
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->setActivated(Z)V

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    .line 231
    :cond_0
    if-eqz p2, :cond_1

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 234
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->setActivated(Z)V

    goto :goto_0

    .line 236
    :cond_1
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->setActivated(Z)V

    .line 239
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->invalidate()V

    .line 240
    return-void
.end method

.method public setStyle(I)V
    .locals 1
    .param p1, "defaultStyle"    # I

    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->setStyle(Landroid/util/AttributeSet;I)V

    .line 147
    return-void
.end method

.method public setTickMark(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mTickMarkDr:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mTickMarkDr:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 71
    :cond_0
    if-eqz p1, :cond_2

    .line 72
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 73
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 74
    instance-of v0, p1, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;

    if-eqz v0, :cond_1

    .line 75
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;

    .line 76
    .local v0, "dr":Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mTickMarkColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->setColor(Landroid/content/res/ColorStateList;)V

    .line 78
    .end local v0    # "dr":Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 80
    :cond_2
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mTickMarkDr:Landroid/graphics/drawable/Drawable;

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mTickMarkDr:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mTickMarkDr:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    :cond_3
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mTickMarkDr:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mTickMarkDr:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/view/XView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

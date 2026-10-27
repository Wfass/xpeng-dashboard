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

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/view/XView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p1, 0x16

    .line 28
    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->desireWidth:I

    const/16 p1, 0x28

    .line 29
    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->desireHeight:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 34
    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->progress:F

    .line 57
    invoke-static {p0, p2, p3, p4}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 58
    invoke-direct {p0, p2, p4}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->initView(Landroid/util/AttributeSet;I)V

    .line 59
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$SlideLineView$SP9e1yC0BCQajNhFLnclQBnBdXo;

    invoke-direct {p2, p0}, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$SlideLineView$SP9e1yC0BCQajNhFLnclQBnBdXo;-><init>(Lcom/xiaopeng/xui/widget/slider/SlideLineView;)V

    invoke-virtual {p1, p2}, Lapr;->a(Lapr$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1, v1, v0, p3}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 64
    invoke-virtual {p0, p2, v0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->setSelect(ZZ)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/slider/SlideLineView;)F
    .locals 0

    .line 23
    iget p0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->progress:F

    return p0
.end method

.method static synthetic access$002(Lcom/xiaopeng/xui/widget/slider/SlideLineView;F)F
    .locals 0

    .line 23
    iput p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->progress:F

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/widget/slider/SlideLineView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mTickMarkDr:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private applyStyle()V
    .locals 3

    .line 105
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->refreshTickMark()V

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->animator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 109
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

    :cond_0
    const/4 v0, 0x1

    .line 141
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->setEnabled(Z)V

    .line 142
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->invalidate()V

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

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 155
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->setStyle(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic lambda$SP9e1yC0BCQajNhFLnclQBnBdXo(Lcom/xiaopeng/xui/widget/slider/SlideLineView;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->refreshTickMark()V

    return-void
.end method

.method private readStyleAttrs(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 89
    sget-object v1, Lbyg$n;->SlideLineView:[I

    invoke-virtual {p1, p2, v1, v0, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    goto :goto_0

    .line 91
    :cond_0
    sget-object p2, Lbyg$n;->SlideLineView:[I

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 93
    :goto_0
    sget p3, Lbyg$n;->SlideLineView_slider_tickMark:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 94
    sget p3, Lbyg$n;->SlideLineView_slider_tickMark:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mTickMarkRes:I

    .line 96
    :cond_1
    sget p3, Lbyg$n;->SlideLineView_slider_tickMark_color:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mColorRes:I

    .line 97
    iget p3, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mColorRes:I

    if-eqz p3, :cond_2

    .line 98
    invoke-static {p1, p3}, Ldj;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mTickMarkColor:Landroid/content/res/ColorStateList;

    .line 101
    :cond_2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private refreshTickMark()V
    .locals 3

    .line 161
    iget v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mTickMarkRes:I

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mTickMarkRes:I

    invoke-static {v0, v1}, Ldj;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 164
    :goto_0
    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mColorRes:I

    if-eqz v1, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mColorRes:I

    invoke-static {v1, v2}, Ldj;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mTickMarkColor:Landroid/content/res/ColorStateList;

    .line 167
    :cond_1
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setStyle(Landroid/util/AttributeSet;I)V
    .locals 1

    .line 150
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->readStyleAttrs(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 151
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->applyStyle()V

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

    .line 175
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mTickMarkDr:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mTickMarkDr:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v2, v0

    :cond_0
    if-eqz v2, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->invalidate()V

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
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 191
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/view/XView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

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
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 207
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/view/XView;->onDraw(Landroid/graphics/Canvas;)V

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mTickMarkDr:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 215
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/view/XView;->onMeasure(II)V

    const/16 p1, 0x16

    const/16 p2, 0x28

    .line 216
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 199
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/view/XView;->onSizeChanged(IIII)V

    .line 200
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mTickMarkDr:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->getHeight()I

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public setSelect(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 220
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->setSelect(ZZ)V

    return-void
.end method

.method public setSelect(ZZ)V
    .locals 1

    .line 225
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->setSelected(Z)V

    .line 226
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->isSelect:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 228
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->setActivated(Z)V

    .line 229
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 232
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    const/4 p1, 0x1

    .line 234
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->setActivated(Z)V

    goto :goto_0

    .line 236
    :cond_1
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->setActivated(Z)V

    .line 239
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->invalidate()V

    return-void
.end method

.method public setStyle(I)V
    .locals 1

    const/4 v0, 0x0

    .line 146
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->setStyle(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public setTickMark(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mTickMarkDr:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 69
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

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
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mTickMarkColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/drawable/slider/XSliderTickMarkDrawableBase;->setColor(Landroid/content/res/ColorStateList;)V

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 80
    :cond_2
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mTickMarkDr:Landroid/graphics/drawable/Drawable;

    .line 81
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mTickMarkDr:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    .line 82
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->mTickMarkDr:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    if-eq p1, v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/view/XView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

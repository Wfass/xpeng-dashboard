.class public Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "XRippleDrawable.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XRippleDrawable"


# instance fields
.field private mDownX:F

.field private mDownY:F

.field private mIsTouchDown:Z

.field private mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

.field private stateSpecPress:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 37
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 32
    iput v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mDownX:F

    .line 33
    iput v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mDownY:F

    const/4 v0, 0x2

    .line 35
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->stateSpecPress:[I

    .line 38
    new-instance v0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-direct {v0}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->stateSpecPress:[I

    const/4 v1, 0x0

    const v2, 0x10100a7

    aput v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x101009e

    .line 40
    aput v2, v0, v1

    return-void
.end method

.method private inflateAttrs(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 5

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 129
    sget-object v1, Lbyg$n;->XRippleDrawable:[I

    invoke-virtual {p3, p2, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    goto :goto_0

    .line 132
    :cond_0
    sget-object v1, Lbyg$n;->XRippleDrawable:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 134
    :goto_0
    sget v1, Lbyg$n;->XRippleDrawable_rippleRadius:I

    .line 135
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    .line 136
    sget v2, Lbyg$n;->XRippleDrawable_rippleBackgroundColor:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 138
    sget v3, Lbyg$n;->XRippleDrawable_rippleColor:I

    sget v4, Lbyg$e;->x_ripple_default_color:I

    .line 139
    invoke-virtual {p1, v4, p3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p3

    .line 138
    invoke-virtual {p2, v3, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 140
    sget v3, Lbyg$n;->XRippleDrawable_rippleSupportScale:I

    .line 141
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 142
    sget v3, Lbyg$n;->XRippleDrawable_rippleDuration:I

    sget v4, Lbyg$i;->x_ripple_default_anim:I

    .line 143
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 142
    invoke-virtual {p2, v3, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 144
    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-virtual {v3, v1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->setRippleRadius(F)V

    .line 145
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-virtual {v1, p3}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->setRippleColor(I)V

    .line 146
    iget-object p3, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-virtual {p3, v2}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->setRippleBackgroundColor(I)V

    .line 147
    iget-object p3, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-virtual {p3, v0}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->setSupportScale(Z)V

    .line 148
    iget-object p3, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    int-to-long v0, p1

    invoke-virtual {p3, v0, v1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->setPressDuration(J)V

    .line 149
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->setUpDuration(J)V

    .line 150
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void
.end method

.method private initRipple(Landroid/graphics/Rect;)V
    .locals 5

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    invoke-direct {v1, v2, v3, v4, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->setRippleRect(Landroid/graphics/RectF;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->drawRipple(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getXRipple()Lcom/xiaopeng/xui/drawable/ripple/XRipple;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, p3, v0}, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->inflateAttrs(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 114
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1, p3, p4}, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->inflateAttrs(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 122
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 66
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->initRipple(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 50
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    if-eqz v1, :cond_1

    .line 51
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->stateSpecPress:[I

    invoke-static {v1, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mIsTouchDown:Z

    if-nez p1, :cond_0

    iget p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mDownX:F

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    iget v2, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mDownY:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_0

    .line 53
    iput-boolean v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mIsTouchDown:Z

    .line 54
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-virtual {v1, p1, v2}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->pressDown(FF)V

    goto :goto_0

    .line 55
    :cond_0
    iget-boolean p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mIsTouchDown:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mIsTouchDown:Z

    .line 57
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->pressUp()V

    :cond_1
    :goto_0
    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setHotspot(FF)V
    .locals 0

    .line 83
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 84
    iput p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mDownX:F

    .line 85
    iput p2, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mDownY:F

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .line 156
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p2

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 158
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->setVisible(Z)V

    :cond_0
    return p2
.end method

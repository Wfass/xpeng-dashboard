.class public Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "XRippleDrawable.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDownX:F

.field private mDownY:F

.field private mIsTouchDown:Z

.field private mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

.field private stateSpecPress:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 34
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 29
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mDownX:F

    .line 30
    iput v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mDownY:F

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->stateSpecPress:[I

    .line 35
    new-instance v0, Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-direct {v0}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->stateSpecPress:[I

    const/4 v1, 0x0

    const v2, 0x10100a7

    aput v2, v0, v1

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->stateSpecPress:[I

    const/4 v1, 0x1

    const v2, 0x101009e

    aput v2, v0, v1

    .line 38
    return-void
.end method

.method private inflateAttrs(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 5

    .line 123
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 125
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 126
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XRippleDrawable:[I

    invoke-virtual {p3, p2, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    goto :goto_0

    .line 129
    :cond_0
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XRippleDrawable:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 131
    :goto_0
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XRippleDrawable_rippleRadius:I

    .line 132
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    .line 133
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XRippleDrawable_rippleBackgroundColor:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 135
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XRippleDrawable_rippleColor:I

    sget v4, Lcom/xiaopeng/xpui/R$color;->x_ripple_default_color:I

    .line 136
    invoke-virtual {p1, v4, p3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p3

    .line 135
    invoke-virtual {p2, v3, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 137
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XRippleDrawable_rippleSupportScale:I

    .line 138
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 139
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XRippleDrawable_rippleDuration:I

    sget v4, Lcom/xiaopeng/xpui/R$integer;->x_ripple_default_anim:I

    .line 140
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 139
    invoke-virtual {p2, v3, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 141
    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-virtual {v3, v1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->setRippleRadius(F)V

    .line 142
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-virtual {v1, p3}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->setRippleColor(I)V

    .line 143
    iget-object p3, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-virtual {p3, v2}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->setRippleBackgroundColor(I)V

    .line 144
    iget-object p3, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-virtual {p3, v0}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->setSupportScale(Z)V

    .line 145
    iget-object p3, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    int-to-long v0, p1

    invoke-virtual {p3, v0, v1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->setPressDuration(J)V

    .line 146
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->setUpDuration(J)V

    .line 147
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 149
    :cond_1
    return-void
.end method

.method private initRipple(Landroid/graphics/Rect;)V
    .locals 5

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 68
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

    .line 69
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->drawRipple(Landroid/graphics/Canvas;)V

    .line 76
    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public getXRipple()Lcom/xiaopeng/xui/drawable/ripple/XRipple;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->inflateAttrs(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 111
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 112
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 118
    invoke-direct {p0, p1, p3, p4}, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->inflateAttrs(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 120
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 62
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 63
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->initRipple(Landroid/graphics/Rect;)V

    .line 64
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 3

    .line 47
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    if-eqz v1, :cond_1

    .line 48
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->stateSpecPress:[I

    invoke-static {v1, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mIsTouchDown:Z

    if-nez p1, :cond_0

    iget p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mDownX:F

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    iget p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mDownY:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    .line 50
    iput-boolean v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mIsTouchDown:Z

    .line 51
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    iget v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mDownX:F

    iget v2, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mDownY:F

    invoke-virtual {p1, v1, v2}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->pressDown(FF)V

    goto :goto_0

    .line 52
    :cond_0
    iget-boolean p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mIsTouchDown:Z

    if-eqz p1, :cond_1

    .line 53
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mIsTouchDown:Z

    .line 54
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->pressUp()V

    .line 57
    :cond_1
    :goto_0
    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .line 88
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 93
    return-void
.end method

.method public setHotspot(FF)V
    .locals 0

    .line 80
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 81
    iput p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mDownX:F

    .line 82
    iput p2, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mDownY:F

    .line 83
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .line 153
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p2

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->setVisible(Z)V

    .line 157
    :cond_0
    return p2
.end method

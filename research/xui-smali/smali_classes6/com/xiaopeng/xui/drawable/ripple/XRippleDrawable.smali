.class public Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "XRippleDrawable.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


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

    .line 30
    const-class v0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 37
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 32
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mDownX:F

    .line 33
    iput v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mDownY:F

    .line 35
    const/4 v0, 0x2

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

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->stateSpecPress:[I

    const/4 v1, 0x1

    const v2, 0x101009e

    aput v2, v0, v1

    .line 41
    return-void
.end method

.method private inflateAttrs(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 9
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .line 126
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 128
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 129
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XRippleDrawable:[I

    invoke-virtual {p3, p2, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .local v1, "typedArray":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 132
    .end local v1    # "typedArray":Landroid/content/res/TypedArray;
    :cond_0
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XRippleDrawable:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 134
    .restart local v1    # "typedArray":Landroid/content/res/TypedArray;
    :goto_0
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XRippleDrawable_rippleRadius:I

    .line 135
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    .line 136
    .local v2, "rippleRadius":F
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XRippleDrawable_rippleBackgroundColor:I

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 138
    .local v3, "backgroundColor":I
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XRippleDrawable_rippleColor:I

    sget v5, Lcom/xiaopeng/xpui/R$color;->x_ripple_default_color:I

    .line 139
    invoke-virtual {p1, v5, p3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    .line 138
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 140
    .local v4, "rippleColor":I
    sget v5, Lcom/xiaopeng/xpui/R$styleable;->XRippleDrawable_rippleSupportScale:I

    .line 141
    invoke-virtual {v1, v5, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 142
    .local v0, "viewSupportScale":Z
    sget v5, Lcom/xiaopeng/xpui/R$styleable;->XRippleDrawable_rippleDuration:I

    sget v6, Lcom/xiaopeng/xpui/R$integer;->x_ripple_default_anim:I

    .line 143
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 142
    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 144
    .local v5, "duration":I
    iget-object v6, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-virtual {v6, v2}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->setRippleRadius(F)V

    .line 145
    iget-object v6, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-virtual {v6, v4}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->setRippleColor(I)V

    .line 146
    iget-object v6, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-virtual {v6, v3}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->setRippleBackgroundColor(I)V

    .line 147
    iget-object v6, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-virtual {v6, v0}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->setSupportScale(Z)V

    .line 148
    iget-object v6, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    int-to-long v7, v5

    invoke-virtual {v6, v7, v8}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->setPressDuration(J)V

    .line 149
    iget-object v6, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    int-to-long v7, v5

    invoke-virtual {v6, v7, v8}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->setUpDuration(J)V

    .line 150
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 152
    .end local v0    # "viewSupportScale":Z
    .end local v1    # "typedArray":Landroid/content/res/TypedArray;
    .end local v2    # "rippleRadius":F
    .end local v3    # "backgroundColor":I
    .end local v4    # "rippleColor":I
    .end local v5    # "duration":I
    :cond_1
    return-void
.end method

.method private initRipple(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

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

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->setRippleRect(Landroid/graphics/RectF;)V

    .line 72
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->drawRipple(Landroid/graphics/Canvas;)V

    .line 79
    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 100
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
    .param p1, "r"    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->inflateAttrs(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 114
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 115
    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0
    .param p1, "r"    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1, p3, p4}, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->inflateAttrs(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 122
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 123
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 65
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 66
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->initRipple(Landroid/graphics/Rect;)V

    .line 67
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 4
    .param p1, "state"    # [I

    .line 50
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    if-eqz v1, :cond_1

    .line 51
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->stateSpecPress:[I

    invoke-static {v1, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mIsTouchDown:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mDownX:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mDownY:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 53
    iput-boolean v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mIsTouchDown:Z

    .line 54
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    iget v2, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mDownX:F

    iget v3, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mDownY:F

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->pressDown(FF)V

    goto :goto_0

    .line 55
    :cond_0
    iget-boolean v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mIsTouchDown:Z

    if-eqz v1, :cond_1

    .line 56
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mIsTouchDown:Z

    .line 57
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->pressUp()V

    .line 60
    :cond_1
    :goto_0
    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .line 91
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 96
    return-void
.end method

.method public setHotspot(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 83
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 84
    iput p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mDownX:F

    .line 85
    iput p2, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mDownY:F

    .line 86
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 156
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 157
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 158
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRippleDrawable;->mRipple:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->setVisible(Z)V

    .line 160
    :cond_0
    return v0
.end method

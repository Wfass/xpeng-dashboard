.class public Lcom/xiaopeng/xui/drawable/XPressableDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "XPressableDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XPressableDrawable"


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mIsPressed:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mValueFrom:I

.field private mValueTo:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/drawable/XPressableDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 38
    invoke-direct {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mTempRect:Landroid/graphics/Rect;

    .line 39
    return-void
.end method

.method private inflateChildDrawable(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 5
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
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    .line 96
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 97
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    .line 98
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v1, :cond_2

    .line 99
    :cond_1
    const/4 v2, 0x2

    if-ne v3, v2, :cond_0

    .line 100
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 104
    :cond_2
    if-eqz v0, :cond_3

    .line 105
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    :cond_3
    return-void
.end method

.method public static synthetic lambda$startAnimation$0(Lcom/xiaopeng/xui/drawable/XPressableDrawable;Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 195
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->onAnimateValue(Ljava/lang/Object;)V

    .line 196
    return-void
.end method


# virtual methods
.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 4
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

    .line 49
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableWrapper;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 51
    if-eqz p4, :cond_0

    .line 52
    sget-object v0, Lcom/xiaopeng/xpui/R$styleable;->XPressableDrawable:[I

    const/4 v1, 0x0

    invoke-virtual {p4, p3, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "ta":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 54
    .end local v0    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    sget-object v0, Lcom/xiaopeng/xpui/R$styleable;->XPressableDrawable:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 56
    .restart local v0    # "ta":Landroid/content/res/TypedArray;
    :goto_0
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XPressableDrawable_android_drawable:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 57
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 58
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 60
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->inflateChildDrawable(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 62
    :goto_1
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XPressableDrawable_android_valueFrom:I

    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XPressableDrawable_android_valueTo:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->readAnimateValues(Landroid/content/res/TypedArray;II)V

    .line 64
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->readOtherAttributes(Landroid/content/res/TypedArray;)V

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    return v0

    .line 185
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method protected onAnimateValue(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 202
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->setHeight(I)V

    .line 203
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 5
    .param p1, "stateSet"    # [I

    .line 144
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mValueFrom:I

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mValueTo:I

    if-eq v0, v1, :cond_3

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "isPressed":Z
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    .line 147
    .local v3, "s":I
    const v4, 0x10100a7

    if-ne v3, v4, :cond_0

    .line 148
    const/4 v0, 0x1

    .line 149
    goto :goto_1

    .line 146
    .end local v3    # "s":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mIsPressed:Z

    if-eq v1, v0, :cond_3

    .line 153
    iput-boolean v0, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mIsPressed:Z

    .line 155
    iget-boolean v1, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mIsPressed:Z

    if-eqz v1, :cond_2

    .line 156
    iget v1, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mValueFrom:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mValueTo:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->startAnimation(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 158
    :cond_2
    iget v1, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mValueTo:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mValueFrom:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->startAnimation(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 160
    :goto_2
    const/4 v1, 0x1

    return v1

    .line 163
    .end local v0    # "isPressed":Z
    :cond_3
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->onStateChange([I)Z

    move-result v0

    return v0
.end method

.method protected readAnimateValues(Landroid/content/res/TypedArray;II)V
    .locals 2
    .param p1, "ta"    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "fromValueId"    # I
    .param p3, "toValueId"    # I

    .line 74
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mValueFrom:I

    .line 75
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mValueTo:I

    .line 76
    return-void
.end method

.method protected readOtherAttributes(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "ta"    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 79
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XPressableDrawable_android_width:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 80
    .local v0, "width":I
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XPressableDrawable_android_height:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 81
    .local v1, "height":I
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->setWidth(I)V

    .line 82
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->setHeight(I)V

    .line 83
    return-void
.end method

.method public setHeight(I)V
    .locals 6
    .param p1, "height"    # I

    .line 110
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 111
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 113
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 114
    .local v1, "center":I
    int-to-float v2, p1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 115
    .local v2, "delta":I
    sub-int v3, v1, v2

    .line 116
    .local v3, "top":I
    add-int v4, v1, v2

    .line 117
    .local v4, "bottom":I
    iget-object v5, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mTempRect:Landroid/graphics/Rect;

    iput v3, v5, Landroid/graphics/Rect;->top:I

    .line 118
    iget-object v5, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->bottom:I

    .line 119
    iget-object v5, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v5}, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 121
    .end local v1    # "center":I
    .end local v2    # "delta":I
    .end local v3    # "top":I
    .end local v4    # "bottom":I
    :cond_0
    return-void
.end method

.method public setWidth(I)V
    .locals 6
    .param p1, "width"    # I

    .line 124
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 125
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 127
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    .line 128
    .local v1, "center":I
    int-to-float v2, p1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 129
    .local v2, "delta":I
    sub-int v3, v1, v2

    .line 130
    .local v3, "left":I
    add-int v4, v1, v2

    .line 131
    .local v4, "right":I
    iget-object v5, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mTempRect:Landroid/graphics/Rect;

    iput v3, v5, Landroid/graphics/Rect;->left:I

    .line 132
    iget-object v5, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->right:I

    .line 133
    iget-object v5, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v5}, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 135
    .end local v1    # "center":I
    .end local v2    # "delta":I
    .end local v3    # "left":I
    .end local v4    # "right":I
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 171
    :cond_0
    return-void
.end method

.method protected startAnimation(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "from"    # Ljava/lang/Object;
    .param p2, "to"    # Ljava/lang/Object;

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 193
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    move-object v2, p1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    move-object v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/xiaopeng/xui/drawable/-$$Lambda$XPressableDrawable$5FIuSBlKWFK9bn59hikFCVCE7HI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/drawable/-$$Lambda$XPressableDrawable$5FIuSBlKWFK9bn59hikFCVCE7HI;-><init>(Lcom/xiaopeng/xui/drawable/XPressableDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 199
    return-void
.end method

.method public stop()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XPressableDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 178
    :cond_0
    return-void
.end method

.class public Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PlayingDrawable.java"


# static fields
.field private static final DURATION:J = 0xfa0L

.field private static final LINE_NUM:I = 0x4


# instance fields
.field private MAX_LINE_HEIGHT:F

.field private MIN_LINE_HEIGHT:F

.field private isAnimStart:Z

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mHeight:F

.field private mLineHeights:[F

.field private mLineSpacing:F

.field private mLineWidth:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mWidth:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->isAnimStart:Z

    const/high16 v0, 0x41c00000    # 24.0f

    .line 36
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->MAX_LINE_HEIGHT:F

    const/high16 v1, 0x40c00000    # 6.0f

    .line 37
    iput v1, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->MIN_LINE_HEIGHT:F

    .line 42
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->mWidth:F

    .line 46
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->mHeight:F

    const/high16 v0, 0x40400000    # 3.0f

    .line 48
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->mLineWidth:F

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 49
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->mLineHeights:[F

    const/high16 v0, 0x40800000    # 4.0f

    .line 53
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->mLineSpacing:F

    return-void
.end method

.method private inflateAttrs(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "attrs",
            "theme"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 73
    sget-object p1, Lcom/xiaopeng/carcontrolmodule/R$styleable;->PlayDrawable:[I

    invoke-virtual {p3, p2, p1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    .line 76
    :cond_0
    sget-object p3, Lcom/xiaopeng/carcontrolmodule/R$styleable;->PlayDrawable:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 78
    :goto_0
    sget p2, Lcom/xiaopeng/carcontrolmodule/R$styleable;->PlayDrawable_play_color:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 80
    sget v1, Lcom/xiaopeng/carcontrolmodule/R$styleable;->PlayDrawable_drawable_scale:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 82
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-ne p2, p3, :cond_1

    const-string p1, "#3B99FF"

    .line 85
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    .line 87
    :cond_1
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->mHeight:F

    mul-float/2addr p1, v1

    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->mHeight:F

    .line 88
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->mLineWidth:F

    mul-float/2addr p1, v1

    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->mLineWidth:F

    .line 89
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->mLineSpacing:F

    mul-float/2addr p1, v1

    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->mLineSpacing:F

    .line 90
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->MAX_LINE_HEIGHT:F

    mul-float/2addr p1, v1

    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->MAX_LINE_HEIGHT:F

    .line 91
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->MIN_LINE_HEIGHT:F

    mul-float/2addr p1, v1

    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->MIN_LINE_HEIGHT:F

    .line 92
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 93
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 94
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->mLineWidth:F

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 95
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    :goto_1
    const/4 p2, 0x4

    if-ge v0, p2, :cond_2

    .line 98
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->mLineHeights:[F

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    iget v3, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->MAX_LINE_HEIGHT:F

    iget v4, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->MIN_LINE_HEIGHT:F

    sub-float/2addr v3, v4

    add-float/2addr v3, v2

    mul-float/2addr v1, v3

    add-float/2addr v1, v4

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 100
    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    .line 101
    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 102
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xfa0

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 103
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 104
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/xiaopeng/carcontrol/view/widget/-$$Lambda$PlayingDrawable$Eia5UpfRSxu291HP3NzQjfEldvE;

    invoke-direct {p3, p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/-$$Lambda$PlayingDrawable$Eia5UpfRSxu291HP3NzQjfEldvE;-><init>(Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;Ljava/util/Random;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_3
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startAnim()V
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->isAnimStart:Z

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->isAnimStart:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelAnim()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->isAnimStart:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    int-to-float v1, v0

    .line 124
    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->mLineWidth:F

    iget v3, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->mLineSpacing:F

    add-float/2addr v3, v2

    mul-float/2addr v1, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    add-float v6, v1, v2

    .line 125
    iget v7, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->mHeight:F

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->mLineHeights:[F

    aget v1, v1, v0

    sub-float v5, v7, v1

    .line 126
    iget-object v8, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v6

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->startAnim()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 169
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 164
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "parser",
            "attrs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 60
    invoke-direct {p0, p1, p3, p2}, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->inflateAttrs(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "parser",
            "attrs",
            "theme"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 66
    invoke-direct {p0, p1, p3, p4}, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->inflateAttrs(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public synthetic lambda$inflateAttrs$0$PlayingDrawable(Ljava/util/Random;Landroid/animation/ValueAnimator;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "random",
            "animation"
        }
    .end annotation

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_4

    const/4 v1, 0x2

    .line 106
    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    move v1, p2

    .line 107
    :goto_1
    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result v3

    .line 108
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->mLineHeights:[F

    aget v5, v4, v0

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, -0x1

    :goto_2
    int-to-float v1, v2

    mul-float/2addr v1, v3

    add-float/2addr v5, v1

    aput v5, v4, v0

    .line 109
    aget v1, v4, v0

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->MAX_LINE_HEIGHT:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 110
    aget v1, v4, v0

    sub-float/2addr v1, v3

    aput v1, v4, v0

    goto :goto_3

    .line 111
    :cond_2
    aget v1, v4, v0

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->MIN_LINE_HEIGHT:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 112
    aget v1, v4, v0

    add-float/2addr v1, v3

    aput v1, v4, v0

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->invalidateSelf()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorFilter"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "visible",
            "restart"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->cancelAnim()V

    .line 136
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

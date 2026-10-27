.class public Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "XCircularProgressBgDrawable.java"


# static fields
.field private static final STROKE_WIDTH_DEFAULT:F


# instance fields
.field private mIndicatorPause:Landroid/graphics/drawable/Drawable;

.field private mIndicatorPlay:Landroid/graphics/drawable/Drawable;

.field private mIndicatorStart:Landroid/graphics/drawable/Drawable;

.field private mIndicatorStop:Landroid/graphics/drawable/Drawable;

.field private mInnerBounds:Landroid/graphics/RectF;

.field private mInset:F

.field private mOutBounds:Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaused:Z

.field private mPlayingPause:Z

.field private mPlayingStop:Z

.field private mProgressBgColor:I

.field private mShowIndicator:Z

.field private mStartDownload:Z

.field private mStrokeWidth:F

.field private mTmpIndicatorBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 51
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 30
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mTmpIndicatorBounds:Landroid/graphics/Rect;

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mPaint:Landroid/graphics/Paint;

    .line 32
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mOutBounds:Landroid/graphics/Rect;

    .line 33
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mInnerBounds:Landroid/graphics/RectF;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mShowIndicator:Z

    .line 45
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mPlayingStop:Z

    .line 46
    iput-boolean v1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mPlayingPause:Z

    .line 47
    iput-boolean v1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mPaused:Z

    .line 48
    iput-boolean v1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mStartDownload:Z

    .line 53
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mProgressBgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    return-void
.end method

.method private applyIndicatorBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .line 248
    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 252
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 253
    .local v1, "totalWidth":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    .line 254
    .local v2, "totalHeight":F
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    .line 255
    .local v3, "width":F
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    .line 256
    .local v4, "height":F
    cmpl-float v5, v3, v1

    if-gez v5, :cond_2

    cmpl-float v5, v4, v2

    if-ltz v5, :cond_1

    goto :goto_0

    .line 261
    :cond_1
    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float v6, v1, v3

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 262
    .local v5, "left":I
    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float v8, v2, v4

    div-float/2addr v8, v7

    add-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 263
    .local v6, "top":I
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v7, v5

    .line 264
    .local v7, "right":I
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v8, v6

    .line 265
    .local v8, "bottom":I
    invoke-virtual {p2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 266
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 267
    return-void

    .line 257
    .end local v5    # "left":I
    .end local v6    # "top":I
    .end local v7    # "right":I
    .end local v8    # "bottom":I
    :cond_2
    :goto_0
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 258
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 259
    return-void

    .line 249
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "totalWidth":F
    .end local v2    # "totalHeight":F
    .end local v3    # "width":F
    .end local v4    # "height":F
    :cond_3
    :goto_1
    return-void
.end method

.method private updateAttr(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 4
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .line 73
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 74
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBgDrawable:[I

    invoke-virtual {p3, p2, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .local v1, "ta":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 76
    .end local v1    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBgDrawable:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 79
    .restart local v1    # "ta":Landroid/content/res/TypedArray;
    :goto_0
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBgDrawable_progress_backgroundColor:I

    sget v3, Lcom/xiaopeng/xpui/R$color;->x_circular_progress_circle_bg_color:I

    .line 80
    invoke-virtual {p1, v3, p3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    .line 79
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mProgressBgColor:I

    .line 81
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mProgressBgColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBgDrawable_progress_background_strokeWidth:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mStrokeWidth:F

    .line 83
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBgDrawable_progress_background_inset:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mInset:F

    .line 84
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBgDrawable_progress_bg_indicator_play:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mIndicatorPlay:Landroid/graphics/drawable/Drawable;

    .line 85
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBgDrawable_progress_bg_indicator_pause:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mIndicatorPause:Landroid/graphics/drawable/Drawable;

    .line 86
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBgDrawable_progress_bg_indicator_stop:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mIndicatorStop:Landroid/graphics/drawable/Drawable;

    .line 87
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XCircularProgressBgDrawable_progress_bg_indicator_start:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mIndicatorStart:Landroid/graphics/drawable/Drawable;

    .line 88
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 117
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 118
    .local v0, "count":I
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mInnerBounds:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 119
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 121
    iget-boolean v1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mShowIndicator:Z

    if-eqz v1, :cond_3

    .line 122
    iget-boolean v1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mPlayingStop:Z

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mIndicatorStop:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 124
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mIndicatorStop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 126
    :cond_0
    iget-boolean v1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mPlayingPause:Z

    if-eqz v1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mIndicatorPause:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 128
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mIndicatorPause:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 130
    :cond_1
    iget-boolean v1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mPaused:Z

    if-eqz v1, :cond_2

    .line 131
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mIndicatorPlay:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 132
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mIndicatorPlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 134
    :cond_2
    iget-boolean v1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mStartDownload:Z

    if-eqz v1, :cond_3

    .line 135
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mIndicatorStart:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 136
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mIndicatorStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 140
    :cond_3
    :goto_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 154
    const/4 v0, -0x3

    return v0
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

    .line 67
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->updateAttr(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 69
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

    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 62
    invoke-direct {p0, p1, p3, p4}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->updateAttr(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 63
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 159
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mIndicatorPlay:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mTmpIndicatorBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->applyIndicatorBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mIndicatorPause:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mTmpIndicatorBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->applyIndicatorBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mIndicatorStop:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mTmpIndicatorBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->applyIndicatorBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mIndicatorStart:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mTmpIndicatorBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->applyIndicatorBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 166
    iget v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mStrokeWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mOutBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mStrokeWidth:F

    .line 169
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mStrokeWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 171
    .local v0, "borderInset":F
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mInnerBounds:Landroid/graphics/RectF;

    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 172
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mInnerBounds:Landroid/graphics/RectF;

    iget v2, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mInset:F

    add-float/2addr v2, v0

    iget v3, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mInset:F

    add-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 173
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mStrokeWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 174
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 9
    .param p1, "state"    # [I

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mIndicatorPause:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mIndicatorPause:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mIndicatorPlay:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mIndicatorPlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mIndicatorStart:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mIndicatorStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mIndicatorStop:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mIndicatorStop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 197
    :cond_3
    const/4 v0, 0x0

    .line 198
    .local v0, "playingStop":Z
    const/4 v1, 0x0

    .line 199
    .local v1, "playingPause":Z
    const/4 v2, 0x0

    .line 200
    .local v2, "paused":Z
    const/4 v3, 0x0

    .line 201
    .local v3, "startDownload":Z
    array-length v4, p1

    const/4 v5, 0x0

    move v6, v3

    move v3, v5

    .end local v3    # "startDownload":Z
    .local v6, "startDownload":Z
    :goto_0
    if-ge v3, v4, :cond_8

    aget v7, p1, v3

    .line 202
    .local v7, "s":I
    sget v8, Lcom/xiaopeng/xpui/R$attr;->progress_state_playing_stop:I

    if-ne v7, v8, :cond_4

    .line 203
    const/4 v0, 0x1

    .line 204
    goto :goto_1

    .line 206
    :cond_4
    sget v8, Lcom/xiaopeng/xpui/R$attr;->progress_state_playing_pause:I

    if-ne v7, v8, :cond_5

    .line 207
    const/4 v1, 0x1

    .line 208
    goto :goto_1

    .line 210
    :cond_5
    sget v8, Lcom/xiaopeng/xpui/R$attr;->progress_state_paused:I

    if-ne v7, v8, :cond_6

    .line 211
    const/4 v2, 0x1

    .line 212
    goto :goto_1

    .line 214
    :cond_6
    sget v8, Lcom/xiaopeng/xpui/R$attr;->progress_state_start_download:I

    if-ne v7, v8, :cond_7

    .line 215
    const/4 v6, 0x1

    .line 201
    .end local v7    # "s":I
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 218
    :cond_8
    :goto_1
    const/4 v3, 0x0

    .line 219
    .local v3, "changed":Z
    iget-boolean v4, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mPlayingStop:Z

    if-eq v0, v4, :cond_9

    .line 220
    iput-boolean v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mPlayingStop:Z

    .line 221
    const/4 v3, 0x1

    .line 223
    :cond_9
    iget-boolean v4, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mPlayingPause:Z

    if-eq v1, v4, :cond_a

    .line 224
    iput-boolean v1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mPlayingPause:Z

    .line 225
    const/4 v3, 0x1

    .line 227
    :cond_a
    iget-boolean v4, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mPaused:Z

    if-eq v2, v4, :cond_b

    .line 228
    iput-boolean v2, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mPaused:Z

    .line 229
    const/4 v3, 0x1

    .line 231
    :cond_b
    iget-boolean v4, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mStartDownload:Z

    if-eq v6, v4, :cond_c

    .line 232
    iput-boolean v6, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mStartDownload:Z

    .line 233
    const/4 v3, 0x1

    .line 235
    :cond_c
    if-eqz v3, :cond_f

    .line 236
    iget-boolean v4, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mPlayingStop:Z

    const/4 v7, 0x1

    if-nez v4, :cond_e

    iget-boolean v4, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mPlayingPause:Z

    if-nez v4, :cond_e

    iget-boolean v4, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mPaused:Z

    if-nez v4, :cond_e

    iget-boolean v4, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mStartDownload:Z

    if-eqz v4, :cond_d

    goto :goto_2

    :cond_d
    goto :goto_3

    :cond_e
    :goto_2
    move v5, v7

    :goto_3
    iput-boolean v5, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mShowIndicator:Z

    .line 237
    return v7

    .line 239
    :cond_f
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v4

    return v4
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 145
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 150
    return-void
.end method

.method public setIndicatorPause(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "indicatorPause"    # Landroid/graphics/drawable/Drawable;

    .line 108
    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mIndicatorPause:Landroid/graphics/drawable/Drawable;

    .line 109
    return-void
.end method

.method public setIndicatorPlay(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "indicatorPlay"    # Landroid/graphics/drawable/Drawable;

    .line 100
    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mIndicatorPlay:Landroid/graphics/drawable/Drawable;

    .line 101
    return-void
.end method

.method public setIndicatorStart(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "indicatorStart"    # Landroid/graphics/drawable/Drawable;

    .line 112
    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mIndicatorStart:Landroid/graphics/drawable/Drawable;

    .line 113
    return-void
.end method

.method public setIndicatorStop(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "indicatorStop"    # Landroid/graphics/drawable/Drawable;

    .line 104
    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mIndicatorStop:Landroid/graphics/drawable/Drawable;

    .line 105
    return-void
.end method

.method public setInset(F)V
    .locals 0
    .param p1, "inset"    # F

    .line 96
    iput p1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mInset:F

    .line 97
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0
    .param p1, "strokeWidth"    # F

    .line 92
    iput p1, p0, Lcom/xiaopeng/xui/drawable/progress/XCircularProgressBgDrawable;->mStrokeWidth:F

    .line 93
    return-void
.end method

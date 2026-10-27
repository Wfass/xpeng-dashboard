.class public Lxiaopeng/widget/ClipDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "ClipDrawable.java"


# static fields
.field private static final MAX_LEVEL:I = 0x2710


# instance fields
.field protected mClipPath:Landroid/graphics/Path;

.field protected mRadiusX:I

.field protected mRadiusY:I

.field private mTempPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lxiaopeng/widget/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 34
    invoke-direct {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 35
    invoke-direct {p0}, Lxiaopeng/widget/ClipDrawable;->init()V

    .line 36
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

    .line 75
    const/4 v0, 0x0

    .line 77
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 78
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

    .line 79
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v1, :cond_2

    .line 80
    :cond_1
    const/4 v2, 0x2

    if-ne v3, v2, :cond_0

    .line 81
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 85
    :cond_2
    if-eqz v0, :cond_3

    .line 86
    invoke-virtual {p0, v0}, Lxiaopeng/widget/ClipDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    :cond_3
    return-void
.end method

.method private init()V
    .locals 0

    .line 43
    return-void
.end method

.method private initPath(ILandroid/graphics/Rect;)V
    .locals 10
    .param p1, "level"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 105
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 106
    .local v0, "w":F
    rsub-int v1, p1, 0x2710

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const v2, 0x461c4000    # 10000.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 107
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 108
    .local v1, "h":I
    iget v2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v2

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v2

    iget v2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float v6, v2, v0

    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    int-to-float v7, v2

    iget v2, p0, Lxiaopeng/widget/ClipDrawable;->mRadiusX:I

    int-to-float v8, v2

    iget v2, p0, Lxiaopeng/widget/ClipDrawable;->mRadiusY:I

    int-to-float v9, v2

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lxiaopeng/widget/ClipDrawable;->generateRoundRect(FFFFFF)Landroid/graphics/Path;

    move-result-object v2

    iput-object v2, p0, Lxiaopeng/widget/ClipDrawable;->mClipPath:Landroid/graphics/Path;

    .line 109
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 113
    iget-object v0, p0, Lxiaopeng/widget/ClipDrawable;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p0, v0, p1}, Lxiaopeng/widget/ClipDrawable;->drawSliderRect(Landroid/graphics/Path;Landroid/graphics/Canvas;)V

    .line 114
    return-void
.end method

.method protected drawSliderRect(Landroid/graphics/Path;Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "sliderPath"    # Landroid/graphics/Path;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 117
    invoke-virtual {p0}, Lxiaopeng/widget/ClipDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 118
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 119
    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 120
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 121
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 122
    return-void
.end method

.method public generateRoundRect(FFFFFF)Landroid/graphics/Path;
    .locals 8
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "rx"    # F
    .param p6, "ry"    # F

    .line 125
    iget-object v0, p0, Lxiaopeng/widget/ClipDrawable;->mTempPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lxiaopeng/widget/ClipDrawable;->mTempPath:Landroid/graphics/Path;

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lxiaopeng/widget/ClipDrawable;->mTempPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 130
    :goto_0
    const/16 v0, 0x8

    new-array v6, v0, [F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, v6, v0

    const/4 v0, 0x1

    aput v1, v6, v0

    const/4 v0, 0x2

    aput p5, v6, v0

    const/4 v0, 0x3

    aput p6, v6, v0

    const/4 v0, 0x4

    aput p5, v6, v0

    const/4 v0, 0x5

    aput p6, v6, v0

    const/4 v0, 0x6

    aput v1, v6, v0

    const/4 v0, 0x7

    aput v1, v6, v0

    .line 136
    .local v6, "radii":[F
    iget-object v1, p0, Lxiaopeng/widget/ClipDrawable;->mTempPath:Landroid/graphics/Path;

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 137
    iget-object v0, p0, Lxiaopeng/widget/ClipDrawable;->mTempPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 4
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableWrapper;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 49
    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 50
    sget-object v1, Lxiaopeng/widget/R$styleable;->ClipDrawable:[I

    invoke-virtual {p4, p3, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .local v1, "ta":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 52
    .end local v1    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    sget-object v1, Lxiaopeng/widget/R$styleable;->ClipDrawable:[I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 54
    .restart local v1    # "ta":Landroid/content/res/TypedArray;
    :goto_0
    sget v2, Lxiaopeng/widget/R$styleable;->ClipDrawable_android_drawable:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 55
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 56
    invoke-virtual {p0, v2}, Lxiaopeng/widget/ClipDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 58
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lxiaopeng/widget/ClipDrawable;->inflateChildDrawable(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 60
    :goto_1
    sget v3, Lxiaopeng/widget/R$styleable;->ClipDrawable_radius_x:I

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lxiaopeng/widget/ClipDrawable;->mRadiusX:I

    .line 61
    sget v3, Lxiaopeng/widget/R$styleable;->ClipDrawable_radius_y:I

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lxiaopeng/widget/ClipDrawable;->mRadiusY:I

    .line 63
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 100
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 101
    invoke-virtual {p0}, Lxiaopeng/widget/ClipDrawable;->getLevel()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lxiaopeng/widget/ClipDrawable;->initPath(ILandroid/graphics/Rect;)V

    .line 102
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .line 92
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->onLevelChange(I)Z

    .line 93
    invoke-virtual {p0}, Lxiaopeng/widget/ClipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lxiaopeng/widget/ClipDrawable;->initPath(ILandroid/graphics/Rect;)V

    .line 94
    invoke-virtual {p0}, Lxiaopeng/widget/ClipDrawable;->invalidateSelf()V

    .line 95
    const/4 v0, 0x1

    return v0
.end method

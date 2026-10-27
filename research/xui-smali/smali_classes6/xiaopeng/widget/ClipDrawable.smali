.class public Lxiaopeng/widget/ClipDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "ClipDrawable.java"


# static fields
.field private static final MAX_LEVEL:I = 0x2710


# instance fields
.field protected mClipPath:Landroid/graphics/Path;

.field private final mHotspotBounds:Landroid/graphics/Rect;

.field private final mPaint:Landroid/graphics/Paint;

.field protected mRadiusX:I

.field protected mRadiusY:I

.field private mTempPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lxiaopeng/widget/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 41
    invoke-direct {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lxiaopeng/widget/ClipDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lxiaopeng/widget/ClipDrawable;->mPaint:Landroid/graphics/Paint;

    .line 42
    invoke-direct {p0}, Lxiaopeng/widget/ClipDrawable;->init()V

    .line 43
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

    .line 85
    const/4 v0, 0x0

    .line 87
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 88
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

    .line 89
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v1, :cond_2

    .line 90
    :cond_1
    const/4 v2, 0x2

    if-ne v3, v2, :cond_0

    .line 91
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 95
    :cond_2
    if-eqz v0, :cond_3

    .line 96
    invoke-virtual {p0, v0}, Lxiaopeng/widget/ClipDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    :cond_3
    return-void
.end method

.method private init()V
    .locals 3

    .line 50
    iget-object v0, p0, Lxiaopeng/widget/ClipDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    iget-object v0, p0, Lxiaopeng/widget/ClipDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    iget-object v0, p0, Lxiaopeng/widget/ClipDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 53
    return-void
.end method

.method private initPath(ILandroid/graphics/Rect;)V
    .locals 10
    .param p1, "level"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 121
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 122
    .local v0, "w":F
    const/4 v1, 0x0

    .line 123
    .local v1, "deltaW":F
    iget-object v2, p0, Lxiaopeng/widget/ClipDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lxiaopeng/widget/ClipDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v2, v0

    if-gez v2, :cond_0

    .line 124
    iget-object v2, p0, Lxiaopeng/widget/ClipDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sub-float v1, v0, v2

    .line 125
    iget-object v2, p0, Lxiaopeng/widget/ClipDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v0, v2

    .line 127
    :cond_0
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    const v3, 0x461c4000    # 10000.0f

    const/16 v4, 0x2710

    if-lez v2, :cond_3

    .line 128
    if-ne p1, v4, :cond_1

    .line 129
    add-float/2addr v0, v1

    goto :goto_0

    .line 130
    :cond_1
    if-nez p1, :cond_2

    .line 131
    const/4 v0, 0x0

    goto :goto_0

    .line 133
    :cond_2
    sub-int/2addr v4, p1

    int-to-float v2, v4

    mul-float/2addr v2, v0

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    .line 134
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v1, v2

    add-float/2addr v0, v2

    goto :goto_0

    .line 137
    :cond_3
    sub-int/2addr v4, p1

    int-to-float v2, v4

    mul-float/2addr v2, v0

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    .line 139
    :goto_0
    iget v2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v2

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v2

    iget v2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float v6, v2, v0

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v2

    iget v2, p0, Lxiaopeng/widget/ClipDrawable;->mRadiusX:I

    int-to-float v8, v2

    iget v2, p0, Lxiaopeng/widget/ClipDrawable;->mRadiusY:I

    int-to-float v9, v2

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lxiaopeng/widget/ClipDrawable;->generateRoundRect(FFFFFF)Landroid/graphics/Path;

    move-result-object v2

    iput-object v2, p0, Lxiaopeng/widget/ClipDrawable;->mClipPath:Landroid/graphics/Path;

    .line 140
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 144
    iget-object v0, p0, Lxiaopeng/widget/ClipDrawable;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p0, v0, p1}, Lxiaopeng/widget/ClipDrawable;->drawSliderRect(Landroid/graphics/Path;Landroid/graphics/Canvas;)V

    .line 145
    return-void
.end method

.method protected drawSliderRect(Landroid/graphics/Path;Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "sliderPath"    # Landroid/graphics/Path;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 148
    invoke-virtual {p0}, Lxiaopeng/widget/ClipDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 149
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lxiaopeng/widget/ClipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 150
    .local v1, "bounds":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v2

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v2

    const/4 v8, 0x0

    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    .line 151
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 152
    iget-object v2, p0, Lxiaopeng/widget/ClipDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 153
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 154
    return-void
.end method

.method public generateRoundRect(FFFFFF)Landroid/graphics/Path;
    .locals 14
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "rx"    # F
    .param p6, "ry"    # F

    move-object v0, p0

    .line 157
    iget-object v1, v0, Lxiaopeng/widget/ClipDrawable;->mTempPath:Landroid/graphics/Path;

    if-nez v1, :cond_0

    .line 158
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v0, Lxiaopeng/widget/ClipDrawable;->mTempPath:Landroid/graphics/Path;

    goto :goto_0

    .line 160
    :cond_0
    iget-object v1, v0, Lxiaopeng/widget/ClipDrawable;->mTempPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 162
    :goto_0
    const/16 v1, 0x8

    new-array v7, v1, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v7, v1

    const/4 v1, 0x1

    aput v2, v7, v1

    const/4 v1, 0x2

    aput p5, v7, v1

    const/4 v1, 0x3

    aput p6, v7, v1

    const/4 v1, 0x4

    aput p5, v7, v1

    const/4 v1, 0x5

    aput p6, v7, v1

    const/4 v1, 0x6

    aput v2, v7, v1

    const/4 v1, 0x7

    aput v2, v7, v1

    .line 168
    .local v7, "radii":[F
    invoke-virtual {v0}, Lxiaopeng/widget/ClipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 169
    .local v1, "bounds":Landroid/graphics/Rect;
    iget-object v8, v0, Lxiaopeng/widget/ClipDrawable;->mTempPath:Landroid/graphics/Path;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v9, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v10, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v11, v2

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 170
    iget-object v2, v0, Lxiaopeng/widget/ClipDrawable;->mTempPath:Landroid/graphics/Path;

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 171
    iget-object v2, v0, Lxiaopeng/widget/ClipDrawable;->mTempPath:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 172
    iget-object v2, v0, Lxiaopeng/widget/ClipDrawable;->mTempPath:Landroid/graphics/Path;

    return-object v2
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

    .line 57
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableWrapper;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 59
    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 60
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->ClipDrawable:[I

    invoke-virtual {p4, p3, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .local v1, "ta":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 62
    .end local v1    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->ClipDrawable:[I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 64
    .restart local v1    # "ta":Landroid/content/res/TypedArray;
    :goto_0
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->ClipDrawable_android_drawable:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 65
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 66
    invoke-virtual {p0, v2}, Lxiaopeng/widget/ClipDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 68
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lxiaopeng/widget/ClipDrawable;->inflateChildDrawable(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 70
    :goto_1
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->ClipDrawable_radius_x:I

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lxiaopeng/widget/ClipDrawable;->mRadiusX:I

    .line 71
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->ClipDrawable_radius_y:I

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lxiaopeng/widget/ClipDrawable;->mRadiusY:I

    .line 73
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 110
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 111
    invoke-virtual {p0}, Lxiaopeng/widget/ClipDrawable;->getLevel()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lxiaopeng/widget/ClipDrawable;->initPath(ILandroid/graphics/Rect;)V

    .line 112
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .line 102
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->onLevelChange(I)Z

    .line 103
    invoke-virtual {p0}, Lxiaopeng/widget/ClipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lxiaopeng/widget/ClipDrawable;->initPath(ILandroid/graphics/Rect;)V

    .line 104
    invoke-virtual {p0}, Lxiaopeng/widget/ClipDrawable;->invalidateSelf()V

    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public setHotspotBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableWrapper;->setHotspotBounds(IIII)V

    .line 117
    iget-object v0, p0, Lxiaopeng/widget/ClipDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 118
    return-void
.end method

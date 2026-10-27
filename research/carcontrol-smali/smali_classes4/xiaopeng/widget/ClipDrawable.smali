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

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, v0}, Lxiaopeng/widget/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 36
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lxiaopeng/widget/ClipDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    .line 37
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x7

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lxiaopeng/widget/ClipDrawable;->mPaint:Landroid/graphics/Paint;

    .line 42
    invoke-direct {p0}, Lxiaopeng/widget/ClipDrawable;->init()V

    return-void
.end method

.method private inflateChildDrawable(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x0

    .line 88
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 89
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_2

    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 91
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 96
    invoke-virtual {p0, v1}, Lxiaopeng/widget/ClipDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method private init()V
    .locals 3

    .line 50
    iget-object v0, p0, Lxiaopeng/widget/ClipDrawable;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

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

    return-void
.end method

.method private initPath(ILandroid/graphics/Rect;)V
    .locals 10

    .line 121
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 123
    iget-object v1, p0, Lxiaopeng/widget/ClipDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lxiaopeng/widget/ClipDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    .line 124
    iget-object v1, p0, Lxiaopeng/widget/ClipDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 125
    iget-object v1, p0, Lxiaopeng/widget/ClipDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    move v1, v0

    move v0, v2

    :goto_0
    cmpl-float v3, v0, v2

    const v4, 0x461c4000    # 10000.0f

    const/16 v5, 0x2710

    if-lez v3, :cond_3

    if-ne p1, v5, :cond_1

    :goto_1
    add-float v2, v1, v0

    goto :goto_2

    :cond_1
    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    sub-int/2addr v5, p1

    int-to-float p1, v5

    mul-float/2addr p1, v1

    div-float/2addr p1, v4

    sub-float/2addr v1, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v0, p1

    goto :goto_1

    :cond_3
    sub-int/2addr v5, p1

    int-to-float p1, v5

    mul-float/2addr p1, v1

    div-float/2addr p1, v4

    sub-float v2, v1, p1

    .line 139
    :goto_2
    iget p1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v4, p1

    iget p1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v5, p1

    iget p1, p2, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    add-float v6, p1, v2

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, p1

    iget p1, p0, Lxiaopeng/widget/ClipDrawable;->mRadiusX:I

    int-to-float v8, p1

    iget p1, p0, Lxiaopeng/widget/ClipDrawable;->mRadiusY:I

    int-to-float v9, p1

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lxiaopeng/widget/ClipDrawable;->generateRoundRect(FFFFFF)Landroid/graphics/Path;

    move-result-object p1

    iput-object p1, p0, Lxiaopeng/widget/ClipDrawable;->mClipPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lxiaopeng/widget/ClipDrawable;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p0, v0, p1}, Lxiaopeng/widget/ClipDrawable;->drawSliderRect(Landroid/graphics/Path;Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawSliderRect(Landroid/graphics/Path;Landroid/graphics/Canvas;)V
    .locals 9

    .line 148
    invoke-virtual {p0}, Lxiaopeng/widget/ClipDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 149
    invoke-virtual {p0}, Lxiaopeng/widget/ClipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 150
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v1

    const/4 v8, 0x0

    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    .line 151
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 152
    iget-object v0, p0, Lxiaopeng/widget/ClipDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 153
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public generateRoundRect(FFFFFF)Landroid/graphics/Path;
    .locals 8

    .line 157
    iget-object v0, p0, Lxiaopeng/widget/ClipDrawable;->mTempPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lxiaopeng/widget/ClipDrawable;->mTempPath:Landroid/graphics/Path;

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

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

    const/4 p5, 0x5

    aput p6, v6, p5

    const/4 p5, 0x6

    aput v1, v6, p5

    const/4 p5, 0x7

    aput v1, v6, p5

    .line 168
    invoke-virtual {p0}, Lxiaopeng/widget/ClipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p5

    .line 169
    iget-object v0, p0, Lxiaopeng/widget/ClipDrawable;->mTempPath:Landroid/graphics/Path;

    iget p6, p5, Landroid/graphics/Rect;->left:I

    int-to-float v1, p6

    iget p6, p5, Landroid/graphics/Rect;->top:I

    int-to-float v2, p6

    iget p6, p5, Landroid/graphics/Rect;->right:I

    int-to-float v3, p6

    iget p5, p5, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, p5

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 170
    iget-object v1, p0, Lxiaopeng/widget/ClipDrawable;->mTempPath:Landroid/graphics/Path;

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 171
    iget-object p1, p0, Lxiaopeng/widget/ClipDrawable;->mTempPath:Landroid/graphics/Path;

    sget-object p2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {p1, p2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 172
    iget-object p1, p0, Lxiaopeng/widget/ClipDrawable;->mTempPath:Landroid/graphics/Path;

    return-object p1
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableWrapper;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 60
    sget-object v1, Lxiaopeng/widget/R$styleable;->ClipDrawable:[I

    invoke-virtual {p4, p3, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    goto :goto_0

    .line 62
    :cond_0
    sget-object v1, Lxiaopeng/widget/R$styleable;->ClipDrawable:[I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 64
    :goto_0
    sget v2, Lxiaopeng/widget/R$styleable;->ClipDrawable_android_drawable:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 66
    invoke-virtual {p0, v2}, Lxiaopeng/widget/ClipDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 68
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lxiaopeng/widget/ClipDrawable;->inflateChildDrawable(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 70
    :goto_1
    sget p1, Lxiaopeng/widget/R$styleable;->ClipDrawable_radius_x:I

    invoke-virtual {v1, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lxiaopeng/widget/ClipDrawable;->mRadiusX:I

    .line 71
    sget p1, Lxiaopeng/widget/R$styleable;->ClipDrawable_radius_y:I

    invoke-virtual {v1, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lxiaopeng/widget/ClipDrawable;->mRadiusY:I

    .line 73
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 110
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 111
    invoke-virtual {p0}, Lxiaopeng/widget/ClipDrawable;->getLevel()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lxiaopeng/widget/ClipDrawable;->initPath(ILandroid/graphics/Rect;)V

    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1

    .line 102
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->onLevelChange(I)Z

    .line 103
    invoke-virtual {p0}, Lxiaopeng/widget/ClipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lxiaopeng/widget/ClipDrawable;->initPath(ILandroid/graphics/Rect;)V

    .line 104
    invoke-virtual {p0}, Lxiaopeng/widget/ClipDrawable;->invalidateSelf()V

    const/4 p1, 0x1

    return p1
.end method

.method public setHotspotBounds(IIII)V
    .locals 1

    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableWrapper;->setHotspotBounds(IIII)V

    .line 117
    iget-object v0, p0, Lxiaopeng/widget/ClipDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

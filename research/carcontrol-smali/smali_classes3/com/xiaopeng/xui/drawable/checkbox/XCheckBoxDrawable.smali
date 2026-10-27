.class public Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "XCheckBoxDrawable.java"


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mColorBg:Landroid/content/res/ColorStateList;

.field private mColorFront:Landroid/content/res/ColorStateList;

.field private mColorInner:Landroid/content/res/ColorStateList;

.field private mDrawablePadding:F

.field private mFrameWidth:F

.field private mNikePath:Landroid/graphics/Path;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    .line 28
    sput-object v0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->mColorBg:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->getState()[I

    move-result-object v2

    sget v3, Lcom/xiaopeng/xpui/R$color;->x_check_box_inner_color:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    iget v4, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->mDrawablePadding:F

    iget v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->mFrameWidth:F

    add-float v5, v4, v0

    add-float v6, v4, v0

    iget-object v7, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 68
    sget-object v0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->CHECKED_STATE_SET:[I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->getState()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->mColorFront:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->getState()[I

    move-result-object v2

    sget v3, Lcom/xiaopeng/xpui/R$color;->x_check_box_frame_color:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->mDrawablePadding:F

    const/high16 v1, 0x3fc00000    # 1.5f

    sub-float v3, v0, v1

    sub-float v4, v0, v1

    iget v2, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->mFrameWidth:F

    add-float v5, v0, v2

    add-float/2addr v5, v1

    add-float/2addr v0, v2

    add-float v6, v0, v1

    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v8, 0x40400000    # 3.0f

    iget-object v9, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->mColorInner:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->getState()[I

    move-result-object v2

    sget v3, Lcom/xiaopeng/xpui/R$color;->x_radio_inner_color_selector:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->mNikePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->mColorFront:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->getState()[I

    move-result-object v2

    sget v3, Lcom/xiaopeng/xpui/R$color;->x_check_box_frame_color:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget v4, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->mDrawablePadding:F

    iget v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->mFrameWidth:F

    add-float v5, v4, v0

    add-float v6, v4, v0

    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v8, 0x40400000    # 3.0f

    iget-object v9, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v4

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 97
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    .line 98
    sget p2, Lcom/xiaopeng/xpui/R$color;->x_check_box_inner_color:I

    invoke-virtual {p1, p2, p4}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->mColorBg:Landroid/content/res/ColorStateList;

    .line 99
    sget p2, Lcom/xiaopeng/xpui/R$color;->x_check_box_frame_color:I

    invoke-virtual {p1, p2, p4}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->mColorFront:Landroid/content/res/ColorStateList;

    .line 100
    sget p2, Lcom/xiaopeng/xpui/R$color;->x_radio_inner_color_selector:I

    invoke-virtual {p1, p2, p4}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->mColorInner:Landroid/content/res/ColorStateList;

    const/high16 p1, 0x41e40000    # 28.5f

    .line 101
    iput p1, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->mDrawablePadding:F

    const/high16 p1, 0x42040000    # 33.0f

    .line 102
    iput p1, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->mFrameWidth:F

    .line 103
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 104
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 105
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->mNikePath:Landroid/graphics/Path;

    const/high16 p2, 0x42100000    # 36.0f

    const/high16 p3, 0x42380000    # 46.0f

    .line 106
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 107
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->mNikePath:Landroid/graphics/Path;

    const/high16 p2, 0x42240000    # 41.0f

    const/high16 p3, 0x42500000    # 52.0f

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 108
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawable;->mNikePath:Landroid/graphics/Path;

    const/high16 p2, 0x42580000    # 54.0f

    const/high16 p3, 0x42200000    # 40.0f

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

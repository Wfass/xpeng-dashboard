.class public Lcom/xiaopeng/xui/drawable/XToggleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "XToggleDrawable.java"


# static fields
.field private static final BRIGHTNESS_DEFAULT:I = 0x0

.field private static final LIGHT_RADIUS_DEFAULT:F = 0.0f

.field private static final LIGHT_STRENGTH_DEFAULT:F = 0.5f

.field private static final TOGGLE_STYLE_DEFAULT:I


# instance fields
.field private mChecked:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mRoundRadius:F

.field private mXLightPaint:Lcom/xiaopeng/xui/graphics/XLightPaint;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->mChecked:Z

    return-void
.end method

.method private updateAttr(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 10

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 58
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XToggleDrawable:[I

    invoke-virtual {p3, p2, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    goto :goto_0

    .line 60
    :cond_0
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XToggleDrawable:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 62
    :goto_0
    sget v1, Lcom/xiaopeng/xpui/R$color;->x_theme_primary_normal:I

    invoke-virtual {p1, v1, p3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p3

    .line 64
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XToggleDrawable_toggle_stroke_color:I

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 66
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XToggleDrawable_toggle_stroke_width:I

    sget v3, Lcom/xiaopeng/xpui/R$dimen;->x_toggle_stroke_size:I

    .line 67
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 66
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 69
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XToggleDrawable_toggle_enable_light:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 71
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XToggleDrawable_toggle_light_radius:I

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 73
    sget v5, Lcom/xiaopeng/xpui/R$styleable;->XToggleDrawable_toggle_brightness:I

    invoke-virtual {p2, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 75
    sget v6, Lcom/xiaopeng/xpui/R$styleable;->XToggleDrawable_toggle_light_strength:I

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .line 77
    sget v7, Lcom/xiaopeng/xpui/R$styleable;->XToggleDrawable_toggle_light_type:I

    invoke-virtual {p2, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 79
    sget v8, Lcom/xiaopeng/xpui/R$styleable;->XToggleDrawable_toggle_light_color:I

    invoke-virtual {p2, v8, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 81
    sget v8, Lcom/xiaopeng/xpui/R$styleable;->XToggleDrawable_toggle_style:I

    invoke-virtual {p2, v8, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 83
    sget v8, Lcom/xiaopeng/xpui/R$styleable;->XToggleDrawable_toggle_round_radius:I

    sget v9, Lcom/xiaopeng/xpui/R$dimen;->x_toggle_rect_round_radius:I

    .line 84
    invoke-virtual {p1, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 83
    invoke-virtual {p2, v8, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->mRoundRadius:F

    .line 85
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    if-nez v0, :cond_1

    .line 90
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    if-ne v0, p1, :cond_2

    .line 92
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 96
    new-instance p1, Lcom/xiaopeng/xui/graphics/XLightPaint;

    iget-object p2, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Lcom/xiaopeng/xui/graphics/XLightPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->mXLightPaint:Lcom/xiaopeng/xui/graphics/XLightPaint;

    .line 97
    invoke-virtual {p1, v4}, Lcom/xiaopeng/xui/graphics/XLightPaint;->setLightRadius(F)V

    .line 98
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->mXLightPaint:Lcom/xiaopeng/xui/graphics/XLightPaint;

    invoke-virtual {p1, v5}, Lcom/xiaopeng/xui/graphics/XLightPaint;->setBrightness(I)V

    .line 99
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->mXLightPaint:Lcom/xiaopeng/xui/graphics/XLightPaint;

    invoke-virtual {p1, p3}, Lcom/xiaopeng/xui/graphics/XLightPaint;->setLightColor(I)V

    .line 100
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->mXLightPaint:Lcom/xiaopeng/xui/graphics/XLightPaint;

    invoke-virtual {p1, v6}, Lcom/xiaopeng/xui/graphics/XLightPaint;->setLightStrength(F)V

    .line 101
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->mXLightPaint:Lcom/xiaopeng/xui/graphics/XLightPaint;

    invoke-virtual {p1, v7}, Lcom/xiaopeng/xui/graphics/XLightPaint;->setLightType(I)V

    .line 102
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->mXLightPaint:Lcom/xiaopeng/xui/graphics/XLightPaint;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/graphics/XLightPaint;->apply()V

    :cond_3
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 108
    iget-boolean v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->mChecked:Z

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 110
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 111
    iget v8, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->mRoundRadius:F

    .line 112
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v1

    iget-object v9, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v7, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 116
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 45
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 46
    invoke-direct {p0, p1, p3, p2}, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->updateAttr(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 51
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 52
    invoke-direct {p0, p1, p3, p4}, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->updateAttr(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 6

    .line 143
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    aget v4, p1, v2

    const v5, 0x10100a0

    if-ne v4, v5, :cond_0

    move p1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    .line 149
    :goto_1
    iget-boolean v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->mChecked:Z

    if-eq v0, p1, :cond_2

    move v1, v3

    .line 150
    :cond_2
    iput-boolean p1, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->mChecked:Z

    return v1
.end method

.method public setAlpha(I)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

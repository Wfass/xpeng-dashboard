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

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->mChecked:Z

    .line 41
    return-void
.end method

.method private updateAttr(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 17
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 57
    move-object/from16 v3, p3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 58
    sget-object v5, Lcom/xiaopeng/xpui/R$styleable;->XToggleDrawable:[I

    invoke-virtual {v3, v2, v5, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .local v5, "ta":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 60
    .end local v5    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    sget-object v5, Lcom/xiaopeng/xpui/R$styleable;->XToggleDrawable:[I

    invoke-virtual {v1, v2, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 62
    .restart local v5    # "ta":Landroid/content/res/TypedArray;
    :goto_0
    sget v6, Lcom/xiaopeng/xpui/R$color;->x_theme_primary_normal:I

    invoke-virtual {v1, v6, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    .line 64
    .local v6, "defaultColor":I
    sget v7, Lcom/xiaopeng/xpui/R$styleable;->XToggleDrawable_toggle_stroke_color:I

    invoke-virtual {v5, v7, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    .line 66
    .local v7, "color":I
    sget v8, Lcom/xiaopeng/xpui/R$styleable;->XToggleDrawable_toggle_stroke_width:I

    sget v9, Lcom/xiaopeng/xpui/R$dimen;->x_toggle_stroke_size:I

    .line 67
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    .line 66
    invoke-virtual {v5, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    .line 69
    .local v8, "strokeWidth":F
    sget v9, Lcom/xiaopeng/xpui/R$styleable;->XToggleDrawable_toggle_enable_light:I

    invoke-virtual {v5, v9, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 71
    .local v9, "enableLight":Z
    sget v10, Lcom/xiaopeng/xpui/R$styleable;->XToggleDrawable_toggle_light_radius:I

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    .line 73
    .local v10, "lightRadius":F
    sget v11, Lcom/xiaopeng/xpui/R$styleable;->XToggleDrawable_toggle_brightness:I

    invoke-virtual {v5, v11, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 75
    .local v11, "brightness":I
    sget v12, Lcom/xiaopeng/xpui/R$styleable;->XToggleDrawable_toggle_light_strength:I

    const/high16 v13, 0x3f000000    # 0.5f

    invoke-virtual {v5, v12, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v12

    .line 77
    .local v12, "lightStrength":F
    sget v13, Lcom/xiaopeng/xpui/R$styleable;->XToggleDrawable_toggle_light_type:I

    invoke-virtual {v5, v13, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 79
    .local v13, "lightType":I
    sget v14, Lcom/xiaopeng/xpui/R$styleable;->XToggleDrawable_toggle_light_color:I

    invoke-virtual {v5, v14, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    .line 81
    .local v14, "lightColor":I
    sget v15, Lcom/xiaopeng/xpui/R$styleable;->XToggleDrawable_toggle_style:I

    invoke-virtual {v5, v15, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 83
    .local v4, "toggleStyle":I
    sget v15, Lcom/xiaopeng/xpui/R$styleable;->XToggleDrawable_toggle_round_radius:I

    sget v2, Lcom/xiaopeng/xpui/R$dimen;->x_toggle_rect_round_radius:I

    .line 84
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 83
    invoke-virtual {v5, v15, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v0, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->mRoundRadius:F

    .line 85
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    iget-object v2, v0, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object v2, v0, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 89
    if-nez v4, :cond_1

    .line 90
    iget-object v2, v0, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v15, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_1

    .line 91
    :cond_1
    const/4 v2, 0x1

    if-ne v4, v2, :cond_2

    .line 92
    iget-object v2, v0, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v15, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    :cond_2
    :goto_1
    if-eqz v9, :cond_3

    .line 96
    new-instance v2, Lcom/xiaopeng/xui/graphics/XLightPaint;

    iget-object v15, v0, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v2, v15}, Lcom/xiaopeng/xui/graphics/XLightPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, v0, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->mXLightPaint:Lcom/xiaopeng/xui/graphics/XLightPaint;

    .line 97
    iget-object v2, v0, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->mXLightPaint:Lcom/xiaopeng/xui/graphics/XLightPaint;

    invoke-virtual {v2, v10}, Lcom/xiaopeng/xui/graphics/XLightPaint;->setLightRadius(F)V

    .line 98
    iget-object v2, v0, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->mXLightPaint:Lcom/xiaopeng/xui/graphics/XLightPaint;

    invoke-virtual {v2, v11}, Lcom/xiaopeng/xui/graphics/XLightPaint;->setBrightness(I)V

    .line 99
    iget-object v2, v0, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->mXLightPaint:Lcom/xiaopeng/xui/graphics/XLightPaint;

    invoke-virtual {v2, v14}, Lcom/xiaopeng/xui/graphics/XLightPaint;->setLightColor(I)V

    .line 100
    iget-object v2, v0, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->mXLightPaint:Lcom/xiaopeng/xui/graphics/XLightPaint;

    invoke-virtual {v2, v12}, Lcom/xiaopeng/xui/graphics/XLightPaint;->setLightStrength(F)V

    .line 101
    iget-object v2, v0, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->mXLightPaint:Lcom/xiaopeng/xui/graphics/XLightPaint;

    invoke-virtual {v2, v13}, Lcom/xiaopeng/xui/graphics/XLightPaint;->setLightType(I)V

    .line 102
    iget-object v2, v0, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->mXLightPaint:Lcom/xiaopeng/xui/graphics/XLightPaint;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/graphics/XLightPaint;->apply()V

    .line 104
    :cond_3
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 108
    iget-boolean v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->mChecked:Z

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 110
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 111
    .local v1, "bounds":Landroid/graphics/Rect;
    iget v10, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->mRoundRadius:F

    .line 112
    .local v10, "radius":F
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v2

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v2

    iget-object v9, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v7, v10

    move v8, v10

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 116
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 118
    .end local v0    # "count":I
    .end local v1    # "bounds":Landroid/graphics/Rect;
    .end local v10    # "radius":F
    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 132
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

    .line 45
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->updateAttr(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 47
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

    .line 51
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 52
    invoke-direct {p0, p1, p3, p4}, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->updateAttr(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 53
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 6
    .param p1, "state"    # [I

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "isChecked":Z
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, p1, v3

    .line 144
    .local v4, "s":I
    const v5, 0x10100a0

    if-ne v4, v5, :cond_0

    .line 145
    const/4 v0, 0x1

    .line 146
    goto :goto_1

    .line 143
    .end local v4    # "s":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 149
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->mChecked:Z

    if-eq v1, v0, :cond_2

    const/4 v2, 0x1

    nop

    :cond_2
    move v1, v2

    .line 150
    .local v1, "changed":Z
    iput-boolean v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->mChecked:Z

    .line 151
    return v1
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XToggleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 123
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 128
    return-void
.end method

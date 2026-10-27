.class public Lcom/google/android/material/resources/TextAppearance;
.super Ljava/lang/Object;
.source "TextAppearance.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TextAppearance"

.field private static final TYPEFACE_MONOSPACE:I = 0x3

.field private static final TYPEFACE_SANS:I = 0x1

.field private static final TYPEFACE_SERIF:I = 0x2


# instance fields
.field private font:Landroid/graphics/Typeface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final fontFamily:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final fontFamilyResourceId:I
    .annotation build Landroidx/annotation/FontRes;
    .end annotation
.end field

.field private fontResolved:Z

.field public final shadowColor:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final shadowDx:F

.field public final shadowDy:F

.field public final shadowRadius:F

.field public final textAllCaps:Z

.field public final textColor:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final textColorHint:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final textColorLink:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final textSize:F

.field public final textStyle:I

.field public final typeface:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/resources/TextAppearance;->fontResolved:Z

    .line 65
    sget-object v1, Lcom/google/android/material/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 67
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/google/android/material/R$styleable;->TextAppearance_android_textSize:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/google/android/material/resources/TextAppearance;->textSize:F

    .line 68
    sget v2, Lcom/google/android/material/R$styleable;->TextAppearance_android_textColor:I

    .line 69
    invoke-static {p1, v1, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    .line 71
    sget v2, Lcom/google/android/material/R$styleable;->TextAppearance_android_textColorHint:I

    .line 72
    invoke-static {p1, v1, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/resources/TextAppearance;->textColorHint:Landroid/content/res/ColorStateList;

    .line 74
    sget v2, Lcom/google/android/material/R$styleable;->TextAppearance_android_textColorLink:I

    .line 75
    invoke-static {p1, v1, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/resources/TextAppearance;->textColorLink:Landroid/content/res/ColorStateList;

    .line 77
    sget v2, Lcom/google/android/material/R$styleable;->TextAppearance_android_textStyle:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/resources/TextAppearance;->textStyle:I

    .line 78
    sget v2, Lcom/google/android/material/R$styleable;->TextAppearance_android_typeface:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/resources/TextAppearance;->typeface:I

    .line 79
    sget v2, Lcom/google/android/material/R$styleable;->TextAppearance_fontFamily:I

    sget v4, Lcom/google/android/material/R$styleable;->TextAppearance_android_fontFamily:I

    .line 80
    invoke-static {v1, v2, v4}, Lcom/google/android/material/resources/MaterialResources;->getIndexWithValue(Landroid/content/res/TypedArray;II)I

    move-result v2

    .line 84
    .local v2, "fontFamilyIndex":I
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/resources/TextAppearance;->fontFamilyResourceId:I

    .line 85
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/material/resources/TextAppearance;->fontFamily:Ljava/lang/String;

    .line 86
    sget v4, Lcom/google/android/material/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/resources/TextAppearance;->textAllCaps:Z

    .line 87
    sget v0, Lcom/google/android/material/R$styleable;->TextAppearance_android_shadowColor:I

    .line 88
    invoke-static {p1, v1, v0}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    .line 90
    sget v0, Lcom/google/android/material/R$styleable;->TextAppearance_android_shadowDx:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/resources/TextAppearance;->shadowDx:F

    .line 91
    sget v0, Lcom/google/android/material/R$styleable;->TextAppearance_android_shadowDy:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/resources/TextAppearance;->shadowDy:F

    .line 92
    sget v0, Lcom/google/android/material/R$styleable;->TextAppearance_android_shadowRadius:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/resources/TextAppearance;->shadowRadius:F

    .line 94
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    return-void
.end method


# virtual methods
.method public getFont(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 104
    iget-boolean v0, p0, Lcom/google/android/material/resources/TextAppearance;->fontResolved:Z

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    return-object v0

    .line 109
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 111
    :try_start_0
    iget v0, p0, Lcom/google/android/material/resources/TextAppearance;->fontFamilyResourceId:I

    invoke-static {p1, v0}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 112
    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    iget v1, p0, Lcom/google/android/material/resources/TextAppearance;->textStyle:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TextAppearance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading font "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/material/resources/TextAppearance;->fontFamily:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 115
    :catch_1
    move-exception v0

    .line 119
    :cond_1
    :goto_0
    nop

    .line 123
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    if-nez v0, :cond_3

    .line 124
    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->fontFamily:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/material/resources/TextAppearance;->textStyle:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    if-nez v0, :cond_4

    .line 129
    iget v0, p0, Lcom/google/android/material/resources/TextAppearance;->typeface:I

    packed-switch v0, :pswitch_data_0

    .line 140
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    goto :goto_2

    .line 137
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 138
    goto :goto_2

    .line 134
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 135
    goto :goto_2

    .line 131
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 132
    nop

    .line 143
    :goto_2
    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    if-eqz v0, :cond_4

    .line 144
    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    iget v1, p0, Lcom/google/android/material/resources/TextAppearance;->textStyle:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 148
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/resources/TextAppearance;->fontResolved:Z

    .line 149
    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateDrawState(Landroid/content/Context;Landroid/text/TextPaint;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textPaint"    # Landroid/text/TextPaint;

    .line 159
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/resources/TextAppearance;->updateMeasureState(Landroid/content/Context;Landroid/text/TextPaint;)V

    .line 161
    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    iget-object v1, p2, Landroid/text/TextPaint;->drawableState:[I

    iget-object v2, p0, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    .line 163
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x1000000

    .line 161
    :goto_0
    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 165
    iget v0, p0, Lcom/google/android/material/resources/TextAppearance;->shadowRadius:F

    iget v1, p0, Lcom/google/android/material/resources/TextAppearance;->shadowDx:F

    iget v2, p0, Lcom/google/android/material/resources/TextAppearance;->shadowDy:F

    iget-object v3, p0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    iget-object v4, p2, Landroid/text/TextPaint;->drawableState:[I

    iget-object v5, p0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    .line 170
    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 165
    :goto_1
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 172
    return-void
.end method

.method public updateMeasureState(Landroid/content/Context;Landroid/text/TextPaint;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textPaint"    # Landroid/text/TextPaint;

    .line 181
    invoke-virtual {p0, p1}, Lcom/google/android/material/resources/TextAppearance;->getFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 183
    .local v0, "tf":Landroid/graphics/Typeface;
    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 185
    iget v1, p0, Lcom/google/android/material/resources/TextAppearance;->textStyle:I

    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    not-int v2, v2

    and-int/2addr v1, v2

    .line 186
    .local v1, "fake":I
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 187
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    const/high16 v2, -0x41800000    # -0.25f

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p2, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 189
    iget v2, p0, Lcom/google/android/material/resources/TextAppearance;->textSize:F

    invoke-virtual {p2, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 190
    return-void
.end method

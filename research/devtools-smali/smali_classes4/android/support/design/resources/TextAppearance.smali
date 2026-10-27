.class public Landroid/support/design/resources/TextAppearance;
.super Ljava/lang/Object;
.source "TextAppearance.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TextAppearance"

.field private static final TYPEFACE_MONOSPACE:I = 0x3

.field private static final TYPEFACE_SANS:I = 0x1

.field private static final TYPEFACE_SERIF:I = 0x2


# instance fields
.field private font:Landroid/graphics/Typeface;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final fontFamily:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final fontFamilyResourceId:I
    .annotation build Landroid/support/annotation/FontRes;
    .end annotation
.end field

.field private fontResolved:Z

.field public final shadowColor:Landroid/content/res/ColorStateList;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final shadowDx:F

.field public final shadowDy:F

.field public final shadowRadius:F

.field public final textAllCaps:Z

.field public final textColor:Landroid/content/res/ColorStateList;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final textColorHint:Landroid/content/res/ColorStateList;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final textColorLink:Landroid/content/res/ColorStateList;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final textSize:F

.field public final textStyle:I

.field public final typeface:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p2    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/resources/TextAppearance;->fontResolved:Z

    .line 63
    sget-object v1, Landroid/support/design/resources/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 65
    sget v1, Landroid/support/design/resources/R$styleable;->TextAppearance_android_textSize:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/support/design/resources/TextAppearance;->textSize:F

    .line 66
    sget v1, Landroid/support/design/resources/R$styleable;->TextAppearance_android_textColor:I

    .line 67
    invoke-static {p1, p2, v1}, Landroid/support/design/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    .line 69
    sget v1, Landroid/support/design/resources/R$styleable;->TextAppearance_android_textColorHint:I

    .line 70
    invoke-static {p1, p2, v1}, Landroid/support/design/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/resources/TextAppearance;->textColorHint:Landroid/content/res/ColorStateList;

    .line 72
    sget v1, Landroid/support/design/resources/R$styleable;->TextAppearance_android_textColorLink:I

    .line 73
    invoke-static {p1, p2, v1}, Landroid/support/design/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/resources/TextAppearance;->textColorLink:Landroid/content/res/ColorStateList;

    .line 75
    sget v1, Landroid/support/design/resources/R$styleable;->TextAppearance_android_textStyle:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/resources/TextAppearance;->textStyle:I

    .line 76
    sget v1, Landroid/support/design/resources/R$styleable;->TextAppearance_android_typeface:I

    const/4 v3, 0x1

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/resources/TextAppearance;->typeface:I

    .line 77
    sget v1, Landroid/support/design/resources/R$styleable;->TextAppearance_fontFamily:I

    sget v3, Landroid/support/design/resources/R$styleable;->TextAppearance_android_fontFamily:I

    .line 78
    invoke-static {p2, v1, v3}, Landroid/support/design/resources/MaterialResources;->getIndexWithValue(Landroid/content/res/TypedArray;II)I

    move-result v1

    .line 82
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/support/design/resources/TextAppearance;->fontFamilyResourceId:I

    .line 83
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/resources/TextAppearance;->fontFamily:Ljava/lang/String;

    .line 84
    sget v1, Landroid/support/design/resources/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/design/resources/TextAppearance;->textAllCaps:Z

    .line 85
    sget v0, Landroid/support/design/resources/R$styleable;->TextAppearance_android_shadowColor:I

    .line 86
    invoke-static {p1, p2, v0}, Landroid/support/design/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    .line 88
    sget p1, Landroid/support/design/resources/R$styleable;->TextAppearance_android_shadowDx:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Landroid/support/design/resources/TextAppearance;->shadowDx:F

    .line 89
    sget p1, Landroid/support/design/resources/R$styleable;->TextAppearance_android_shadowDy:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Landroid/support/design/resources/TextAppearance;->shadowDy:F

    .line 90
    sget p1, Landroid/support/design/resources/R$styleable;->TextAppearance_android_shadowRadius:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Landroid/support/design/resources/TextAppearance;->shadowRadius:F

    .line 92
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    return-void
.end method


# virtual methods
.method public getFont(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 102
    iget-boolean v0, p0, Landroid/support/design/resources/TextAppearance;->fontResolved:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object p1, p0, Landroid/support/design/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    return-object p1

    .line 107
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 109
    :try_start_0
    iget v0, p0, Landroid/support/design/resources/TextAppearance;->fontFamilyResourceId:I

    invoke-static {p1, v0}, Landroid/support/v4/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 110
    iget-object p1, p0, Landroid/support/design/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    if-eqz p1, :cond_1

    .line 111
    iget-object p1, p0, Landroid/support/design/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    iget v0, p0, Landroid/support/design/resources/TextAppearance;->textStyle:I

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/resources/TextAppearance;->font:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception p1

    .line 116
    const-string v0, "TextAppearance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error loading font "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/design/resources/TextAppearance;->fontFamily:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 113
    :catch_1
    move-exception p1

    .line 117
    :cond_1
    :goto_0
    nop

    .line 121
    :cond_2
    :goto_1
    iget-object p1, p0, Landroid/support/design/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    if-nez p1, :cond_3

    .line 122
    iget-object p1, p0, Landroid/support/design/resources/TextAppearance;->fontFamily:Ljava/lang/String;

    iget v0, p0, Landroid/support/design/resources/TextAppearance;->textStyle:I

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 126
    :cond_3
    iget-object p1, p0, Landroid/support/design/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    if-nez p1, :cond_4

    .line 127
    iget p1, p0, Landroid/support/design/resources/TextAppearance;->typeface:I

    packed-switch p1, :pswitch_data_0

    .line 138
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroid/support/design/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    goto :goto_2

    .line 135
    :pswitch_0
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroid/support/design/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 136
    goto :goto_2

    .line 132
    :pswitch_1
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroid/support/design/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 133
    goto :goto_2

    .line 129
    :pswitch_2
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroid/support/design/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 130
    nop

    .line 141
    :goto_2
    iget-object p1, p0, Landroid/support/design/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    if-eqz p1, :cond_4

    .line 142
    iget-object p1, p0, Landroid/support/design/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    iget v0, p0, Landroid/support/design/resources/TextAppearance;->textStyle:I

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    .line 146
    :cond_4
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/design/resources/TextAppearance;->fontResolved:Z

    .line 147
    iget-object p1, p0, Landroid/support/design/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateDrawState(Landroid/content/Context;Landroid/text/TextPaint;)V
    .locals 5

    .line 157
    invoke-virtual {p0, p1, p2}, Landroid/support/design/resources/TextAppearance;->updateMeasureState(Landroid/content/Context;Landroid/text/TextPaint;)V

    .line 159
    iget-object p1, p0, Landroid/support/design/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/design/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    iget-object v0, p2, Landroid/text/TextPaint;->drawableState:[I

    iget-object v1, p0, Landroid/support/design/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    .line 161
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, -0x1000000

    .line 159
    :goto_0
    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 163
    iget p1, p0, Landroid/support/design/resources/TextAppearance;->shadowRadius:F

    iget v0, p0, Landroid/support/design/resources/TextAppearance;->shadowDx:F

    iget v1, p0, Landroid/support/design/resources/TextAppearance;->shadowDy:F

    iget-object v2, p0, Landroid/support/design/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/design/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    iget-object v3, p2, Landroid/text/TextPaint;->drawableState:[I

    iget-object v4, p0, Landroid/support/design/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    .line 168
    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 163
    :goto_1
    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 170
    return-void
.end method

.method public updateMeasureState(Landroid/content/Context;Landroid/text/TextPaint;)V
    .locals 1

    .line 179
    invoke-virtual {p0, p1}, Landroid/support/design/resources/TextAppearance;->getFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    .line 181
    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 183
    iget v0, p0, Landroid/support/design/resources/TextAppearance;->textStyle:I

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, v0

    .line 184
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 185
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    const/high16 p1, -0x41800000    # -0.25f

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 187
    iget p1, p0, Landroid/support/design/resources/TextAppearance;->textSize:F

    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 188
    return-void
.end method

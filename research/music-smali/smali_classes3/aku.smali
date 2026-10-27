.class public Laku;
.super Lakk;
.source "TooltipDrawable.java"

# interfaces
.implements Lcom/google/android/material/internal/l$a;


# static fields
.field private static final a:I

.field private static final b:I


# instance fields
.field private c:Ljava/lang/CharSequence;

.field private final d:Landroid/content/Context;

.field private final e:Landroid/graphics/Paint$FontMetrics;

.field private final f:Lcom/google/android/material/internal/l;

.field private final g:Landroid/view/View$OnLayoutChangeListener;

.field private final h:Landroid/graphics/Rect;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:F

.field private p:F

.field private final q:F

.field private r:F

.field private s:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    sget v0, Laiv$k;->Widget_MaterialComponents_Tooltip:I

    sput v0, Laku;->a:I

    .line 68
    sget v0, Laiv$b;->tooltipStyle:I

    sput v0, Laku;->b:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 141
    invoke-direct {p0, p1, p2, p3, p4}, Lakk;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 72
    new-instance p2, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {p2}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object p2, p0, Laku;->e:Landroid/graphics/Paint$FontMetrics;

    .line 74
    new-instance p2, Lcom/google/android/material/internal/l;

    invoke-direct {p2, p0}, Lcom/google/android/material/internal/l;-><init>(Lcom/google/android/material/internal/l$a;)V

    iput-object p2, p0, Laku;->f:Lcom/google/android/material/internal/l;

    .line 78
    new-instance p2, Laku$1;

    invoke-direct {p2, p0}, Laku$1;-><init>(Laku;)V

    iput-object p2, p0, Laku;->g:Landroid/view/View$OnLayoutChangeListener;

    .line 96
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Laku;->h:Landroid/graphics/Rect;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 105
    iput p2, p0, Laku;->o:F

    .line 106
    iput p2, p0, Laku;->p:F

    const/high16 p3, 0x3f000000    # 0.5f

    .line 107
    iput p3, p0, Laku;->q:F

    .line 108
    iput p3, p0, Laku;->r:F

    .line 109
    iput p2, p0, Laku;->s:F

    .line 142
    iput-object p1, p0, Laku;->d:Landroid/content/Context;

    .line 143
    iget-object p2, p0, Laku;->f:Lcom/google/android/material/internal/l;

    invoke-virtual {p2}, Lcom/google/android/material/internal/l;->a()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p2, Landroid/text/TextPaint;->density:F

    .line 144
    iget-object p1, p0, Laku;->f:Lcom/google/android/material/internal/l;

    invoke-virtual {p1}, Lcom/google/android/material/internal/l;->a()Landroid/text/TextPaint;

    move-result-object p1

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method private a()F
    .locals 2

    .line 464
    iget-object v0, p0, Laku;->h:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Laku;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Laku;->n:I

    sub-int/2addr v0, v1

    iget v1, p0, Laku;->l:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 465
    iget-object v0, p0, Laku;->h:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Laku;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Laku;->n:I

    sub-int/2addr v0, v1

    iget v1, p0, Laku;->l:I

    sub-int/2addr v0, v1

    :goto_0
    int-to-float v0, v0

    goto :goto_1

    .line 466
    :cond_0
    iget-object v0, p0, Laku;->h:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Laku;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p0, Laku;->n:I

    sub-int/2addr v0, v1

    iget v1, p0, Laku;->l:I

    add-int/2addr v0, v1

    if-lez v0, :cond_1

    .line 467
    iget-object v0, p0, Laku;->h:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Laku;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p0, Laku;->n:I

    sub-int/2addr v0, v1

    iget v1, p0, Laku;->l:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private a(Landroid/graphics/Rect;)F
    .locals 1

    .line 508
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0}, Laku;->d()F

    move-result v0

    sub-float/2addr p1, v0

    return p1
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;II)Laku;
    .locals 1

    .line 118
    new-instance v0, Laku;

    invoke-direct {v0, p0, p1, p2, p3}, Laku;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 119
    invoke-direct {v0, p1, p2, p3}, Laku;->a(Landroid/util/AttributeSet;II)V

    return-object v0
.end method

.method static synthetic a(Laku;Landroid/view/View;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Laku;->c(Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 11

    .line 482
    iget-object v0, p0, Laku;->c:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    .line 487
    :cond_0
    invoke-virtual {p0}, Laku;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 488
    invoke-direct {p0, v0}, Laku;->a(Landroid/graphics/Rect;)F

    move-result v1

    float-to-int v1, v1

    .line 490
    iget-object v2, p0, Laku;->f:Lcom/google/android/material/internal/l;

    invoke-virtual {v2}, Lcom/google/android/material/internal/l;->b()Lajw;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 491
    iget-object v2, p0, Laku;->f:Lcom/google/android/material/internal/l;

    invoke-virtual {v2}, Lcom/google/android/material/internal/l;->a()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p0}, Laku;->getState()[I

    move-result-object v3

    iput-object v3, v2, Landroid/text/TextPaint;->drawableState:[I

    .line 492
    iget-object v2, p0, Laku;->f:Lcom/google/android/material/internal/l;

    iget-object v3, p0, Laku;->d:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/l;->a(Landroid/content/Context;)V

    .line 493
    iget-object v2, p0, Laku;->f:Lcom/google/android/material/internal/l;

    invoke-virtual {v2}, Lcom/google/android/material/internal/l;->a()Landroid/text/TextPaint;

    move-result-object v2

    iget v3, p0, Laku;->s:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 496
    :cond_1
    iget-object v5, p0, Laku;->c:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v8, v0

    int-to-float v9, v1

    iget-object v0, p0, Laku;->f:Lcom/google/android/material/internal/l;

    invoke-virtual {v0}, Lcom/google/android/material/internal/l;->a()Landroid/text/TextPaint;

    move-result-object v10

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;II)V
    .locals 7

    .line 149
    iget-object v0, p0, Laku;->d:Landroid/content/Context;

    sget-object v2, Laiv$l;->Tooltip:[I

    const/4 v6, 0x0

    new-array v5, v6, [I

    move-object v1, p1

    move v3, p2

    move v4, p3

    .line 150
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/o;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 153
    iget-object p2, p0, Laku;->d:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Laiv$d;->mtrl_tooltip_arrowSize:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Laku;->m:I

    .line 155
    invoke-virtual {p0}, Laku;->M()Lakp;

    move-result-object p2

    invoke-virtual {p2}, Lakp;->n()Lakp$a;

    move-result-object p2

    invoke-direct {p0}, Laku;->b()Laki;

    move-result-object p3

    invoke-virtual {p2, p3}, Lakp$a;->a(Laki;)Lakp$a;

    move-result-object p2

    invoke-virtual {p2}, Lakp$a;->a()Lakp;

    move-result-object p2

    .line 154
    invoke-virtual {p0, p2}, Laku;->setShapeAppearanceModel(Lakp;)V

    .line 157
    sget p2, Laiv$l;->Tooltip_android_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Laku;->a(Ljava/lang/CharSequence;)V

    .line 158
    iget-object p2, p0, Laku;->d:Landroid/content/Context;

    sget p3, Laiv$l;->Tooltip_android_textAppearance:I

    .line 159
    invoke-static {p2, p1, p3}, Lajv;->c(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lajw;

    move-result-object p2

    .line 158
    invoke-virtual {p0, p2}, Laku;->a(Lajw;)V

    .line 162
    iget-object p2, p0, Laku;->d:Landroid/content/Context;

    sget p3, Laiv$b;->colorOnBackground:I

    const-class v0, Laku;

    .line 164
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-static {p2, p3, v0}, Lajj;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result p2

    .line 165
    iget-object p3, p0, Laku;->d:Landroid/content/Context;

    const-class v0, Laku;

    .line 167
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x1010031

    .line 166
    invoke-static {p3, v1, v0}, Lajj;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result p3

    const/16 v0, 0xe5

    .line 171
    invoke-static {p3, v0}, Ldu;->c(II)I

    move-result p3

    const/16 v0, 0x99

    .line 172
    invoke-static {p2, v0}, Ldu;->c(II)I

    move-result p2

    .line 170
    invoke-static {p3, p2}, Lajj;->a(II)I

    move-result p2

    .line 173
    sget p3, Laiv$l;->Tooltip_backgroundTint:I

    .line 175
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 174
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 173
    invoke-virtual {p0, p2}, Laku;->g(Landroid/content/res/ColorStateList;)V

    .line 177
    iget-object p2, p0, Laku;->d:Landroid/content/Context;

    sget p3, Laiv$b;->colorSurface:I

    const-class v0, Laku;

    .line 180
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-static {p2, p3, v0}, Lajj;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result p2

    .line 178
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 177
    invoke-virtual {p0, p2}, Laku;->h(Landroid/content/res/ColorStateList;)V

    .line 182
    sget p2, Laiv$l;->Tooltip_android_padding:I

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Laku;->i:I

    .line 183
    sget p2, Laiv$l;->Tooltip_android_minWidth:I

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Laku;->j:I

    .line 184
    sget p2, Laiv$l;->Tooltip_android_minHeight:I

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Laku;->k:I

    .line 185
    sget p2, Laiv$l;->Tooltip_android_layout_margin:I

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Laku;->l:I

    .line 187
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private b()Laki;
    .locals 7

    .line 473
    invoke-direct {p0}, Laku;->a()F

    move-result v0

    neg-float v0, v0

    .line 475
    invoke-virtual {p0}, Laku;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-double v1, v1

    iget v3, p0, Laku;->m:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    double-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    neg-float v2, v1

    .line 476
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 477
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 478
    new-instance v1, Lakm;

    new-instance v2, Lakj;

    iget v3, p0, Laku;->m:I

    int-to-float v3, v3

    invoke-direct {v2, v3}, Lakj;-><init>(F)V

    invoke-direct {v1, v2, v0}, Lakm;-><init>(Laki;F)V

    return-object v1
.end method

.method private c()F
    .locals 2

    .line 500
    iget-object v0, p0, Laku;->c:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 503
    :cond_0
    iget-object v1, p0, Laku;->f:Lcom/google/android/material/internal/l;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/l;->a(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method private c(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x2

    .line 456
    new-array v0, v0, [I

    .line 457
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 458
    aget v0, v0, v1

    iput v0, p0, Laku;->n:I

    .line 459
    iget-object v0, p0, Laku;->h:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    return-void
.end method

.method private d()F
    .locals 2

    .line 524
    iget-object v0, p0, Laku;->f:Lcom/google/android/material/internal/l;

    invoke-virtual {v0}, Lcom/google/android/material/internal/l;->a()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Laku;->e:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 525
    iget-object v0, p0, Laku;->e:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget-object v1, p0, Laku;->e:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a(F)V
    .locals 3

    const v0, 0x3f99999a    # 1.2f

    .line 359
    iput v0, p0, Laku;->r:F

    .line 360
    iput p1, p0, Laku;->o:F

    .line 361
    iput p1, p0, Laku;->p:F

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const v2, 0x3e428f5c    # 0.19f

    .line 362
    invoke-static {v1, v0, v2, v0, p1}, Laiw;->a(FFFFF)F

    move-result p1

    iput p1, p0, Laku;->s:F

    .line 363
    invoke-virtual {p0}, Laku;->invalidateSelf()V

    return-void
.end method

.method public a(Lajw;)V
    .locals 2

    .line 253
    iget-object v0, p0, Laku;->f:Lcom/google/android/material/internal/l;

    iget-object v1, p0, Laku;->d:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/internal/l;->a(Lajw;Landroid/content/Context;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 376
    :cond_0
    invoke-direct {p0, p1}, Laku;->c(Landroid/view/View;)V

    .line 378
    iget-object v0, p0, Laku;->g:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 219
    iget-object v0, p0, Laku;->c:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iput-object p1, p0, Laku;->c:Ljava/lang/CharSequence;

    .line 221
    iget-object p1, p0, Laku;->f:Lcom/google/android/material/internal/l;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/l;->a(Z)V

    .line 222
    invoke-virtual {p0}, Laku;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 390
    :cond_0
    iget-object v0, p0, Laku;->g:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 405
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 409
    invoke-direct {p0}, Laku;->a()F

    move-result v0

    .line 413
    iget v1, p0, Laku;->m:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    iget v3, p0, Laku;->m:I

    int-to-double v3, v3

    sub-double/2addr v1, v3

    neg-double v1, v1

    double-to-float v1, v1

    .line 417
    iget v2, p0, Laku;->o:F

    iget v3, p0, Laku;->p:F

    .line 420
    invoke-virtual {p0}, Laku;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-virtual {p0}, Laku;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 421
    invoke-virtual {p0}, Laku;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p0}, Laku;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Laku;->r:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 417
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 423
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 426
    invoke-super {p0, p1}, Lakk;->draw(Landroid/graphics/Canvas;)V

    .line 429
    invoke-direct {p0, p1}, Laku;->a(Landroid/graphics/Canvas;)V

    .line 431
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public f()V
    .locals 0

    .line 452
    invoke-virtual {p0}, Laku;->invalidateSelf()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 400
    iget-object v0, p0, Laku;->f:Lcom/google/android/material/internal/l;

    invoke-virtual {v0}, Lcom/google/android/material/internal/l;->a()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    iget v1, p0, Laku;->k:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 395
    iget v0, p0, Laku;->i:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-direct {p0}, Laku;->c()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Laku;->j:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 436
    invoke-super {p0, p1}, Lakk;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 441
    invoke-virtual {p0}, Laku;->M()Lakp;

    move-result-object p1

    invoke-virtual {p1}, Lakp;->n()Lakp$a;

    move-result-object p1

    invoke-direct {p0}, Laku;->b()Laki;

    move-result-object v0

    invoke-virtual {p1, v0}, Lakp$a;->a(Laki;)Lakp$a;

    move-result-object p1

    invoke-virtual {p1}, Lakp$a;->a()Lakp;

    move-result-object p1

    .line 440
    invoke-virtual {p0, p1}, Laku;->setShapeAppearanceModel(Lakp;)V

    return-void
.end method

.method public onStateChange([I)Z
    .locals 0

    .line 447
    invoke-super {p0, p1}, Lakk;->onStateChange([I)Z

    move-result p1

    return p1
.end method

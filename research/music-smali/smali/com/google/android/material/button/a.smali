.class Lcom/google/android/material/button/a;
.super Ljava/lang/Object;
.source "MaterialButtonHelper.java"


# static fields
.field private static final a:Z


# instance fields
.field private final b:Lcom/google/android/material/button/MaterialButton;

.field private c:Lakp;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/graphics/PorterDuff$Mode;

.field private k:Landroid/content/res/ColorStateList;

.field private l:Landroid/content/res/ColorStateList;

.field private m:Landroid/content/res/ColorStateList;

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Landroid/graphics/drawable/LayerDrawable;

.field private t:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/google/android/material/button/a;->a:Z

    return-void
.end method

.method constructor <init>(Lcom/google/android/material/button/MaterialButton;Lakp;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/google/android/material/button/a;->o:Z

    .line 71
    iput-boolean v0, p0, Lcom/google/android/material/button/a;->p:Z

    .line 72
    iput-boolean v0, p0, Lcom/google/android/material/button/a;->q:Z

    .line 78
    iput-object p1, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    .line 79
    iput-object p2, p0, Lcom/google/android/material/button/a;->c:Lakp;

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;
    .locals 7

    .line 163
    new-instance v6, Landroid/graphics/drawable/InsetDrawable;

    iget v2, p0, Lcom/google/android/material/button/a;->d:I

    iget v3, p0, Lcom/google/android/material/button/a;->f:I

    iget v4, p0, Lcom/google/android/material/button/a;->e:I

    iget v5, p0, Lcom/google/android/material/button/a;->g:I

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-object v6
.end method

.method private b(II)V
    .locals 7

    .line 411
    iget-object v0, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0}, Lgj;->j(Landroid/view/View;)I

    move-result v0

    .line 412
    iget-object v1, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButton;->getPaddingTop()I

    move-result v1

    .line 413
    iget-object v2, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v2}, Lgj;->k(Landroid/view/View;)I

    move-result v2

    .line 414
    iget-object v3, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v3}, Lcom/google/android/material/button/MaterialButton;->getPaddingBottom()I

    move-result v3

    .line 415
    iget v4, p0, Lcom/google/android/material/button/a;->f:I

    .line 416
    iget v5, p0, Lcom/google/android/material/button/a;->g:I

    .line 417
    iput p2, p0, Lcom/google/android/material/button/a;->g:I

    .line 418
    iput p1, p0, Lcom/google/android/material/button/a;->f:I

    .line 419
    iget-boolean v6, p0, Lcom/google/android/material/button/a;->p:Z

    if-nez v6, :cond_0

    .line 420
    invoke-direct {p0}, Lcom/google/android/material/button/a;->o()V

    .line 423
    :cond_0
    iget-object v6, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    add-int/2addr v1, p1

    sub-int/2addr v1, v4

    add-int/2addr v3, p2

    sub-int/2addr v3, v5

    invoke-static {v6, v0, v1, v2, v3}, Lgj;->b(Landroid/view/View;IIII)V

    return-void
.end method

.method private b(Lakp;)V
    .locals 1

    .line 362
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->i()Lakk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->i()Lakk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lakk;->setShapeAppearanceModel(Lakp;)V

    .line 365
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/button/a;->r()Lakk;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 366
    invoke-direct {p0}, Lcom/google/android/material/button/a;->r()Lakk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lakk;->setShapeAppearanceModel(Lakp;)V

    .line 368
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->k()Laks;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 369
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->k()Laks;

    move-result-object v0

    invoke-interface {v0, p1}, Laks;->setShapeAppearanceModel(Lakp;)V

    :cond_2
    return-void
.end method

.method private c(Z)Lakk;
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/google/android/material/button/a;->s:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    if-lez v0, :cond_1

    .line 329
    sget-boolean v0, Lcom/google/android/material/button/a;->a:Z

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/google/android/material/button/a;->s:Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    .line 331
    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    xor-int/lit8 p1, p1, 0x1

    .line 333
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lakk;

    return-object p1

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/button/a;->s:Landroid/graphics/drawable/LayerDrawable;

    xor-int/lit8 p1, p1, 0x1

    .line 336
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lakk;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private o()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-direct {p0}, Lcom/google/android/material/button/a;->p()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setInternalBackground(Landroid/graphics/drawable/Drawable;)V

    .line 138
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->i()Lakk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget v1, p0, Lcom/google/android/material/button/a;->t:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lakk;->r(F)V

    :cond_0
    return-void
.end method

.method private p()Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 203
    new-instance v0, Lakk;

    iget-object v1, p0, Lcom/google/android/material/button/a;->c:Lakp;

    invoke-direct {v0, v1}, Lakk;-><init>(Lakp;)V

    .line 204
    iget-object v1, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 205
    invoke-virtual {v0, v1}, Lakk;->a(Landroid/content/Context;)V

    .line 206
    iget-object v1, p0, Lcom/google/android/material/button/a;->k:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 207
    iget-object v1, p0, Lcom/google/android/material/button/a;->j:Landroid/graphics/PorterDuff$Mode;

    if-eqz v1, :cond_0

    .line 208
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 210
    :cond_0
    iget v1, p0, Lcom/google/android/material/button/a;->i:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/button/a;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1, v2}, Lakk;->a(FLandroid/content/res/ColorStateList;)V

    .line 212
    new-instance v1, Lakk;

    iget-object v2, p0, Lcom/google/android/material/button/a;->c:Lakp;

    invoke-direct {v1, v2}, Lakk;-><init>(Lakp;)V

    const/4 v2, 0x0

    .line 214
    invoke-virtual {v1, v2}, Lakk;->setTint(I)V

    .line 215
    iget v3, p0, Lcom/google/android/material/button/a;->i:I

    int-to-float v3, v3

    iget-boolean v4, p0, Lcom/google/android/material/button/a;->o:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    sget v5, Laiv$b;->colorSurface:I

    .line 218
    invoke-static {v4, v5}, Lajj;->a(Landroid/view/View;I)I

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v2

    .line 215
    :goto_0
    invoke-virtual {v1, v3, v4}, Lakk;->a(FI)V

    .line 221
    sget-boolean v3, Lcom/google/android/material/button/a;->a:Z

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    .line 222
    new-instance v3, Lakk;

    iget-object v6, p0, Lcom/google/android/material/button/a;->c:Lakp;

    invoke-direct {v3, v6}, Lakk;-><init>(Lakp;)V

    iput-object v3, p0, Lcom/google/android/material/button/a;->n:Landroid/graphics/drawable/Drawable;

    .line 223
    iget-object v3, p0, Lcom/google/android/material/button/a;->n:Landroid/graphics/drawable/Drawable;

    const/4 v6, -0x1

    invoke-static {v3, v6}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 224
    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    iget-object v6, p0, Lcom/google/android/material/button/a;->m:Landroid/content/res/ColorStateList;

    .line 226
    invoke-static {v6}, Laka;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v6

    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v4, v2

    aput-object v0, v4, v5

    invoke-direct {v7, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 227
    invoke-direct {p0, v7}, Lcom/google/android/material/button/a;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/button/a;->n:Landroid/graphics/drawable/Drawable;

    invoke-direct {v3, v6, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/google/android/material/button/a;->s:Landroid/graphics/drawable/LayerDrawable;

    .line 231
    iget-object v0, p0, Lcom/google/android/material/button/a;->s:Landroid/graphics/drawable/LayerDrawable;

    return-object v0

    .line 233
    :cond_2
    new-instance v3, Lajz;

    iget-object v6, p0, Lcom/google/android/material/button/a;->c:Lakp;

    invoke-direct {v3, v6}, Lajz;-><init>(Lakp;)V

    iput-object v3, p0, Lcom/google/android/material/button/a;->n:Landroid/graphics/drawable/Drawable;

    .line 234
    iget-object v3, p0, Lcom/google/android/material/button/a;->n:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/google/android/material/button/a;->m:Landroid/content/res/ColorStateList;

    .line 235
    invoke-static {v6}, Laka;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 234
    invoke-static {v3, v6}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 236
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v6, v2

    aput-object v0, v6, v5

    iget-object v0, p0, Lcom/google/android/material/button/a;->n:Landroid/graphics/drawable/Drawable;

    aput-object v0, v6, v4

    invoke-direct {v3, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/google/android/material/button/a;->s:Landroid/graphics/drawable/LayerDrawable;

    .line 239
    iget-object v0, p0, Lcom/google/android/material/button/a;->s:Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p0, v0}, Lcom/google/android/material/button/a;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v0

    return-object v0
.end method

.method private q()V
    .locals 4

    .line 297
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->i()Lakk;

    move-result-object v0

    .line 298
    invoke-direct {p0}, Lcom/google/android/material/button/a;->r()Lakk;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 300
    iget v2, p0, Lcom/google/android/material/button/a;->i:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/button/a;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2, v3}, Lakk;->a(FLandroid/content/res/ColorStateList;)V

    if-eqz v1, :cond_1

    .line 302
    iget v0, p0, Lcom/google/android/material/button/a;->i:I

    int-to-float v0, v0

    iget-boolean v2, p0, Lcom/google/android/material/button/a;->o:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    sget v3, Laiv$b;->colorSurface:I

    .line 305
    invoke-static {v2, v3}, Lajj;->a(Landroid/view/View;I)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 302
    :goto_0
    invoke-virtual {v1, v0, v2}, Lakk;->a(FI)V

    :cond_1
    return-void
.end method

.method private r()Lakk;
    .locals 1

    const/4 v0, 0x1

    .line 358
    invoke-direct {p0, v0}, Lcom/google/android/material/button/a;->c(Z)Lakk;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 2

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lcom/google/android/material/button/a;->p:Z

    .line 153
    iget-object v0, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lcom/google/android/material/button/a;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 154
    iget-object v0, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lcom/google/android/material/button/a;->j:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method a(I)V
    .locals 1

    .line 250
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->i()Lakk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->i()Lakk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lakk;->setTint(I)V

    :cond_0
    return-void
.end method

.method a(II)V
    .locals 4

    .line 244
    iget-object v0, p0, Lcom/google/android/material/button/a;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 245
    iget v1, p0, Lcom/google/android/material/button/a;->d:I

    iget v2, p0, Lcom/google/android/material/button/a;->f:I

    iget v3, p0, Lcom/google/android/material/button/a;->e:I

    sub-int/2addr p2, v3

    iget v3, p0, Lcom/google/android/material/button/a;->g:I

    sub-int/2addr p1, v3

    invoke-virtual {v0, v1, v2, p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method a(Lakp;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/google/android/material/button/a;->c:Lakp;

    .line 389
    invoke-direct {p0, p1}, Lcom/google/android/material/button/a;->b(Lakp;)V

    return-void
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/google/android/material/button/a;->k:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 168
    iput-object p1, p0, Lcom/google/android/material/button/a;->k:Landroid/content/res/ColorStateList;

    .line 169
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->i()Lakk;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->i()Lakk;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/button/a;->k:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method a(Landroid/content/res/TypedArray;)V
    .locals 5

    .line 83
    sget v0, Laiv$l;->MaterialButton_android_insetLeft:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/button/a;->d:I

    .line 84
    sget v0, Laiv$l;->MaterialButton_android_insetRight:I

    .line 85
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/button/a;->e:I

    .line 86
    sget v0, Laiv$l;->MaterialButton_android_insetTop:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/button/a;->f:I

    .line 87
    sget v0, Laiv$l;->MaterialButton_android_insetBottom:I

    .line 88
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/button/a;->g:I

    .line 91
    sget v0, Laiv$l;->MaterialButton_cornerRadius:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 92
    sget v0, Laiv$l;->MaterialButton_cornerRadius:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/button/a;->h:I

    .line 93
    iget-object v0, p0, Lcom/google/android/material/button/a;->c:Lakp;

    iget v3, p0, Lcom/google/android/material/button/a;->h:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lakp;->a(F)Lakp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/a;->a(Lakp;)V

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/google/android/material/button/a;->q:Z

    .line 97
    :cond_0
    sget v0, Laiv$l;->MaterialButton_strokeWidth:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/button/a;->i:I

    .line 99
    sget v0, Laiv$l;->MaterialButton_backgroundTintMode:I

    .line 101
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 100
    invoke-static {v0, v2}, Lcom/google/android/material/internal/u;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/button/a;->j:Landroid/graphics/PorterDuff$Mode;

    .line 102
    iget-object v0, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    .line 104
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Laiv$l;->MaterialButton_backgroundTint:I

    .line 103
    invoke-static {v0, p1, v2}, Lajv;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/button/a;->k:Landroid/content/res/ColorStateList;

    .line 105
    iget-object v0, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    .line 107
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Laiv$l;->MaterialButton_strokeColor:I

    .line 106
    invoke-static {v0, p1, v2}, Lajv;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/button/a;->l:Landroid/content/res/ColorStateList;

    .line 108
    iget-object v0, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    .line 110
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Laiv$l;->MaterialButton_rippleColor:I

    .line 109
    invoke-static {v0, p1, v2}, Lajv;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/button/a;->m:Landroid/content/res/ColorStateList;

    .line 112
    sget v0, Laiv$l;->MaterialButton_android_checkable:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/button/a;->r:Z

    .line 113
    sget v0, Laiv$l;->MaterialButton_elevation:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/button/a;->t:I

    .line 116
    iget-object v0, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0}, Lgj;->j(Landroid/view/View;)I

    move-result v0

    .line 117
    iget-object v1, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButton;->getPaddingTop()I

    move-result v1

    .line 118
    iget-object v2, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v2}, Lgj;->k(Landroid/view/View;)I

    move-result v2

    .line 119
    iget-object v3, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v3}, Lcom/google/android/material/button/MaterialButton;->getPaddingBottom()I

    move-result v3

    .line 122
    sget v4, Laiv$l;->MaterialButton_android_background:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->a()V

    goto :goto_0

    .line 125
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/button/a;->o()V

    .line 128
    :goto_0
    iget-object p1, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    iget v4, p0, Lcom/google/android/material/button/a;->d:I

    add-int/2addr v0, v4

    iget v4, p0, Lcom/google/android/material/button/a;->f:I

    add-int/2addr v1, v4

    iget v4, p0, Lcom/google/android/material/button/a;->e:I

    add-int/2addr v2, v4

    iget v4, p0, Lcom/google/android/material/button/a;->g:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Lgj;->b(Landroid/view/View;IIII)V

    return-void
.end method

.method a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/google/android/material/button/a;->j:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 181
    iput-object p1, p0, Lcom/google/android/material/button/a;->j:Landroid/graphics/PorterDuff$Mode;

    .line 182
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->i()Lakk;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/button/a;->j:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->i()Lakk;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/button/a;->j:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 0

    .line 193
    iput-boolean p1, p0, Lcom/google/android/material/button/a;->o:Z

    .line 194
    invoke-direct {p0}, Lcom/google/android/material/button/a;->q()V

    return-void
.end method

.method b(I)V
    .locals 1

    .line 286
    iget v0, p0, Lcom/google/android/material/button/a;->i:I

    if-eq v0, p1, :cond_0

    .line 287
    iput p1, p0, Lcom/google/android/material/button/a;->i:I

    .line 288
    invoke-direct {p0}, Lcom/google/android/material/button/a;->q()V

    :cond_0
    return-void
.end method

.method b(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/google/android/material/button/a;->m:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 257
    iput-object p1, p0, Lcom/google/android/material/button/a;->m:Landroid/content/res/ColorStateList;

    .line 258
    sget-boolean v0, Lcom/google/android/material/button/a;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 260
    invoke-static {p1}, Laka;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 261
    :cond_0
    sget-boolean v0, Lcom/google/android/material/button/a;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lajz;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lajz;

    .line 263
    invoke-static {p1}, Laka;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 262
    invoke-virtual {v0, p1}, Lajz;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method b(Z)V
    .locals 0

    .line 349
    iput-boolean p1, p0, Lcom/google/android/material/button/a;->r:Z

    return-void
.end method

.method b()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/google/android/material/button/a;->p:Z

    return v0
.end method

.method c()Landroid/content/res/ColorStateList;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/google/android/material/button/a;->k:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method c(I)V
    .locals 1

    .line 314
    iget-boolean v0, p0, Lcom/google/android/material/button/a;->q:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/button/a;->h:I

    if-eq v0, p1, :cond_1

    .line 315
    :cond_0
    iput p1, p0, Lcom/google/android/material/button/a;->h:I

    const/4 v0, 0x1

    .line 316
    iput-boolean v0, p0, Lcom/google/android/material/button/a;->q:Z

    .line 318
    iget-object v0, p0, Lcom/google/android/material/button/a;->c:Lakp;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lakp;->a(F)Lakp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/a;->a(Lakp;)V

    :cond_1
    return-void
.end method

.method c(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/google/android/material/button/a;->l:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 275
    iput-object p1, p0, Lcom/google/android/material/button/a;->l:Landroid/content/res/ColorStateList;

    .line 276
    invoke-direct {p0}, Lcom/google/android/material/button/a;->q()V

    :cond_0
    return-void
.end method

.method d()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/google/android/material/button/a;->j:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public d(I)V
    .locals 1

    .line 398
    iget v0, p0, Lcom/google/android/material/button/a;->f:I

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/button/a;->b(II)V

    return-void
.end method

.method e()Landroid/content/res/ColorStateList;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/google/android/material/button/a;->m:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public e(I)V
    .locals 1

    .line 406
    iget v0, p0, Lcom/google/android/material/button/a;->g:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/a;->b(II)V

    return-void
.end method

.method f()Landroid/content/res/ColorStateList;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/google/android/material/button/a;->l:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method g()I
    .locals 1

    .line 293
    iget v0, p0, Lcom/google/android/material/button/a;->i:I

    return v0
.end method

.method h()I
    .locals 1

    .line 323
    iget v0, p0, Lcom/google/android/material/button/a;->h:I

    return v0
.end method

.method i()Lakk;
    .locals 1

    const/4 v0, 0x0

    .line 345
    invoke-direct {p0, v0}, Lcom/google/android/material/button/a;->c(Z)Lakk;

    move-result-object v0

    return-object v0
.end method

.method j()Z
    .locals 1

    .line 353
    iget-boolean v0, p0, Lcom/google/android/material/button/a;->r:Z

    return v0
.end method

.method public k()Laks;
    .locals 3

    .line 375
    iget-object v0, p0, Lcom/google/android/material/button/a;->s:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 376
    iget-object v0, p0, Lcom/google/android/material/button/a;->s:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    .line 378
    iget-object v0, p0, Lcom/google/android/material/button/a;->s:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Laks;

    return-object v0

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/button/a;->s:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Laks;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method l()Lakp;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/google/android/material/button/a;->c:Lakp;

    return-object v0
.end method

.method public m()I
    .locals 1

    .line 402
    iget v0, p0, Lcom/google/android/material/button/a;->g:I

    return v0
.end method

.method public n()I
    .locals 1

    .line 432
    iget v0, p0, Lcom/google/android/material/button/a;->f:I

    return v0
.end method

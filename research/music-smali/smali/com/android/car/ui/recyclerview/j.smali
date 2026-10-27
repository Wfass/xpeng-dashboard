.class Lcom/android/car/ui/recyclerview/j;
.super Ljava/lang/Object;
.source "DefaultScrollBar.java"

# interfaces
.implements Lcom/android/car/ui/recyclerview/o;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation


# instance fields
.field private final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/os/Handler;

.field private final c:Landroid/view/animation/Interpolator;

.field private final d:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private e:F

.field private f:Lcom/android/car/ui/recyclerview/i;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:I

.field private m:Landroid/content/Context;

.field private n:Landroidx/recyclerview/widget/RecyclerView;

.field private o:Landroidx/recyclerview/widget/OrientationHelper;

.field private p:Lcom/android/car/ui/recyclerview/l;

.field private q:Lcom/android/car/ui/recyclerview/l;

.field private final r:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/j;->a:Landroid/util/SparseArray;

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/j;->b:Landroid/os/Handler;

    .line 56
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/j;->c:Landroid/view/animation/Interpolator;

    .line 57
    new-instance v0, Lcom/android/car/ui/recyclerview/j$1;

    invoke-direct {v0, p0}, Lcom/android/car/ui/recyclerview/j$1;-><init>(Lcom/android/car/ui/recyclerview/j;)V

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/j;->d:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 325
    new-instance v0, Lcom/android/car/ui/recyclerview/j$2;

    invoke-direct {v0, p0}, Lcom/android/car/ui/recyclerview/j$2;-><init>(Lcom/android/car/ui/recyclerview/j;)V

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/j;->r:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method private a(IILandroidx/recyclerview/widget/OrientationHelper;)I
    .locals 5

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 357
    iget-object v3, p0, Lcom/android/car/ui/recyclerview/j;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_0

    .line 359
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/j;->f:Lcom/android/car/ui/recyclerview/i;

    neg-int p2, p2

    invoke-virtual {p1, p3, p2}, Lcom/android/car/ui/recyclerview/i;->a(Landroidx/recyclerview/widget/OrientationHelper;I)I

    move-result v1

    goto :goto_1

    .line 363
    :cond_0
    iget-object v3, p0, Lcom/android/car/ui/recyclerview/j;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v3, v4, :cond_1

    sub-int/2addr v0, p1

    add-int/lit8 v1, v0, 0x1

    goto :goto_1

    .line 367
    :cond_1
    iget-object v3, p0, Lcom/android/car/ui/recyclerview/j;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private a(Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 417
    :goto_0
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/j;->g()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 418
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/j;->g()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 419
    invoke-static {v3, p1}, Lcom/android/car/ui/recyclerview/i;->a(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v4, v5

    if-nez v5, :cond_0

    move-object v1, v3

    goto :goto_1

    :cond_0
    cmpl-float v5, v4, v0

    if-lez v5, :cond_1

    move-object v1, v3

    move v0, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method private a(III)V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/j;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/j;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    if-nez p1, :cond_1

    goto :goto_0

    .line 265
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/android/car/ui/recyclerview/j;->c(II)I

    move-result p3

    .line 266
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/ui/recyclerview/j;->b(III)I

    move-result p1

    .line 269
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/j;->i:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 271
    iget v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v0, p3, :cond_2

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/j;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-ge p3, v0, :cond_3

    .line 272
    :cond_2
    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 273
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/j;->i:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 276
    :cond_3
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/j;->i:Landroid/view/View;

    int-to-float p1, p1

    invoke-direct {p0, p2, p1}, Lcom/android/car/ui/recyclerview/j;->a(Landroid/view/View;F)V

    :cond_4
    :goto_0
    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 126
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/j;->d()V

    return-void
.end method

.method private a(Landroid/view/View;F)V
    .locals 2

    .line 318
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 319
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x0

    .line 320
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/car/ui/recyclerview/j;->c:Landroid/view/animation/Interpolator;

    .line 321
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 322
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic a(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 155
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/j;->b:Landroid/os/Handler;

    new-instance p2, Lcom/android/car/ui/recyclerview/-$$Lambda$j$MiOCfxJrzEEko9Ie5KEgF-PNZYY;

    invoke-direct {p2, p0}, Lcom/android/car/ui/recyclerview/-$$Lambda$j$MiOCfxJrzEEko9Ie5KEgF-PNZYY;-><init>(Lcom/android/car/ui/recyclerview/j;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 343
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 344
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 345
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 346
    iget-object v3, p0, Lcom/android/car/ui/recyclerview/j;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_1

    .line 347
    iget-object v3, p0, Lcom/android/car/ui/recyclerview/j;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/android/car/ui/recyclerview/j;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/car/ui/recyclerview/j;->o()V

    return-void
.end method

.method static synthetic a(Lcom/android/car/ui/recyclerview/j;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/car/ui/recyclerview/j;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private b(III)I
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/j;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 309
    invoke-direct {p0}, Lcom/android/car/ui/recyclerview/j;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    iget-object p1, p0, Lcom/android/car/ui/recyclerview/j;->h:Landroid/view/View;

    .line 310
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr p1, p3

    int-to-float p1, p1

    mul-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/j;->h:Landroid/view/View;

    .line 311
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr p1, p3

    :goto_0
    add-int/2addr v0, p1

    return v0
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/j;->o:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 375
    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/recyclerview/j;->o:Landroidx/recyclerview/widget/OrientationHelper;

    .line 377
    :cond_1
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/j;->o:Landroidx/recyclerview/widget/OrientationHelper;

    return-object p1
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 0

    .line 119
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/j;->c()V

    return-void
.end method

.method static synthetic b(Lcom/android/car/ui/recyclerview/j;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/car/ui/recyclerview/j;->p()V

    return-void
.end method

.method private b(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/j;->p:Lcom/android/car/ui/recyclerview/l;

    invoke-virtual {v0}, Lcom/android/car/ui/recyclerview/l;->a()V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/j;->j:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 210
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/j;->j:Landroid/view/View;

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/android/car/ui/recyclerview/j;->e:F

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private c(II)I
    .locals 1

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 289
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/j;->h:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget p2, p0, Lcom/android/car/ui/recyclerview/j;->l:I

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/j;->h:Landroid/view/View;

    .line 290
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 289
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private c(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/j;->q:Lcom/android/car/ui/recyclerview/l;

    invoke-virtual {v0}, Lcom/android/car/ui/recyclerview/l;->a()V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/j;->k:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 227
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/j;->k:Landroid/view/View;

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/android/car/ui/recyclerview/j;->e:F

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public static synthetic lambda$7V9yWl-E6Hh-ekAtRtxXl-zXA0k(Lcom/android/car/ui/recyclerview/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/car/ui/recyclerview/j;->q()V

    return-void
.end method

.method public static synthetic lambda$MgSAKaS7W9Z1U5V-oCgZZDBoF3o(Lcom/android/car/ui/recyclerview/j;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/ui/recyclerview/j;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$MiOCfxJrzEEko9Ie5KEgF-PNZYY(Lcom/android/car/ui/recyclerview/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/car/ui/recyclerview/j;->p()V

    return-void
.end method

.method public static synthetic lambda$Okltjq_4mXWvicXjxQUMPha8pYc(Lcom/android/car/ui/recyclerview/j;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/ui/recyclerview/j;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$o9Jb9VOmzh5762frM1MRMDC6IUM(Lcom/android/car/ui/recyclerview/j;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/car/ui/recyclerview/j;->a(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method private n()Z
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/j;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    return v0
.end method

.method private o()V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/j;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 336
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/j;->g()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/ui/recyclerview/j;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private p()V
    .locals 9

    .line 505
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/j;->g()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/j;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 512
    :cond_0
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/j;->e()Z

    move-result v2

    .line 513
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/j;->f()Z

    move-result v3

    xor-int/lit8 v4, v2, 0x1

    .line 516
    invoke-direct {p0, v4}, Lcom/android/car/ui/recyclerview/j;->b(Z)V

    xor-int/lit8 v4, v3, 0x1

    .line 517
    invoke-direct {p0, v4}, Lcom/android/car/ui/recyclerview/j;->c(Z)V

    .line 519
    iget-object v4, p0, Lcom/android/car/ui/recyclerview/j;->g:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    if-eqz v2, :cond_2

    if-nez v3, :cond_3

    .line 522
    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 523
    :cond_3
    iget-object v2, p0, Lcom/android/car/ui/recyclerview/j;->g:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    move v1, v5

    goto :goto_2

    .line 525
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/car/ui/recyclerview/j;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v2

    .line 526
    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v2

    .line 527
    iget-object v3, p0, Lcom/android/car/ui/recyclerview/j;->m:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/android/car/ui/e$c;->car_ui_touch_target_size:I

    .line 528
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 529
    iget-object v6, p0, Lcom/android/car/ui/recyclerview/j;->j:Landroid/view/View;

    .line 530
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 531
    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v7, v6

    .line 533
    iget-object v6, p0, Lcom/android/car/ui/recyclerview/j;->k:Landroid/view/View;

    .line 534
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 535
    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v6

    add-int/2addr v7, v8

    mul-int/lit8 v6, v3, 0x2

    add-int v8, v6, v7

    if-ge v2, v8, :cond_5

    .line 542
    iget-object v2, p0, Lcom/android/car/ui/recyclerview/j;->g:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    move v1, v4

    goto :goto_2

    .line 544
    :cond_5
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/j;->h:Landroid/view/View;

    .line 545
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 546
    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v1

    add-int/2addr v7, v8

    .line 552
    iget v1, p0, Lcom/android/car/ui/recyclerview/j;->l:I

    .line 553
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v6, v1

    add-int/2addr v6, v7

    if-ge v2, v6, :cond_6

    .line 554
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/j;->h:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 555
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/j;->i:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 557
    :cond_6
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/j;->h:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 558
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/j;->i:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    xor-int/lit8 v1, v4, 0x1

    .line 564
    iget-object v2, p0, Lcom/android/car/ui/recyclerview/j;->g:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 568
    :goto_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 570
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/j;->h()I

    move-result v0

    .line 571
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/j;->i()I

    move-result v2

    .line 572
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/j;->j()I

    move-result v3

    .line 569
    invoke-direct {p0, v0, v2, v3}, Lcom/android/car/ui/recyclerview/j;->a(III)V

    goto :goto_3

    .line 575
    :cond_7
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/j;->k()I

    move-result v0

    .line 576
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/j;->l()I

    move-result v2

    .line 577
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/j;->m()I

    move-result v3

    .line 574
    invoke-direct {p0, v0, v2, v3}, Lcom/android/car/ui/recyclerview/j;->a(III)V

    .line 580
    :goto_3
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/j;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    if-eqz v1, :cond_8

    .line 586
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/j;->g:Landroid/view/View;

    new-instance v1, Lcom/android/car/ui/recyclerview/-$$Lambda$j$7V9yWl-E6Hh-ekAtRtxXl-zXA0k;

    invoke-direct {v1, p0}, Lcom/android/car/ui/recyclerview/-$$Lambda$j$7V9yWl-E6Hh-ekAtRtxXl-zXA0k;-><init>(Lcom/android/car/ui/recyclerview/j;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_8
    return-void
.end method

.method private synthetic q()V
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/j;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method


# virtual methods
.method public a()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/j;->n:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method a(I)V
    .locals 1

    .line 617
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/j;->a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public a(II)V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/j;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/car/ui/recyclerview/j;->g:Landroid/view/View;

    .line 174
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 173
    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public a(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V
    .locals 1

    .line 107
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/j;->m:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Lcom/android/car/ui/recyclerview/j;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 110
    iput-object p3, p0, Lcom/android/car/ui/recyclerview/j;->g:Landroid/view/View;

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 114
    sget p3, Lcom/android/car/ui/e$c;->car_ui_button_disabled_alpha:I

    invoke-static {p2, p3}, Laiq;->a(Landroid/content/res/Resources;I)F

    move-result p3

    iput p3, p0, Lcom/android/car/ui/recyclerview/j;->e:F

    .line 115
    sget p3, Lcom/android/car/ui/e$c;->car_ui_scrollbar_min_thumb_height:I

    .line 116
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/car/ui/recyclerview/j;->l:I

    .line 118
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/j;->g:Landroid/view/View;

    sget p3, Lcom/android/car/ui/e$e;->car_ui_scrollbar_page_up:I

    invoke-static {p2, p3}, Laiq;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/car/ui/recyclerview/j;->j:Landroid/view/View;

    .line 119
    new-instance p2, Lcom/android/car/ui/recyclerview/-$$Lambda$j$Okltjq_4mXWvicXjxQUMPha8pYc;

    invoke-direct {p2, p0}, Lcom/android/car/ui/recyclerview/-$$Lambda$j$Okltjq_4mXWvicXjxQUMPha8pYc;-><init>(Lcom/android/car/ui/recyclerview/j;)V

    .line 120
    iget-object p3, p0, Lcom/android/car/ui/recyclerview/j;->j:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    new-instance p3, Lcom/android/car/ui/recyclerview/l;

    invoke-direct {p3, p1, p2}, Lcom/android/car/ui/recyclerview/l;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    iput-object p3, p0, Lcom/android/car/ui/recyclerview/j;->p:Lcom/android/car/ui/recyclerview/l;

    .line 123
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/j;->j:Landroid/view/View;

    iget-object p3, p0, Lcom/android/car/ui/recyclerview/j;->p:Lcom/android/car/ui/recyclerview/l;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 125
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/j;->g:Landroid/view/View;

    sget p3, Lcom/android/car/ui/e$e;->car_ui_scrollbar_page_down:I

    invoke-static {p2, p3}, Laiq;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/car/ui/recyclerview/j;->k:Landroid/view/View;

    .line 126
    new-instance p2, Lcom/android/car/ui/recyclerview/-$$Lambda$j$MgSAKaS7W9Z1U5V-oCgZZDBoF3o;

    invoke-direct {p2, p0}, Lcom/android/car/ui/recyclerview/-$$Lambda$j$MgSAKaS7W9Z1U5V-oCgZZDBoF3o;-><init>(Lcom/android/car/ui/recyclerview/j;)V

    .line 127
    iget-object p3, p0, Lcom/android/car/ui/recyclerview/j;->k:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    new-instance p3, Lcom/android/car/ui/recyclerview/l;

    invoke-direct {p3, p1, p2}, Lcom/android/car/ui/recyclerview/l;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    iput-object p3, p0, Lcom/android/car/ui/recyclerview/j;->q:Lcom/android/car/ui/recyclerview/l;

    .line 130
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/j;->k:Landroid/view/View;

    iget-object p3, p0, Lcom/android/car/ui/recyclerview/j;->q:Lcom/android/car/ui/recyclerview/l;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 132
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/j;->g:Landroid/view/View;

    sget p3, Lcom/android/car/ui/e$e;->car_ui_scrollbar_track:I

    invoke-static {p2, p3}, Laiq;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/car/ui/recyclerview/j;->h:Landroid/view/View;

    .line 133
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/j;->g:Landroid/view/View;

    sget p3, Lcom/android/car/ui/e$e;->car_ui_scrollbar_thumb:I

    invoke-static {p2, p3}, Laiq;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/car/ui/recyclerview/j;->i:Landroid/view/View;

    .line 135
    new-instance p2, Lcom/android/car/ui/recyclerview/i;

    invoke-direct {p2, p1}, Lcom/android/car/ui/recyclerview/i;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/car/ui/recyclerview/j;->f:Lcom/android/car/ui/recyclerview/i;

    .line 136
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/j;->a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;)V

    .line 137
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/j;->f:Lcom/android/car/ui/recyclerview/i;

    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/j;->a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/car/ui/recyclerview/i;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 140
    new-instance p1, Lcom/android/car/ui/recyclerview/k;

    iget-object p2, p0, Lcom/android/car/ui/recyclerview/j;->n:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/android/car/ui/recyclerview/j;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/j;->g:Landroid/view/View;

    invoke-direct {p1, p2, p3, v0}, Lcom/android/car/ui/recyclerview/k;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)V

    .line 141
    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/k;->a()V

    .line 143
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/j;->a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p2, p0, Lcom/android/car/ui/recyclerview/j;->r:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 145
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/j;->g:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/j;->g:Landroid/view/View;

    new-instance p2, Lcom/android/car/ui/recyclerview/-$$Lambda$j$o9Jb9VOmzh5762frM1MRMDC6IUM;

    invoke-direct {p2, p0}, Lcom/android/car/ui/recyclerview/-$$Lambda$j$o9Jb9VOmzh5762frM1MRMDC6IUM;-><init>(Lcom/android/car/ui/recyclerview/j;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 157
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/j;->n:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 158
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/j;->n:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/car/ui/recyclerview/j;->a(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/j;->n:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/j;->n:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/ui/recyclerview/j;->d:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    if-eqz p1, :cond_1

    .line 189
    :try_start_1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/j;->d:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/j;->i:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/j;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method b(II)V
    .locals 1

    .line 622
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/j;->a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    return-void
.end method

.method c()V
    .locals 6

    .line 389
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/j;->i()I

    move-result v0

    .line 390
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/j;->g()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 391
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    .line 396
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/car/ui/recyclerview/j;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v1

    .line 399
    invoke-direct {p0, v0}, Lcom/android/car/ui/recyclerview/j;->a(Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 400
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/j;->g()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v3

    .line 403
    :goto_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    .line 404
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v5, v2

    .line 403
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v2, v1, v2

    .line 402
    invoke-direct {p0, v4, v2, v0}, Lcom/android/car/ui/recyclerview/j;->a(IILandroidx/recyclerview/widget/OrientationHelper;)I

    move-result v0

    if-nez v0, :cond_2

    neg-int v0, v1

    .line 407
    invoke-virtual {p0, v3, v0}, Lcom/android/car/ui/recyclerview/j;->b(II)V

    goto :goto_1

    :cond_2
    add-int/2addr v4, v0

    .line 409
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/car/ui/recyclerview/j;->a(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method d()V
    .locals 10

    .line 441
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/j;->g()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 442
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 446
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/car/ui/recyclerview/j;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v1

    .line 447
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v2

    .line 450
    invoke-direct {p0, v1}, Lcom/android/car/ui/recyclerview/j;->a(Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    .line 457
    invoke-virtual {v0, v3, v4, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isViewPartiallyVisible(Landroid/view/View;ZZ)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 459
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    .line 460
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v6

    if-le v5, v6, :cond_1

    .line 462
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    .line 463
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v6

    sub-int/2addr v5, v6

    .line 461
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v2

    .line 468
    :goto_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_1
    if-ltz v6, :cond_5

    .line 469
    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 473
    invoke-virtual {v1, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    .line 474
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    if-gt v8, v9, :cond_2

    goto :goto_3

    .line 479
    :cond_2
    invoke-virtual {v1, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    .line 480
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v9

    sub-int/2addr v8, v9

    if-gt v8, v2, :cond_4

    .line 482
    invoke-virtual {v1, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    .line 483
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    if-gt v0, v2, :cond_3

    .line 484
    invoke-virtual {v1, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    .line 485
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    goto :goto_2

    .line 487
    :cond_3
    invoke-virtual {v1, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    .line 488
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    :goto_2
    sub-int v5, v0, v1

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 494
    :cond_5
    :goto_3
    invoke-virtual {p0, v4, v5}, Lcom/android/car/ui/recyclerview/j;->b(II)V

    :cond_6
    :goto_4
    return-void
.end method

.method public e()Z
    .locals 2

    .line 595
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/j;->f:Lcom/android/car/ui/recyclerview/i;

    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/j;->g()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/car/ui/recyclerview/i;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Z

    move-result v0

    return v0
.end method

.method f()Z
    .locals 2

    .line 607
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/j;->f:Lcom/android/car/ui/recyclerview/i;

    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/j;->g()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/car/ui/recyclerview/i;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Z

    move-result v0

    return v0
.end method

.method g()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 1

    .line 612
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/j;->a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    return-object v0
.end method

.method h()I
    .locals 1

    .line 627
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/j;->a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method i()I
    .locals 1

    .line 632
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/j;->a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method j()I
    .locals 1

    .line 637
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/j;->a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method k()I
    .locals 1

    .line 642
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/j;->a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method l()I
    .locals 1

    .line 647
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/j;->a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method m()I
    .locals 1

    .line 652
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/j;->a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollExtent()I

    move-result v0

    return v0
.end method

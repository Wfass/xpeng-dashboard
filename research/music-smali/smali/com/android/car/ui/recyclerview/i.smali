.class Lcom/android/car/ui/recyclerview/i;
.super Landroidx/recyclerview/widget/LinearSnapHelper;
.source "CarUiSnapHelper.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroidx/recyclerview/widget/RecyclerView;

.field private c:Landroidx/recyclerview/widget/OrientationHelper;

.field private d:Landroidx/recyclerview/widget/OrientationHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearSnapHelper;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/i;->a:Landroid/content/Context;

    return-void
.end method

.method static a(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)F
    .locals 5

    .line 216
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    .line 217
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    .line 219
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    .line 220
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    if-lt v2, v0, :cond_0

    if-gt v3, v1, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    const/4 v4, 0x0

    if-gt v3, v0, :cond_1

    return v4

    :cond_1
    if-lt v2, v1, :cond_2

    return v4

    :cond_2
    if-gt v2, v0, :cond_3

    if-lt v3, v1, :cond_3

    int-to-float v1, v1

    int-to-float v0, v0

    sub-float/2addr v1, v0

    .line 233
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p0

    :goto_0
    int-to-float p0, p0

    div-float/2addr v1, p0

    return v1

    :cond_3
    if-ge v2, v0, :cond_4

    int-to-float v1, v3

    int-to-float v0, v0

    sub-float/2addr v1, v0

    .line 236
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p0

    goto :goto_0

    :cond_4
    int-to-float v0, v1

    int-to-float v1, v2

    sub-float/2addr v0, v1

    .line 239
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)F
    .locals 10

    .line 348
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const/high16 v5, -0x80000000

    move v6, v5

    move v5, v4

    move-object v4, v3

    :goto_0
    if-ge v2, v0, :cond_4

    .line 354
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 355
    invoke-virtual {p1, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    goto :goto_1

    :cond_1
    if-ge v8, v5, :cond_2

    move-object v3, v7

    move v5, v8

    :cond_2
    if-le v8, v6, :cond_3

    move-object v4, v7

    move v6, v8

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_7

    if-nez v4, :cond_5

    goto :goto_2

    .line 371
    :cond_5
    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    .line 372
    invoke-virtual {p2, v4}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    .line 371
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 373
    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    .line 374
    invoke-virtual {p2, v4}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p2

    .line 373
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int/2addr p2, p1

    if-nez p2, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    int-to-float p1, p2

    mul-float/2addr p1, v1

    sub-int/2addr v6, v5

    add-int/lit8 v6, v6, 0x1

    int-to-float p2, v6

    div-float/2addr p1, p2

    return p1

    :cond_7
    :goto_2
    return v1
.end method

.method private static a(III)I
    .locals 0

    .line 463
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static b(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I
    .locals 0

    .line 186
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p0

    .line 187
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private c(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .locals 1

    .line 430
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    invoke-direct {p0, p1}, Lcom/android/car/ui/recyclerview/i;->d(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p1

    goto :goto_0

    .line 432
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/car/ui/recyclerview/i;->e(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private static c(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)Z
    .locals 0

    .line 204
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result p1

    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private d(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/i;->c:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 438
    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/recyclerview/i;->c:Landroidx/recyclerview/widget/OrientationHelper;

    .line 440
    :cond_1
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/i;->c:Landroidx/recyclerview/widget/OrientationHelper;

    return-object p1
.end method

.method private e(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/i;->d:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 446
    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/recyclerview/i;->d:Landroidx/recyclerview/widget/OrientationHelper;

    .line 448
    :cond_1
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/i;->d:Landroidx/recyclerview/widget/OrientationHelper;

    return-object p1
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/OrientationHelper;I)I
    .locals 1

    .line 319
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/car/ui/recyclerview/i;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)F

    move-result p1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    int-to-float p2, p2

    div-float/2addr p2, p1

    .line 323
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 386
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 390
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 392
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p1}, Lcom/android/car/ui/recyclerview/i;->d(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v3

    goto :goto_0

    .line 393
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/car/ui/recyclerview/i;->e(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v3

    .line 396
    :goto_0
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    .line 397
    invoke-virtual {v3}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    if-lt v4, v3, :cond_2

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :cond_3
    :goto_1
    return v0
.end method

.method public attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 245
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 246
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/i;->b:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 405
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 409
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    .line 411
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/car/ui/recyclerview/i;->d(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v2

    goto :goto_0

    .line 412
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/car/ui/recyclerview/i;->e(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v2

    :goto_0
    sub-int/2addr v1, v0

    .line 415
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 414
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 419
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v4

    sub-int/2addr v4, v0

    if-ne v3, v4, :cond_2

    .line 420
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result p1

    .line 421
    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    if-gt p1, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    return v0
.end method

.method public calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .locals 3

    const/4 v0, 0x2

    .line 71
    new-array v0, v0, [I

    .line 74
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/i;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0, p1}, Lcom/android/car/ui/recyclerview/i;->e(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/android/car/ui/recyclerview/i;->b(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I

    move-result v2

    aput v2, v0, v1

    .line 82
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 83
    invoke-direct {p0, p1}, Lcom/android/car/ui/recyclerview/i;->d(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/car/ui/recyclerview/i;->b(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I

    move-result p1

    aput p1, v0, v1

    :cond_2
    return-object v0
.end method

.method public calculateScrollDistance(II)[I
    .locals 6

    .line 273
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearSnapHelper;->calculateScrollDistance(II)[I

    move-result-object p1

    .line 275
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/i;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p2, :cond_0

    return-object p1

    .line 279
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 280
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 284
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/car/ui/recyclerview/i;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v2

    .line 286
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/car/ui/recyclerview/i;->c(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v3

    .line 288
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 287
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 289
    invoke-static {v0, v3}, Lcom/android/car/ui/recyclerview/i;->a(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)F

    move-result v3

    .line 291
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_3

    .line 297
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result p2

    sub-int/2addr v4, p2

    :cond_3
    neg-int p2, v4

    .line 302
    aget v0, p1, v1

    invoke-static {v0, p2, v4}, Lcom/android/car/ui/recyclerview/i;->a(III)I

    move-result v0

    aput v0, p1, v1

    .line 303
    aget v0, p1, v2

    invoke-static {v0, p2, v4}, Lcom/android/car/ui/recyclerview/i;->a(III)I

    move-result p2

    aput p2, p1, v2

    :cond_4
    :goto_1
    return-object p1
.end method

.method protected createScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    .locals 1

    .line 259
    new-instance p1, Lcom/android/car/ui/recyclerview/h;

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/i;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/car/ui/recyclerview/h;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 14

    .line 106
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 111
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/car/ui/recyclerview/i;->c(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 115
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 116
    invoke-static {p1, v2}, Lcom/android/car/ui/recyclerview/i;->c(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    return-object p1

    .line 119
    :cond_2
    iget-object v5, p0, Lcom/android/car/ui/recyclerview/i;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v5, :cond_3

    return-object v1

    .line 127
    :cond_3
    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 128
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/android/car/ui/recyclerview/i;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v7

    if-le v6, v7, :cond_4

    .line 130
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    if-gez v6, :cond_4

    .line 132
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/car/ui/recyclerview/i;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 133
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3e99999a    # 0.3f

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    return-object v1

    :cond_4
    add-int/lit8 v5, v0, -0x1

    .line 138
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 137
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 142
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v7

    sub-int/2addr v7, v4

    if-ne v6, v7, :cond_5

    goto :goto_1

    :cond_5
    move v4, v3

    :goto_1
    const/4 v6, 0x0

    if-eqz v4, :cond_6

    .line 146
    invoke-static {v5, v2}, Lcom/android/car/ui/recyclerview/i;->a(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)F

    move-result v7

    goto :goto_2

    :cond_6
    move v7, v6

    :goto_2
    const v8, 0x7fffffff

    move v9, v6

    move-object v6, v1

    :goto_3
    if-ge v3, v0, :cond_8

    .line 154
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 155
    invoke-virtual {v2, v10}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v11

    .line 157
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-ge v12, v8, :cond_7

    .line 158
    invoke-static {v10, v2}, Lcom/android/car/ui/recyclerview/i;->a(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    cmpl-float v13, v12, v13

    if-lez v13, :cond_7

    cmpl-float v13, v12, v9

    if-lez v13, :cond_7

    move-object v6, v10

    move v8, v11

    move v9, v12

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    if-eqz v6, :cond_a

    if-eqz v4, :cond_9

    cmpl-float p1, v7, v9

    if-lez p1, :cond_9

    goto :goto_4

    :cond_9
    move-object v5, v6

    .line 182
    :cond_a
    :goto_4
    invoke-static {v5, v2}, Lcom/android/car/ui/recyclerview/i;->c(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)Z

    move-result p1

    if-eqz p1, :cond_b

    move-object v1, v5

    :cond_b
    return-object v1
.end method

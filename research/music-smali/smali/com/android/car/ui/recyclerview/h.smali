.class public Lcom/android/car/ui/recyclerview/h;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "CarUiSmoothScroller.java"


# instance fields
.field a:F

.field b:F

.field c:F

.field d:Landroid/view/animation/Interpolator;

.field e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/android/car/ui/recyclerview/h;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/car/ui/e$c;->car_ui_scrollbar_milliseconds_per_inch:I

    invoke-static {v0, v1}, Laiq;->a(Landroid/content/res/Resources;I)F

    move-result v0

    iput v0, p0, Lcom/android/car/ui/recyclerview/h;->a:F

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/car/ui/e$c;->car_ui_scrollbar_deceleration_times_divisor:I

    invoke-static {v0, v1}, Laiq;->a(Landroid/content/res/Resources;I)F

    move-result v0

    iput v0, p0, Lcom/android/car/ui/recyclerview/h;->b:F

    .line 62
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/car/ui/e$c;->car_ui_scrollbar_decelerate_interpolator_factor:I

    invoke-static {v1, v2}, Laiq;->a(Landroid/content/res/Resources;I)F

    move-result v1

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/h;->d:Landroid/view/animation/Interpolator;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput p1, p0, Lcom/android/car/ui/recyclerview/h;->e:I

    .line 67
    iget p1, p0, Lcom/android/car/ui/recyclerview/h;->a:F

    iget v0, p0, Lcom/android/car/ui/recyclerview/h;->e:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/android/car/ui/recyclerview/h;->c:F

    return-void
.end method


# virtual methods
.method protected calculateTimeForDeceleration(I)I
    .locals 2

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/car/ui/recyclerview/h;->calculateTimeForScrolling(I)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/android/car/ui/recyclerview/h;->b:F

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method protected calculateTimeForScrolling(I)I
    .locals 2

    .line 93
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/android/car/ui/recyclerview/h;->c:F

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method protected getVerticalSnapPreference()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 2

    const/4 p2, -0x1

    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/android/car/ui/recyclerview/h;->calculateDyToMakeVisible(Landroid/view/View;I)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/car/ui/recyclerview/h;->calculateTimeForDeceleration(I)I

    move-result p2

    if-lez p2, :cond_1

    const/4 v0, 0x0

    neg-int p1, p1

    .line 87
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/h;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, v0, p1, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    :cond_1
    return-void
.end method

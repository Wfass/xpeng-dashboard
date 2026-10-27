.class Lcom/android/car/ui/recyclerview/k;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation


# instance fields
.field private a:F

.field private final b:Landroid/view/View;

.field private final c:Landroid/view/View;

.field private final d:Landroidx/recyclerview/widget/RecyclerView;

.field private final e:I


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 41
    iput v0, p0, Lcom/android/car/ui/recyclerview/k;->a:F

    .line 53
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/k;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 54
    iput-object p2, p0, Lcom/android/car/ui/recyclerview/k;->b:Landroid/view/View;

    .line 55
    sget p2, Lcom/android/car/ui/e$e;->car_ui_scrollbar_thumb:I

    invoke-static {p3, p2}, Laiq;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/car/ui/recyclerview/k;->c:Landroid/view/View;

    .line 57
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 56
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/car/ui/recyclerview/k;->e:I

    return-void
.end method

.method private a(F)V
    .locals 2

    .line 108
    invoke-direct {p0, p1}, Lcom/android/car/ui/recyclerview/k;->b(F)I

    move-result p1

    if-eqz p1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/k;->d:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_0
    return-void
.end method

.method private a(FF)Z
    .locals 0

    sub-float/2addr p1, p2

    .line 104
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/android/car/ui/recyclerview/k;->e:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(F)I
    .locals 5

    .line 115
    invoke-direct {p0}, Lcom/android/car/ui/recyclerview/k;->b()[I

    move-result-object v0

    const/4 v1, 0x1

    .line 116
    aget v1, v0, v1

    const/4 v2, 0x0

    aget v0, v0, v2

    sub-int/2addr v1, v0

    .line 118
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/k;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/android/car/ui/recyclerview/k;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v0, v3

    if-nez v1, :cond_0

    return v2

    :cond_0
    sub-float/2addr p1, v0

    int-to-float v0, v1

    div-float/2addr p1, v0

    .line 125
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/k;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 126
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    iget-object v1, p0, Lcom/android/car/ui/recyclerview/k;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private b()[I
    .locals 4

    const/4 v0, 0x2

    .line 136
    new-array v1, v0, [I

    .line 137
    iget-object v2, p0, Lcom/android/car/ui/recyclerview/k;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/car/ui/recyclerview/k;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/2addr v3, v0

    add-int/2addr v2, v3

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 138
    iget-object v2, p0, Lcom/android/car/ui/recyclerview/k;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/car/ui/recyclerview/k;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/car/ui/recyclerview/k;->c:Landroid/view/View;

    .line 139
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/2addr v3, v0

    sub-int/2addr v2, v3

    const/4 v0, 0x1

    aput v2, v1, v0

    return-object v1
.end method


# virtual methods
.method a()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/k;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 66
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 92
    iget p1, p0, Lcom/android/car/ui/recyclerview/k;->a:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/car/ui/recyclerview/k;->a(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object p2, p0, Lcom/android/car/ui/recyclerview/k;->b:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result p2

    add-float/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/android/car/ui/recyclerview/k;->a(F)V

    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    .line 95
    iput p1, p0, Lcom/android/car/ui/recyclerview/k;->a:F

    goto :goto_1

    .line 71
    :cond_1
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/k;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iget-object v1, p0, Lcom/android/car/ui/recyclerview/k;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p1, v1

    .line 74
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/car/ui/recyclerview/k;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v1, v2

    cmpg-float p1, v1, p1

    if-gez p1, :cond_3

    .line 75
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v1, p0, Lcom/android/car/ui/recyclerview/k;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr p1, v1

    iget-object v1, p0, Lcom/android/car/ui/recyclerview/k;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    cmpl-float p1, p1, v1

    if-gtz p1, :cond_2

    goto :goto_0

    .line 80
    :cond_2
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/k;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iget-object v1, p0, Lcom/android/car/ui/recyclerview/k;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr p1, v1

    .line 87
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/car/ui/recyclerview/k;->a:F

    sub-float/2addr v1, v2

    add-float/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/android/car/ui/recyclerview/k;->a(F)V

    .line 88
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/car/ui/recyclerview/k;->a:F

    goto :goto_1

    :cond_3
    :goto_0
    return v0

    .line 68
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/car/ui/recyclerview/k;->a:F

    :goto_1
    return v0
.end method

.class public Lcom/android/car/ui/recyclerview/l;
.super Ljava/lang/Object;
.source "OnContinuousScrollListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:I

.field private final c:I

.field private final d:Landroid/view/View$OnClickListener;

.field private e:Landroid/view/View;

.field private f:Z

.field private final g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/l;->a:Landroid/os/Handler;

    .line 50
    new-instance v0, Lcom/android/car/ui/recyclerview/l$1;

    invoke-direct {v0, p0}, Lcom/android/car/ui/recyclerview/l$1;-><init>(Lcom/android/car/ui/recyclerview/l;)V

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/l;->g:Ljava/lang/Runnable;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/car/ui/e$f;->car_ui_scrollbar_longpress_initial_delay:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/car/ui/recyclerview/l;->b:I

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/car/ui/e$f;->car_ui_scrollbar_longpress_repeat_interval:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/car/ui/recyclerview/l;->c:I

    .line 73
    iget p1, p0, Lcom/android/car/ui/recyclerview/l;->b:I

    if-ltz p1, :cond_0

    iget p1, p0, Lcom/android/car/ui/recyclerview/l;->c:I

    if-ltz p1, :cond_0

    .line 76
    iput-object p2, p0, Lcom/android/car/ui/recyclerview/l;->d:Landroid/view/View$OnClickListener;

    return-void

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "negative intervals are not allowed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/android/car/ui/recyclerview/l;)Landroid/view/View;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/l;->e:Landroid/view/View;

    return-object p0
.end method

.method static synthetic a(Lcom/android/car/ui/recyclerview/l;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/android/car/ui/recyclerview/l;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/android/car/ui/recyclerview/l;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/android/car/ui/recyclerview/l;->c:I

    return p0
.end method

.method static synthetic c(Lcom/android/car/ui/recyclerview/l;)Landroid/os/Handler;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/l;->a:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic d(Lcom/android/car/ui/recyclerview/l;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/l;->d:Landroid/view/View$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/l;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/car/ui/recyclerview/l;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/android/car/ui/recyclerview/l;->f:Z

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 90
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/l;->e:Landroid/view/View;

    .line 91
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    return v1

    .line 99
    :cond_0
    iget-boolean p2, p0, Lcom/android/car/ui/recyclerview/l;->f:Z

    if-nez p2, :cond_1

    .line 100
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/l;->d:Landroid/view/View$OnClickListener;

    invoke-interface {p2, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 102
    :cond_1
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/l;->a:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/car/ui/recyclerview/l;->g:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 103
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/l;->e:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 104
    iput-boolean v1, p0, Lcom/android/car/ui/recyclerview/l;->f:Z

    return v0

    .line 93
    :cond_2
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/l;->a:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/car/ui/recyclerview/l;->g:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 94
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/l;->a:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/car/ui/recyclerview/l;->g:Ljava/lang/Runnable;

    iget v1, p0, Lcom/android/car/ui/recyclerview/l;->b:I

    int-to-long v1, v1

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/l;->e:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    return v0
.end method

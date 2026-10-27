.class Lamg$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SmartRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamg;->a(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lamg;


# direct methods
.method constructor <init>(Lamg;)V
    .locals 0

    .line 1540
    iput-object p1, p0, Lamg$3;->a:Lamg;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1543
    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    .line 1551
    :cond_0
    iget-object p1, p0, Lamg$3;->a:Lamg;

    const/4 v0, 0x0

    iput-object v0, p1, Lamg;->aN:Landroid/animation/ValueAnimator;

    .line 1552
    iget p1, p1, Lamg;->b:I

    if-nez p1, :cond_1

    iget-object p1, p0, Lamg$3;->a:Lamg;

    iget-object p1, p1, Lamg;->ax:Lamo;

    sget-object v0, Lamo;->None:Lamo;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lamg$3;->a:Lamg;

    iget-object p1, p1, Lamg;->ax:Lamo;

    iget-boolean p1, p1, Lamo;->isOpening:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lamg$3;->a:Lamg;

    iget-object p1, p1, Lamg;->ax:Lamo;

    iget-boolean p1, p1, Lamo;->isDragging:Z

    if-nez p1, :cond_1

    .line 1553
    iget-object p1, p0, Lamg$3;->a:Lamg;

    sget-object v0, Lamo;->None:Lamo;

    invoke-virtual {p1, v0}, Lamg;->a(Lamo;)V

    goto :goto_0

    .line 1554
    :cond_1
    iget-object p1, p0, Lamg$3;->a:Lamg;

    iget-object p1, p1, Lamg;->ax:Lamo;

    iget-object v0, p0, Lamg$3;->a:Lamg;

    iget-object v0, v0, Lamg;->ay:Lamo;

    if-eq p1, v0, :cond_2

    .line 1560
    iget-object p1, p0, Lamg$3;->a:Lamg;

    iget-object v0, p1, Lamg;->ax:Lamo;

    invoke-virtual {p1, v0}, Lamg;->setViceState(Lamo;)V

    :cond_2
    :goto_0
    return-void
.end method

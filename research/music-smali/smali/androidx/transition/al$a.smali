.class Landroidx/transition/al$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Visibility.java"

# interfaces
.implements Landroidx/transition/a$a;
.implements Landroidx/transition/o$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Z

.field private final b:Landroid/view/View;

.field private final c:I

.field private final d:Landroid/view/ViewGroup;

.field private final e:Z

.field private f:Z


# direct methods
.method constructor <init>(Landroid/view/View;IZ)V
    .locals 1

    .line 538
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    .line 536
    iput-boolean v0, p0, Landroidx/transition/al$a;->a:Z

    .line 539
    iput-object p1, p0, Landroidx/transition/al$a;->b:Landroid/view/View;

    .line 540
    iput p2, p0, Landroidx/transition/al$a;->c:I

    .line 541
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Landroidx/transition/al$a;->d:Landroid/view/ViewGroup;

    .line 542
    iput-boolean p3, p0, Landroidx/transition/al$a;->e:Z

    const/4 p1, 0x1

    .line 544
    invoke-direct {p0, p1}, Landroidx/transition/al$a;->a(Z)V

    return-void
.end method

.method private a()V
    .locals 2

    .line 609
    iget-boolean v0, p0, Landroidx/transition/al$a;->a:Z

    if-nez v0, :cond_0

    .line 611
    iget-object v0, p0, Landroidx/transition/al$a;->b:Landroid/view/View;

    iget v1, p0, Landroidx/transition/al$a;->c:I

    invoke-static {v0, v1}, Landroidx/transition/ae;->a(Landroid/view/View;I)V

    .line 612
    iget-object v0, p0, Landroidx/transition/al$a;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 613
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    const/4 v0, 0x0

    .line 617
    invoke-direct {p0, v0}, Landroidx/transition/al$a;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 621
    iget-boolean v0, p0, Landroidx/transition/al$a;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/transition/al$a;->f:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroidx/transition/al$a;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 622
    iput-boolean p1, p0, Landroidx/transition/al$a;->f:Z

    .line 623
    invoke-static {v0, p1}, Landroidx/transition/z;->a(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroidx/transition/o;)V
    .locals 0

    return-void
.end method

.method public b(Landroidx/transition/o;)V
    .locals 0

    .line 590
    invoke-direct {p0}, Landroidx/transition/al$a;->a()V

    .line 591
    invoke-virtual {p1, p0}, Landroidx/transition/o;->b(Landroidx/transition/o$c;)Landroidx/transition/o;

    return-void
.end method

.method public c(Landroidx/transition/o;)V
    .locals 0

    const/4 p1, 0x0

    .line 600
    invoke-direct {p0, p1}, Landroidx/transition/al$a;->a(Z)V

    return-void
.end method

.method public d(Landroidx/transition/o;)V
    .locals 0

    const/4 p1, 0x1

    .line 605
    invoke-direct {p0, p1}, Landroidx/transition/al$a;->a(Z)V

    return-void
.end method

.method public e(Landroidx/transition/o;)V
    .locals 0

    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 567
    iput-boolean p1, p0, Landroidx/transition/al$a;->a:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 580
    invoke-direct {p0}, Landroidx/transition/al$a;->a()V

    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 1

    .line 551
    iget-boolean p1, p0, Landroidx/transition/al$a;->a:Z

    if-nez p1, :cond_0

    .line 552
    iget-object p1, p0, Landroidx/transition/al$a;->b:Landroid/view/View;

    iget v0, p0, Landroidx/transition/al$a;->c:I

    invoke-static {p1, v0}, Landroidx/transition/ae;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 1

    .line 560
    iget-boolean p1, p0, Landroidx/transition/al$a;->a:Z

    if-nez p1, :cond_0

    .line 561
    iget-object p1, p0, Landroidx/transition/al$a;->b:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/transition/ae;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

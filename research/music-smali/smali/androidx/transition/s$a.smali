.class Landroidx/transition/s$a;
.super Landroidx/transition/p;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroidx/transition/s;


# direct methods
.method constructor <init>(Landroidx/transition/s;)V
    .locals 0

    .line 433
    invoke-direct {p0}, Landroidx/transition/p;-><init>()V

    .line 434
    iput-object p1, p0, Landroidx/transition/s$a;->a:Landroidx/transition/s;

    return-void
.end method


# virtual methods
.method public b(Landroidx/transition/o;)V
    .locals 2

    .line 447
    iget-object v0, p0, Landroidx/transition/s$a;->a:Landroidx/transition/s;

    iget v1, v0, Landroidx/transition/s;->h:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroidx/transition/s;->h:I

    .line 448
    iget-object v0, p0, Landroidx/transition/s$a;->a:Landroidx/transition/s;

    iget v0, v0, Landroidx/transition/s;->h:I

    if-nez v0, :cond_0

    .line 450
    iget-object v0, p0, Landroidx/transition/s$a;->a:Landroidx/transition/s;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/transition/s;->i:Z

    .line 451
    invoke-virtual {v0}, Landroidx/transition/s;->k()V

    .line 453
    :cond_0
    invoke-virtual {p1, p0}, Landroidx/transition/o;->b(Landroidx/transition/o$c;)Landroidx/transition/o;

    return-void
.end method

.method public e(Landroidx/transition/o;)V
    .locals 1

    .line 439
    iget-object p1, p0, Landroidx/transition/s$a;->a:Landroidx/transition/s;

    iget-boolean p1, p1, Landroidx/transition/s;->i:Z

    if-nez p1, :cond_0

    .line 440
    iget-object p1, p0, Landroidx/transition/s$a;->a:Landroidx/transition/s;

    invoke-virtual {p1}, Landroidx/transition/s;->j()V

    .line 441
    iget-object p1, p0, Landroidx/transition/s$a;->a:Landroidx/transition/s;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/transition/s;->i:Z

    :cond_0
    return-void
.end method

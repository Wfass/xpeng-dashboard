.class Lbmt$15;
.super Ljava/lang/Object;
.source "ProgramModel.java"

# interfaces
.implements Lask$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbmt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbmt;


# direct methods
.method constructor <init>(Lbmt;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lbmt$15;->a:Lbmt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public focusPause()V
    .locals 2

    .line 342
    iget-object v0, p0, Lbmt$15;->a:Lbmt;

    invoke-static {v0}, Lbmt;->f(Lbmt;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lbmt$15;->a:Lbmt;

    invoke-static {v0}, Lbmt;->f(Lbmt;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 343
    :cond_0
    iget-object v0, p0, Lbmt$15;->a:Lbmt;

    invoke-virtual {v0}, Lbmt;->pauseByLogic()V

    :cond_1
    return-void
.end method

.method public focusPlay()V
    .locals 2

    .line 369
    iget-object v0, p0, Lbmt$15;->a:Lbmt;

    invoke-static {v0}, Lbmt;->g(Lbmt;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lbmt$15;->a:Lbmt;

    invoke-virtual {v0, v1}, Lbmt;->rebootPlay(Z)V

    goto :goto_0

    .line 371
    :cond_0
    iget-object v0, p0, Lbmt$15;->a:Lbmt;

    invoke-static {v0}, Lbmt;->h(Lbmt;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lbmt$15;->a:Lbmt;

    invoke-virtual {v0}, Lbmt;->g()V

    goto :goto_0

    .line 374
    :cond_1
    iget-object v0, p0, Lbmt$15;->a:Lbmt;

    invoke-static {v0, v1}, Lbmt;->a(Lbmt;Z)V

    :goto_0
    return-void
.end method

.method public lowerVolume()V
    .locals 2

    .line 349
    invoke-static {}, Lask;->a()Lask;

    move-result-object v0

    new-instance v1, Lbmt$15$1;

    invoke-direct {v1, p0}, Lbmt$15$1;-><init>(Lbmt$15;)V

    invoke-virtual {v0, v1}, Lask;->a(Lask$c;)V

    return-void
.end method

.method public riseVolume()V
    .locals 2

    .line 359
    invoke-static {}, Lask;->a()Lask;

    move-result-object v0

    new-instance v1, Lbmt$15$2;

    invoke-direct {v1, p0}, Lbmt$15$2;-><init>(Lbmt$15;)V

    invoke-virtual {v0, v1}, Lask;->b(Lask$c;)V

    return-void
.end method

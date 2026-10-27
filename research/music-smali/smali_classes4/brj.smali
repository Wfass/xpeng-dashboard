.class public Lbrj;
.super Ljava/lang/Object;
.source "RetrieverPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbrj$a;,
        Lbrj$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lbrj$a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:Landroid/os/Handler;

.field private c:Lbrj$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbrj$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(ILbrj$b;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lbrj$1;

    invoke-direct {v0, p0}, Lbrj$1;-><init>(Lbrj;)V

    iput-object v0, p0, Lbrj;->d:Ljava/lang/Runnable;

    .line 17
    iput-object p2, p0, Lbrj;->c:Lbrj$b;

    .line 18
    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2, p1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p2, p0, Lbrj;->a:Ljava/util/Queue;

    .line 19
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lbrj;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lbrj;)Ljava/util/Queue;
    .locals 0

    .line 12
    iget-object p0, p0, Lbrj;->a:Ljava/util/Queue;

    return-object p0
.end method

.method private b()V
    .locals 4

    .line 39
    iget-object v0, p0, Lbrj;->b:Landroid/os/Handler;

    iget-object v1, p0, Lbrj;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 40
    iget-object v0, p0, Lbrj;->b:Landroid/os/Handler;

    iget-object v1, p0, Lbrj;->d:Ljava/lang/Runnable;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public a()Lbrj$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lbrj;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbrj$a;

    .line 31
    invoke-direct {p0}, Lbrj;->b()V

    if-eqz v0, :cond_0

    return-object v0

    .line 35
    :cond_0
    iget-object v0, p0, Lbrj;->c:Lbrj$b;

    invoke-interface {v0}, Lbrj$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbrj$a;

    return-object v0
.end method

.method public a(Lbrj$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 23
    invoke-interface {p1}, Lbrj$a;->a()V

    .line 24
    iget-object v0, p0, Lbrj;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-direct {p0}, Lbrj;->b()V

    return-void
.end method

.class public Lcdc;
.super Ljava/lang/Object;
.source "ActionQueue.java"


# instance fields
.field private a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcdb;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcdc;->a:Ljava/util/Queue;

    .line 22
    iput-object p1, p0, Lcdc;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcdc;)Ljava/util/Queue;
    .locals 0

    .line 17
    iget-object p0, p0, Lcdc;->a:Ljava/util/Queue;

    return-object p0
.end method

.method private a()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcdc;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcdc;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcdb;

    .line 53
    invoke-virtual {v0}, Lcdb;->a()V

    .line 55
    invoke-direct {p0, v0}, Lcdc;->c(Lcdb;)V

    return-void
.end method

.method static synthetic a(Lcdc;Lcdb;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcdc;->b(Lcdb;)V

    return-void
.end method

.method private b(Lcdb;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcdc;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object p1, p0, Lcdc;->a:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 45
    invoke-direct {p0}, Lcdc;->a()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcdc;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcdc;->a()V

    return-void
.end method

.method private c(Lcdb;)V
    .locals 4

    .line 59
    iget v0, p1, Lcdb;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 60
    iget-object v0, p1, Lcdb;->h:Landroidx/fragment/app/FragmentManager;

    invoke-static {v0}, Lme/yokeyword/fragmentation/g;->c(Landroidx/fragment/app/FragmentManager;)Lme/yokeyword/fragmentation/d;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x12c

    goto :goto_0

    .line 61
    :cond_0
    invoke-interface {v0}, Lme/yokeyword/fragmentation/d;->getSupportDelegate()Lme/yokeyword/fragmentation/SupportFragmentDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->q()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p1, Lcdb;->j:J

    .line 64
    :cond_1
    iget-object v0, p0, Lcdc;->b:Landroid/os/Handler;

    new-instance v1, Lcdc$2;

    invoke-direct {v1, p0}, Lcdc$2;-><init>(Lcdc;)V

    iget-wide v2, p1, Lcdb;->j:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private d(Lcdb;)Z
    .locals 1

    .line 74
    iget p1, p1, Lcdb;->i:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 75
    iget-object p1, p0, Lcdc;->a:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcdb;

    if-eqz p1, :cond_0

    .line 76
    iget p1, p1, Lcdb;->i:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a(Lcdb;)V
    .locals 2

    .line 26
    invoke-direct {p0, p1}, Lcdc;->d(Lcdb;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 28
    :cond_0
    iget v0, p1, Lcdb;->i:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcdc;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 30
    invoke-virtual {p1}, Lcdb;->a()V

    return-void

    .line 34
    :cond_1
    iget-object v0, p0, Lcdc;->b:Landroid/os/Handler;

    new-instance v1, Lcdc$1;

    invoke-direct {v1, p0, p1}, Lcdc$1;-><init>(Lcdc;Lcdb;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

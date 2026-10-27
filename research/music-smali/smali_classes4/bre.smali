.class public Lbre;
.super Ljava/lang/Object;
.source "UsbRequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbre$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:I

.field private c:J

.field private d:J

.field private e:Landroid/os/Handler;

.field private f:Lbre$a;

.field private g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(IJ)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbre;->a:Ljava/util/List;

    .line 56
    new-instance v0, Lbre$1;

    invoke-direct {v0, p0}, Lbre$1;-><init>(Lbre;)V

    iput-object v0, p0, Lbre;->g:Ljava/lang/Runnable;

    .line 21
    iput p1, p0, Lbre;->b:I

    .line 22
    iput-wide p2, p0, Lbre;->c:J

    .line 23
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lbre;->e:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .locals 4

    .line 45
    invoke-direct {p0}, Lbre;->b()V

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lbre;->d:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lbre;->c:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 47
    invoke-direct {p0}, Lbre;->c()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lbre;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lbre;->c()V

    return-void
.end method

.method static synthetic b(Lbre;)Ljava/util/List;
    .locals 0

    .line 12
    iget-object p0, p0, Lbre;->a:Ljava/util/List;

    return-object p0
.end method

.method private b()V
    .locals 4

    .line 52
    iget-object v0, p0, Lbre;->e:Landroid/os/Handler;

    iget-object v1, p0, Lbre;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 53
    iget-object v0, p0, Lbre;->e:Landroid/os/Handler;

    iget-object v1, p0, Lbre;->g:Ljava/lang/Runnable;

    iget-wide v2, p0, Lbre;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 33
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lbre;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 35
    iget-object v1, p0, Lbre;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic c(Lbre;)Ljava/lang/Runnable;
    .locals 0

    .line 12
    iget-object p0, p0, Lbre;->g:Ljava/lang/Runnable;

    return-object p0
.end method

.method private c()V
    .locals 5

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbre;->d:J

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    iget-object v1, p0, Lbre;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lbre;->b:I

    const-string v3, "UsbRequestQueue"

    if-le v1, v2, :cond_0

    .line 71
    iget-object v1, p0, Lbre;->a:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 72
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 73
    iget-object v1, p0, Lbre;->a:Ljava/util/List;

    iget v2, p0, Lbre;->b:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v1, v2, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lbre;->a:Ljava/util/List;

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSlide1: ==== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mList  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbre;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 76
    :cond_0
    iget-object v1, p0, Lbre;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 77
    iget-object v1, p0, Lbre;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSlide2: ==== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    iget-object v1, p0, Lbre;->f:Lbre$a;

    if-eqz v1, :cond_1

    .line 81
    invoke-interface {v1, v0}, Lbre$a;->b(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method static synthetic d(Lbre;)J
    .locals 2

    .line 12
    iget-wide v0, p0, Lbre;->c:J

    return-wide v0
.end method

.method static synthetic e(Lbre;)Landroid/os/Handler;
    .locals 0

    .line 12
    iget-object p0, p0, Lbre;->e:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public a(Lbre$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbre$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lbre;->f:Lbre$a;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lbre;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-direct {p0}, Lbre;->a()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1}, Lbre;->b(Ljava/util/List;)V

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "push:  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lbre;->a:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UsbRequestQueue"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-direct {p0}, Lbre;->a()V

    return-void
.end method

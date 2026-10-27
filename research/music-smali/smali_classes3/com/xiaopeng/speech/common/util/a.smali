.class public abstract Lcom/xiaopeng/speech/common/util/a;
.super Ljava/lang/Object;
.source "AsyncRunner.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<IFunc:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lcom/xiaopeng/speech/common/util/f;

.field private c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TIFunc;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AsyncRunner"

    .line 11
    iput-object v0, p0, Lcom/xiaopeng/speech/common/util/a;->a:Ljava/lang/String;

    .line 14
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/speech/common/util/a;->c:Ljava/util/Queue;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/speech/common/util/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/speech/common/util/a;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/speech/common/util/a;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/speech/common/util/a;->c()V

    return-void
.end method

.method private declared-synchronized c()V
    .locals 2

    monitor-enter p0

    .line 63
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/a;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/a;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/speech/common/util/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/common/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 69
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TIFunc;TR;)TR;"
        }
    .end annotation

    monitor-enter p0

    .line 29
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/speech/common/util/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/a;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/a;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 32
    invoke-virtual {p0}, Lcom/xiaopeng/speech/common/util/a;->b()V

    .line 33
    iget-object p1, p0, Lcom/xiaopeng/speech/common/util/a;->a:Ljava/lang/String;

    const-string v0, "can run offer fun"

    invoke-static {p1, v0}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/common/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 38
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/a;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 39
    iget-object p1, p0, Lcom/xiaopeng/speech/common/util/a;->a:Ljava/lang/String;

    const-string v0, "offer fun"

    invoke-static {p1, v0}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :goto_0
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/xiaopeng/speech/common/util/f;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/speech/common/util/a;->b:Lcom/xiaopeng/speech/common/util/f;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TIFunc;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/speech/common/util/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected abstract a()Z
.end method

.method protected abstract b(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TIFunc;)TR;"
        }
    .end annotation
.end method

.method public b()V
    .locals 4

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/a;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaopeng/speech/common/util/a;->c:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "fetchAll fun:%d"

    invoke-static {v0, v2, v1}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/a;->b:Lcom/xiaopeng/speech/common/util/f;

    if-eqz v0, :cond_0

    .line 51
    new-instance v1, Lcom/xiaopeng/speech/common/util/a$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/common/util/a$1;-><init>(Lcom/xiaopeng/speech/common/util/a;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/f;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 58
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/speech/common/util/a;->c()V

    :goto_0
    return-void
.end method

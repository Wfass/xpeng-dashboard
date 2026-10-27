.class Lanp$1;
.super Lans;
.source "AbsControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lanp;


# direct methods
.method constructor <init>(Lanp;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lanp$1;->a:Lanp;

    invoke-direct {p0}, Lans;-><init>()V

    return-void
.end method

.method private c()V
    .locals 3

    .line 43
    iget-object v0, p0, Lanp$1;->a:Lanp;

    iget-object v0, v0, Lanp;->c:Ljava/util/List;

    monitor-enter v0

    .line 44
    :try_start_0
    iget-object v1, p0, Lanp$1;->a:Lanp;

    iget-object v1, v1, Lanp;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lans$a;

    .line 45
    invoke-interface {v2}, Lans$a;->a()V

    goto :goto_0

    .line 47
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 58
    iget-object v0, p0, Lanp$1;->a:Lanp;

    invoke-virtual {v0}, Lanp;->a()V

    return-void
.end method

.method public a(Lans$a;)V
    .locals 2

    .line 30
    iget-object v0, p0, Lanp$1;->a:Lanp;

    iget-object v0, v0, Lanp;->c:Ljava/util/List;

    monitor-enter v0

    .line 31
    :try_start_0
    iget-object v1, p0, Lanp$1;->a:Lanp;

    iget-object v1, v1, Lanp;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/nforetek/bt/aidl/l;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lanp$1;->a:Lanp;

    invoke-virtual {v0, p1}, Lanp;->a(Lcom/nforetek/bt/aidl/l;)V

    .line 53
    invoke-direct {p0}, Lanp$1;->c()V

    return-void
.end method

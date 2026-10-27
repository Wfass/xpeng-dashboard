.class public Lbzj;
.super Ljava/lang/Object;
.source "TestResult.java"


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbzh;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbzh;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbzi;",
            ">;"
        }
    .end annotation
.end field

.field protected d:I

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbzj;->a:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbzj;->b:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbzj;->c:Ljava/util/List;

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lbzj;->d:I

    .line 29
    iput-boolean v0, p0, Lbzj;->e:Z

    return-void
.end method

.method private declared-synchronized a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbzi;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 72
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    iget-object v1, p0, Lbzj;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Lbzf;)V
    .locals 2

    .line 81
    invoke-direct {p0}, Lbzj;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbzi;

    .line 82
    invoke-interface {v1, p1}, Lbzi;->a(Lbzf;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized a(Lbzf;Lbzb;)V
    .locals 2

    monitor-enter p0

    .line 48
    :try_start_0
    iget-object v0, p0, Lbzj;->a:Ljava/util/List;

    new-instance v1, Lbzh;

    invoke-direct {v1, p1, p2}, Lbzh;-><init>(Lbzf;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-direct {p0}, Lbzj;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbzi;

    .line 50
    invoke-interface {v1, p1, p2}, Lbzi;->a(Lbzf;Lbzb;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 52
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lbzf;Lbze;)V
    .locals 0

    .line 142
    :try_start_0
    invoke-interface {p2}, Lbze;->a()V
    :try_end_0
    .catch Lbzb; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 148
    invoke-virtual {p0, p1, p2}, Lbzj;->a(Lbzf;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 146
    throw p1

    :catch_2
    move-exception p2

    .line 144
    invoke-virtual {p0, p1, p2}, Lbzj;->a(Lbzf;Lbzb;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized a(Lbzf;Ljava/lang/Throwable;)V
    .locals 2

    monitor-enter p0

    .line 37
    :try_start_0
    iget-object v0, p0, Lbzj;->b:Ljava/util/List;

    new-instance v1, Lbzh;

    invoke-direct {v1, p1, p2}, Lbzh;-><init>(Lbzf;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-direct {p0}, Lbzj;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbzi;

    .line 39
    invoke-interface {v1, p1, p2}, Lbzi;->a(Lbzf;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 41
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected a(Lbzg;)V
    .locals 1

    .line 119
    invoke-virtual {p0, p1}, Lbzj;->b(Lbzf;)V

    .line 120
    new-instance v0, Lbzj$1;

    invoke-direct {v0, p0, p1}, Lbzj$1;-><init>(Lbzj;Lbzg;)V

    .line 125
    invoke-virtual {p0, p1, v0}, Lbzj;->a(Lbzf;Lbze;)V

    .line 127
    invoke-virtual {p0, p1}, Lbzj;->a(Lbzf;)V

    return-void
.end method

.method public b(Lbzf;)V
    .locals 2

    .line 163
    invoke-interface {p1}, Lbzf;->countTestCases()I

    move-result v0

    .line 164
    monitor-enter p0

    .line 165
    :try_start_0
    iget v1, p0, Lbzj;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Lbzj;->d:I

    .line 166
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    invoke-direct {p0}, Lbzj;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbzi;

    .line 168
    invoke-interface {v1, p1}, Lbzi;->b(Lbzf;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 166
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.class public Lbuq;
.super Ljava/lang/Object;
.source "NodeManager.java"

# interfaces
.implements Lbuf$a;


# instance fields
.field private volatile a:Lbvq;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lbut;",
            ">;",
            "Lbut;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/xiaopeng/speech/common/util/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbuq;->b:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lbuq;Ljava/lang/Class;)Lbut;
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lbuq;->a(Ljava/lang/Class;)Lbut;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/Class;)Lbut;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lbut;",
            ">;)",
            "Lbut;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lbuq;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbut;

    if-eqz v0, :cond_0

    return-object v0

    .line 102
    :cond_0
    iget-object v0, p0, Lbuq;->b:Ljava/util/Map;

    monitor-enter v0

    .line 103
    :try_start_0
    iget-object v1, p0, Lbuq;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbut;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 106
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbut;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 108
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "create %s error"

    const/4 v3, 0x1

    .line 109
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/String;)V

    :goto_0
    if-eqz v1, :cond_1

    .line 112
    invoke-direct {p0, v1}, Lbuq;->a(Lbut;)V

    .line 113
    iget-object p1, p0, Lbuq;->c:Lcom/xiaopeng/speech/common/util/f;

    invoke-virtual {v1, p1}, Lbut;->a(Landroid/os/Handler;)V

    .line 116
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method static synthetic a(Lbuq;Z)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lbuq;->a(Z)V

    return-void
.end method

.method private a(Lbut;)V
    .locals 3

    .line 121
    iget-object v0, p0, Lbuq;->b:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 122
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "node %s had register"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/String;)V

    return-void

    .line 125
    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string v1, "register node:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/c;->a(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lbuq;->b:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object p1, p0, Lbuq;->c:Lcom/xiaopeng/speech/common/util/f;

    new-instance v0, Lbuq$3;

    invoke-direct {v0, p0}, Lbuq$3;-><init>(Lbuq;)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/common/util/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Z)V
    .locals 5

    .line 152
    iget-object v0, p0, Lbuq;->a:Lbvq;

    if-nez v0, :cond_0

    const-string p1, "mSubscriber == null"

    .line 153
    invoke-static {p1}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/String;)V

    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lbuq;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 157
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 158
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbut;

    .line 159
    invoke-virtual {v1}, Lbut;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    :cond_2
    const/4 v2, 0x1

    .line 160
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v4, "do subscribe node:%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/speech/common/util/c;->a(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v1}, Lbut;->d()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lbut;->d()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-gtz v3, :cond_3

    goto :goto_1

    .line 166
    :cond_3
    :try_start_0
    iget-object v3, p0, Lbuq;->a:Lbvq;

    if-eqz v3, :cond_1

    .line 167
    iget-object v3, p0, Lbuq;->a:Lbvq;

    invoke-virtual {v1}, Lbut;->d()[Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lbvq;->a([Ljava/lang/String;Lbvm;)V

    .line 168
    invoke-virtual {v1, v2}, Lbut;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "subscribe error "

    .line 171
    invoke-static {p0, v2, v1}, Lcom/xiaopeng/speech/common/util/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    :goto_1
    const-string v1, "getSubscribeEvents.length == 0"

    .line 162
    invoke-static {v1}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lbuq;->a:Lbvq;

    return-void
.end method

.method public a(Lbun;)V
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/c;->a(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 38
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lbun;->b()Lbvq;

    move-result-object p1

    iput-object p1, p0, Lbuq;->a:Lbvq;

    .line 39
    iget-object p1, p0, Lbuq;->c:Lcom/xiaopeng/speech/common/util/f;

    new-instance v0, Lbuq$1;

    invoke-direct {v0, p0}, Lbuq$1;-><init>(Lbuq;)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/common/util/f;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 46
    invoke-static {p0, p1}, Lcom/xiaopeng/speech/common/util/c;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/xiaopeng/speech/common/util/f;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lbuq;->c:Lcom/xiaopeng/speech/common/util/f;

    return-void
.end method

.method public a(Ljava/lang/Class;Lbuj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lbut;",
            ">;",
            "Lbuj;",
            ")V"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lbuq;->c:Lcom/xiaopeng/speech/common/util/f;

    new-instance v1, Lbuq$2;

    invoke-direct {v1, p0, p1, p2}, Lbuq$2;-><init>(Lbuq;Ljava/lang/Class;Lbuj;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method

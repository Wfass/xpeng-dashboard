.class public Lcom/xiaopeng/musicradio/service/c;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# static fields
.field private static volatile a:Lcom/xiaopeng/musicradio/service/c;


# instance fields
.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class;",
            "Lcom/xiaopeng/musicradio/service/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/service/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/service/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static a()Lcom/xiaopeng/musicradio/service/c;
    .locals 2

    .line 20
    sget-object v0, Lcom/xiaopeng/musicradio/service/c;->a:Lcom/xiaopeng/musicradio/service/c;

    if-nez v0, :cond_1

    .line 21
    const-class v0, Lcom/xiaopeng/musicradio/service/c;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/xiaopeng/musicradio/service/c;->a:Lcom/xiaopeng/musicradio/service/c;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/xiaopeng/musicradio/service/c;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/service/c;-><init>()V

    sput-object v1, Lcom/xiaopeng/musicradio/service/c;->a:Lcom/xiaopeng/musicradio/service/c;

    .line 25
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 27
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/musicradio/service/c;->a:Lcom/xiaopeng/musicradio/service/c;

    return-object v0
.end method


# virtual methods
.method declared-synchronized a(Ljava/lang/Class;)V
    .locals 2

    monitor-enter p0

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 38
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/musicradio/service/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/service/a;

    if-nez v1, :cond_0

    .line 40
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/musicradio/service/a;

    .line 43
    :cond_0
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/service/a;->hasStart()Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/service/a;->b()V

    const/4 v0, 0x1

    .line 45
    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/service/a;->setStart(Z)V

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "ServiceManager"

    const-string v1, "startService: "

    .line 49
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/service/c;->a(Ljava/lang/Class;)V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

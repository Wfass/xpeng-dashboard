.class public Lcom/xiaopeng/aicabin/event/a;
.super Ljava/lang/Object;
.source "EventManagerImpl.java"


# static fields
.field public static final a:Ljava/lang/String;

.field public static volatile b:Lcom/xiaopeng/aicabin/event/a;


# instance fields
.field public c:Landroid/app/Application;

.field public volatile d:Z

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Lcom/xiaopeng/aicabin/event/EventListener;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/xiaopeng/aicabin/event/EventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/xiaopeng/aicabin/event/EventValue;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lcom/xiaopeng/aicabin/ARemoteManager;

.field public j:Lcom/xiaopeng/aicabin/event/EventListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/aicabin/AConstant;->SUFFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/aicabin/event/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 9
    sput-object v0, Lcom/xiaopeng/aicabin/event/a;->b:Lcom/xiaopeng/aicabin/event/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/xiaopeng/aicabin/event/a;->d:Z

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/aicabin/event/a;->e:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/aicabin/event/a;->f:Ljava/util/Map;

    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/aicabin/event/a;->g:Ljava/util/Map;

    .line 9
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/aicabin/event/a;->h:Ljava/util/Map;

    .line 27
    new-instance v0, Lcom/xiaopeng/aicabin/event/a$a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/aicabin/event/a$a;-><init>(Lcom/xiaopeng/aicabin/event/a;)V

    iput-object v0, p0, Lcom/xiaopeng/aicabin/event/a;->j:Lcom/xiaopeng/aicabin/event/EventListener;

    return-void
.end method

.method public static a()Lcom/xiaopeng/aicabin/event/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaopeng/aicabin/event/a;->b:Lcom/xiaopeng/aicabin/event/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/xiaopeng/aicabin/event/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/xiaopeng/aicabin/event/a;->b:Lcom/xiaopeng/aicabin/event/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/xiaopeng/aicabin/event/a;

    invoke-direct {v1}, Lcom/xiaopeng/aicabin/event/a;-><init>()V

    sput-object v1, Lcom/xiaopeng/aicabin/event/a;->b:Lcom/xiaopeng/aicabin/event/a;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/aicabin/event/a;->b:Lcom/xiaopeng/aicabin/event/a;

    return-object v0
.end method


# virtual methods
.method public a(ILcom/xiaopeng/aicabin/event/EventListener;Z)Ljava/lang/String;
    .locals 6

    .line 18
    invoke-static {}, Lcom/xiaopeng/aicabin/utils/ClassUtil;->getApplicationByReflect()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/aicabin/event/a;->a(Landroid/app/Application;)V

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/aicabin/event/a;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 22
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 23
    sget-object p1, Lcom/xiaopeng/aicabin/event/a;->a:Ljava/lang/String;

    const-string p3, "registerEventListener: listener has been registered"

    invoke-static {p1, p3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/aicabin/event/a;->f:Ljava/util/Map;

    monitor-enter v1

    .line 27
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/aicabin/utils/DataUtil;->identityBuild()Ljava/lang/String;

    move-result-object v2

    .line 28
    iget-object v3, p0, Lcom/xiaopeng/aicabin/event/a;->g:Ljava/util/Map;

    new-instance v4, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v5, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 31
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 32
    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v3, p0, Lcom/xiaopeng/aicabin/event/a;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v3, Lcom/xiaopeng/aicabin/event/a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerEventListener: first register event:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " immediately:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " listener:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0xf4240

    if-lt p1, v3, :cond_1

    .line 35
    sget-object v3, Lcom/xiaopeng/aicabin/ARemoteManager;->mRemoteServiceName:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaopeng/aicabin/event/a;->c:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 37
    iget-object p2, p0, Lcom/xiaopeng/aicabin/event/a;->i:Lcom/xiaopeng/aicabin/ARemoteManager;

    iget-object v3, p0, Lcom/xiaopeng/aicabin/event/a;->j:Lcom/xiaopeng/aicabin/event/EventListener;

    invoke-virtual {p2, p1, v3, p3}, Lcom/xiaopeng/aicabin/ARemoteManager;->registerRemoteListener(ILcom/xiaopeng/aicabin/event/EventListener;Z)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_3

    .line 40
    iget-object p3, p0, Lcom/xiaopeng/aicabin/event/a;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/xiaopeng/aicabin/event/EventValue;

    if-eqz p3, :cond_3

    .line 42
    invoke-interface {p2, p3}, Lcom/xiaopeng/aicabin/event/EventListener;->onEvent(Lcom/xiaopeng/aicabin/event/EventValue;)V

    goto :goto_0

    .line 46
    :cond_2
    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_3

    .line 49
    iget-object p3, p0, Lcom/xiaopeng/aicabin/event/a;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/xiaopeng/aicabin/event/EventValue;

    if-eqz p3, :cond_3

    .line 51
    invoke-interface {p2, p3}, Lcom/xiaopeng/aicabin/event/EventListener;->onEvent(Lcom/xiaopeng/aicabin/event/EventValue;)V

    .line 56
    :cond_3
    :goto_0
    sget-object p2, Lcom/xiaopeng/aicabin/event/a;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerEventListener: event:"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " records:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception p1

    .line 58
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Landroid/app/Application;)V
    .locals 2

    monitor-enter p0

    .line 9
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaopeng/aicabin/event/a;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 12
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/xiaopeng/aicabin/event/a;->c:Landroid/app/Application;

    .line 15
    invoke-static {p1}, Lcom/xiaopeng/aicabin/ARemoteManager;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/aicabin/ARemoteManager;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/aicabin/event/a;->i:Lcom/xiaopeng/aicabin/ARemoteManager;

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/xiaopeng/aicabin/event/a;->d:Z

    .line 17
    sget-object p1, Lcom/xiaopeng/aicabin/event/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init: mLocalEventNameRegisterMap.size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/aicabin/event/a;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

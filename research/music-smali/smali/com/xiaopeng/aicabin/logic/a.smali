.class public Lcom/xiaopeng/aicabin/logic/a;
.super Ljava/lang/Object;
.source "LogicManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/aicabin/logic/a$b;,
        Lcom/xiaopeng/aicabin/logic/a$a;
    }
.end annotation


# static fields
.field public static volatile a:Lcom/xiaopeng/aicabin/logic/a;


# instance fields
.field public final b:Ljava/lang/String;

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

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/aicabin/logic/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/aicabin/ICabin;",
            ">;>;"
        }
    .end annotation
.end field

.field public h:Lcom/xiaopeng/aicabin/logic/a$b;

.field public i:Lcom/xiaopeng/aicabin/ARemoteManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogicManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/aicabin/AConstant;->SUFFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/aicabin/logic/a;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/xiaopeng/aicabin/logic/a;->d:Z

    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/aicabin/logic/a;->e:Ljava/util/Map;

    .line 10
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 13
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/aicabin/logic/a;->f:Ljava/util/Map;

    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/aicabin/logic/a;->g:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lcom/xiaopeng/aicabin/logic/a$a;Ljava/lang/String;)Landroid/util/Pair;
    .locals 1

    .line 137
    new-instance p1, Landroid/util/Pair;

    .line 138
    iget-object p0, p0, Lcom/xiaopeng/aicabin/logic/a$a;->a:Lcom/xiaopeng/aicabin/logic/IAsyncLogic;

    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    invoke-direct {p1, p0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private synthetic a(Lcom/xiaopeng/aicabin/DataReq;Lcom/xiaopeng/aicabin/logic/IAsyncLogic;Ljava/lang/String;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V
    .locals 7

    .line 80
    :try_start_0
    invoke-virtual {p1}, Lcom/xiaopeng/aicabin/DataReq;->getTracker()Lcom/xiaopeng/aicabin/Tracker;

    move-result-object v0

    const-string v1, "startAsyncLocalImpl"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aicabin/Tracker;->trace(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/a;->c:Landroid/app/Application;

    invoke-interface {p2, v0}, Lcom/xiaopeng/aicabin/ICabin;->onCreate(Landroid/app/Application;)V

    .line 82
    new-instance v0, Lcom/xiaopeng/aicabin/logic/-$$Lambda$a$EXtpaoc8ipNIj7-TQ2lEUNPeFwA;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/aicabin/logic/-$$Lambda$a$EXtpaoc8ipNIj7-TQ2lEUNPeFwA;-><init>(Lcom/xiaopeng/aicabin/logic/a;Ljava/lang/String;Lcom/xiaopeng/aicabin/logic/ILogicCallback;Lcom/xiaopeng/aicabin/logic/IAsyncLogic;Lcom/xiaopeng/aicabin/DataReq;)V

    invoke-interface {p2, p1, v0}, Lcom/xiaopeng/aicabin/logic/IAsyncLogic;->exeAsync(Lcom/xiaopeng/aicabin/DataReq;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 93
    iget-object v1, p0, Lcom/xiaopeng/aicabin/logic/a;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startAsyncLocalImpl: name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " err:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/xiaopeng/aicabin/logic/a;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/xiaopeng/aicabin/DataReq;->getTaskTd()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v1, "title"

    const-string v2, "LOGIC_RUNTIME_EXCEPTION"

    .line 96
    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-interface {p2}, Lcom/xiaopeng/aicabin/ICabin;->string()Ljava/lang/String;

    move-result-object p2

    const-string v1, "elements"

    invoke-virtual {p1, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "total"

    const-string v1, "count:1"

    .line 98
    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "msg"

    invoke-virtual {p1, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logic_runtime_exception#"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "#"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "fingerprint"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {p1}, Lcom/xiaopeng/aicabin/utils/DataLogUtil;->sendLogicException(Ljava/util/Map;)V

    if-eqz p4, :cond_0

    .line 103
    sget-object p1, Lcom/xiaopeng/aicabin/logic/LogicCode;->COMMON_BINDER_TRANSACT_FATAL:Lcom/xiaopeng/aicabin/logic/LogicCode;

    invoke-static {p1}, Lcom/xiaopeng/aicabin/DataResp;->newBuilder(Lcom/xiaopeng/aicabin/ICode;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/aicabin/DataResp;->setOtherMsg(Ljava/lang/String;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/xiaopeng/aicabin/logic/ILogicCallback;->onResult(Lcom/xiaopeng/aicabin/DataResp;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic a(Ljava/lang/String;Lcom/xiaopeng/aicabin/logic/ILogicCallback;Lcom/xiaopeng/aicabin/logic/IAsyncLogic;Lcom/xiaopeng/aicabin/DataReq;Lcom/xiaopeng/aicabin/DataResp;)V
    .locals 0

    .line 104
    invoke-virtual {p0, p1, p5}, Lcom/xiaopeng/aicabin/logic/a;->a(Ljava/lang/String;Lcom/xiaopeng/aicabin/DataResp;)V

    if-eqz p2, :cond_1

    .line 107
    instance-of p1, p3, Lcom/xiaopeng/aicabin/logic/IMultiAsyncLogic;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/aicabin/logic/a;->f:Ljava/util/Map;

    invoke-virtual {p4}, Lcom/xiaopeng/aicabin/DataReq;->getTaskTd()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 108
    :cond_0
    invoke-interface {p2, p5}, Lcom/xiaopeng/aicabin/logic/ILogicCallback;->onResult(Lcom/xiaopeng/aicabin/DataResp;)V

    .line 110
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/aicabin/logic/a;->f:Ljava/util/Map;

    invoke-virtual {p4}, Lcom/xiaopeng/aicabin/DataReq;->getTaskTd()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b()Lcom/xiaopeng/aicabin/logic/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaopeng/aicabin/logic/a;->a:Lcom/xiaopeng/aicabin/logic/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/xiaopeng/aicabin/logic/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/xiaopeng/aicabin/logic/a;->a:Lcom/xiaopeng/aicabin/logic/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/xiaopeng/aicabin/logic/a;

    invoke-direct {v1}, Lcom/xiaopeng/aicabin/logic/a;-><init>()V

    sput-object v1, Lcom/xiaopeng/aicabin/logic/a;->a:Lcom/xiaopeng/aicabin/logic/a;

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
    sget-object v0, Lcom/xiaopeng/aicabin/logic/a;->a:Lcom/xiaopeng/aicabin/logic/a;

    return-object v0
.end method

.method public static synthetic lambda$B3ssjDNzfrbR5mEF3JVDDEG70T4(Lcom/xiaopeng/aicabin/logic/a;Lcom/xiaopeng/aicabin/DataReq;Lcom/xiaopeng/aicabin/logic/IAsyncLogic;Ljava/lang/String;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/aicabin/logic/a;->a(Lcom/xiaopeng/aicabin/DataReq;Lcom/xiaopeng/aicabin/logic/IAsyncLogic;Ljava/lang/String;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V

    return-void
.end method

.method public static synthetic lambda$EXtpaoc8ipNIj7-TQ2lEUNPeFwA(Lcom/xiaopeng/aicabin/logic/a;Ljava/lang/String;Lcom/xiaopeng/aicabin/logic/ILogicCallback;Lcom/xiaopeng/aicabin/logic/IAsyncLogic;Lcom/xiaopeng/aicabin/DataReq;Lcom/xiaopeng/aicabin/DataResp;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/xiaopeng/aicabin/logic/a;->a(Ljava/lang/String;Lcom/xiaopeng/aicabin/logic/ILogicCallback;Lcom/xiaopeng/aicabin/logic/IAsyncLogic;Lcom/xiaopeng/aicabin/DataReq;Lcom/xiaopeng/aicabin/DataResp;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/xiaopeng/aicabin/logic/ISyncLogic;Lcom/xiaopeng/aicabin/DataReq;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 3

    .line 16
    sget-boolean v0, Lcom/xiaopeng/aicabin/AConstant;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/a;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSyncLocalImpl start name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/xiaopeng/aicabin/ICabin;->string()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    :cond_0
    :try_start_0
    invoke-virtual {p3}, Lcom/xiaopeng/aicabin/DataReq;->getTracker()Lcom/xiaopeng/aicabin/Tracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/aicabin/Tracker;->end()V

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/a;->c:Landroid/app/Application;

    invoke-interface {p2, v0}, Lcom/xiaopeng/aicabin/ICabin;->onCreate(Landroid/app/Application;)V

    .line 24
    invoke-interface {p2, p3}, Lcom/xiaopeng/aicabin/logic/ISyncLogic;->exeSync(Lcom/xiaopeng/aicabin/DataReq;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p3

    .line 26
    invoke-virtual {p0, p1, p3}, Lcom/xiaopeng/aicabin/logic/a;->a(Ljava/lang/String;Lcom/xiaopeng/aicabin/DataResp;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p3

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/a;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSyncLocalImpl: name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " err:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "title"

    const-string v2, "LOGIC_RUNTIME_EXCEPTION"

    .line 32
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-interface {p2}, Lcom/xiaopeng/aicabin/ICabin;->string()Ljava/lang/String;

    move-result-object p2

    const-string v1, "elements"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "total"

    const-string v1, "count:1"

    .line 34
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "msg"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logic_runtime_exception#"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "#"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "fingerprint"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {v0}, Lcom/xiaopeng/aicabin/utils/DataLogUtil;->sendLogicException(Ljava/util/Map;)V

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "logic exeSync failed:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/16 p3, 0x2711

    invoke-static {p2, p3, p1}, Lcom/xiaopeng/aicabin/DataResp;->newBuilder(ZILjava/lang/String;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/a;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/a;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-string v1, "get"

    const/4 v2, 0x1

    .line 148
    :try_start_0
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 149
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 150
    iget-object v1, p0, Lcom/xiaopeng/aicabin/logic/a;->g:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 154
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/aicabin/logic/a;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLocalLogicClass: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " registerMap get failed e = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lcom/xiaopeng/aicabin/logic/IAsyncLogic;Lcom/xiaopeng/aicabin/DataReq;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)Ljava/lang/String;
    .locals 8

    .line 39
    sget-boolean v0, Lcom/xiaopeng/aicabin/AConstant;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/a;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAsyncLocalImpl start name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/xiaopeng/aicabin/ICabin;->string()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " callback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/a;->f:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/xiaopeng/aicabin/DataReq;->getTaskTd()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/aicabin/logic/a$a;

    invoke-virtual {p3}, Lcom/xiaopeng/aicabin/RawValue;->getTimestamp()J

    move-result-wide v3

    invoke-direct {v2, v3, v4, p2}, Lcom/xiaopeng/aicabin/logic/a$a;-><init>(JLcom/xiaopeng/aicabin/logic/IAsyncLogic;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/a;->h:Lcom/xiaopeng/aicabin/logic/a$b;

    new-instance v7, Lcom/xiaopeng/aicabin/logic/-$$Lambda$a$B3ssjDNzfrbR5mEF3JVDDEG70T4;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/aicabin/logic/-$$Lambda$a$B3ssjDNzfrbR5mEF3JVDDEG70T4;-><init>(Lcom/xiaopeng/aicabin/logic/a;Lcom/xiaopeng/aicabin/DataReq;Lcom/xiaopeng/aicabin/logic/IAsyncLogic;Ljava/lang/String;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    invoke-virtual {p3}, Lcom/xiaopeng/aicabin/DataReq;->getTaskTd()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 9

    .line 111
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 112
    iget-object v1, p0, Lcom/xiaopeng/aicabin/logic/a;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 113
    iget-object v4, p0, Lcom/xiaopeng/aicabin/logic/a;->f:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/aicabin/logic/a$a;

    if-eqz v4, :cond_0

    .line 115
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 116
    iget-wide v7, v4, Lcom/xiaopeng/aicabin/logic/a$a;->b:J

    sub-long/2addr v5, v7

    const-wide/32 v7, 0x493e0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 117
    iget-object v5, p0, Lcom/xiaopeng/aicabin/logic/a;->f:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v3, v4, Lcom/xiaopeng/aicabin/logic/a$a;->a:Lcom/xiaopeng/aicabin/logic/IAsyncLogic;

    .line 119
    invoke-interface {v3}, Lcom/xiaopeng/aicabin/ICabin;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/xiaopeng/aicabin/logic/-$$Lambda$SfXxdUhdCtDfZ4J-A9izI0SMkG8;

    invoke-direct {v5, v4}, Lcom/xiaopeng/aicabin/logic/-$$Lambda$SfXxdUhdCtDfZ4J-A9izI0SMkG8;-><init>(Lcom/xiaopeng/aicabin/logic/a$a;)V

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/atomic/AtomicLong;

    .line 121
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    goto :goto_0

    :cond_1
    if-lez v2, :cond_2

    .line 126
    iget-object v1, p0, Lcom/xiaopeng/aicabin/logic/a;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearAsyncTask: clear count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " remain size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/aicabin/logic/a;->f:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isDEV:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/xiaopeng/aicabin/AConstant;->IS_DEV_ROM:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "total"

    .line 128
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "elements"

    .line 129
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "packageName"

    .line 130
    :try_start_3
    iget-object v3, p0, Lcom/xiaopeng/aicabin/logic/a;->c:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "msg"

    const-string v3, "async_callback_timeout"

    .line 131
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v2, "fingerprint"

    .line 132
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "elements#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static {v1}, Lcom/xiaopeng/aicabin/utils/DataLogUtil;->sendStataAsyncCallbackTimeout(Ljava/util/Map;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 136
    iget-object v1, p0, Lcom/xiaopeng/aicabin/logic/a;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearAsyncTask: err:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " total size:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/a;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public declared-synchronized a(Landroid/app/Application;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaopeng/aicabin/logic/a;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/xiaopeng/aicabin/logic/a;->c:Landroid/app/Application;

    .line 7
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LogicManagerImpl"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 9
    new-instance v1, Lcom/xiaopeng/aicabin/logic/a$b;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/aicabin/logic/a$b;-><init>(Lcom/xiaopeng/aicabin/logic/a;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaopeng/aicabin/logic/a;->h:Lcom/xiaopeng/aicabin/logic/a$b;

    .line 11
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/a;->e:Ljava/util/Map;

    iget-object v1, p0, Lcom/xiaopeng/aicabin/logic/a;->b:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/xiaopeng/aicabin/utils/ScanLogicRegistryUtil;->getLocalLogicRegistryMap(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 12
    iget-object p1, p0, Lcom/xiaopeng/aicabin/logic/a;->c:Landroid/app/Application;

    invoke-static {p1}, Lcom/xiaopeng/aicabin/ARemoteManager;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/aicabin/ARemoteManager;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/aicabin/logic/a;->i:Lcom/xiaopeng/aicabin/ARemoteManager;

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/xiaopeng/aicabin/logic/a;->d:Z

    .line 14
    iget-object p1, p0, Lcom/xiaopeng/aicabin/logic/a;->h:Lcom/xiaopeng/aicabin/logic/a$b;

    const/16 v0, 0x7531

    const-wide/32 v1, 0x493e0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 15
    iget-object p1, p0, Lcom/xiaopeng/aicabin/logic/a;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init: mLocalLogicNameRegisterMap size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/aicabin/logic/a;->e:Ljava/util/Map;

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

.method public final a(Ljava/lang/String;Lcom/xiaopeng/aicabin/DataResp;)V
    .locals 4

    .line 156
    sget-boolean v0, Lcom/xiaopeng/aicabin/AConstant;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p2}, Lcom/xiaopeng/aicabin/DataResp;->getCode()I

    move-result v0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/a;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkRespValidForDebug "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-code: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/xiaopeng/aicabin/DataResp;->getCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; code must small than "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

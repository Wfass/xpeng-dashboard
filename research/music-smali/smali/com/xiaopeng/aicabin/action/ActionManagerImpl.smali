.class public Lcom/xiaopeng/aicabin/action/ActionManagerImpl;
.super Ljava/lang/Object;
.source "ActionManagerImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile instance:Lcom/xiaopeng/aicabin/action/ActionManagerImpl;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private volatile isInit:Z

.field private mContext:Landroid/content/Context;

.field public mLocalActionClassMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public mLocalActionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/aicabin/action/IAction;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalActionNameRegisterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mWorkHandler:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/aicabin/AConstant;->SUFFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    sput-object v0, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->instance:Lcom/xiaopeng/aicabin/action/ActionManagerImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->isInit:Z

    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->mLocalActionNameRegisterMap:Ljava/util/Map;

    .line 9
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->mLocalActionClassMap:Ljava/util/Map;

    .line 10
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->mLocalActionMap:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/aicabin/action/ActionManagerImpl;
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->instance:Lcom/xiaopeng/aicabin/action/ActionManagerImpl;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->instance:Lcom/xiaopeng/aicabin/action/ActionManagerImpl;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;

    invoke-direct {v1}, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;-><init>()V

    sput-object v1, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->instance:Lcom/xiaopeng/aicabin/action/ActionManagerImpl;

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
    sget-object v0, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->instance:Lcom/xiaopeng/aicabin/action/ActionManagerImpl;

    return-object v0
.end method

.method private startAction(Lcom/xiaopeng/aicabin/action/ActionImpl$StartType;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAction: type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->mLocalActionClassMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->mLocalActionClassMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    if-nez v2, :cond_1

    .line 6
    sget-object v2, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startAction: clazz is null. name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/aicabin/action/IAction;

    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/xiaopeng/aicabin/action/ActionImpl;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/aicabin/action/ActionImpl;

    if-nez v3, :cond_2

    .line 12
    sget-object v3, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startAction: annotation is null. action:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_2
    invoke-interface {v3}, Lcom/xiaopeng/aicabin/action/ActionImpl;->startType()Lcom/xiaopeng/aicabin/action/ActionImpl$StartType;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 17
    sget-object v4, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startAction: action:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/xiaopeng/aicabin/action/IAction;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-interface {v3}, Lcom/xiaopeng/aicabin/action/ActionImpl;->threadType()Lcom/xiaopeng/aicabin/action/ActionImpl$ThreadType;

    move-result-object v4

    .line 19
    sget-object v5, Lcom/xiaopeng/aicabin/action/ActionImpl$ThreadType;->WorkerThread:Lcom/xiaopeng/aicabin/action/ActionImpl$ThreadType;

    if-ne v4, v5, :cond_3

    .line 20
    iget-object v5, p0, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->mWorkHandler:Landroid/os/Handler;

    new-instance v6, Lcom/xiaopeng/aicabin/action/-$$Lambda$ActionManagerImpl$nSM9VCah9cyrmhA9CnkF0SxOHiQ;

    invoke-direct {v6, p0, v2}, Lcom/xiaopeng/aicabin/action/-$$Lambda$ActionManagerImpl$nSM9VCah9cyrmhA9CnkF0SxOHiQ;-><init>(Lcom/xiaopeng/aicabin/action/ActionManagerImpl;Lcom/xiaopeng/aicabin/action/IAction;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 29
    :cond_3
    iget-object v5, p0, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->mContext:Landroid/content/Context;

    invoke-interface {v2, v5}, Lcom/xiaopeng/aicabin/action/IAction;->onCreate(Landroid/content/Context;)V

    .line 31
    :goto_1
    invoke-interface {v3}, Lcom/xiaopeng/aicabin/action/ActionImpl;->lifeCycle()Lcom/xiaopeng/aicabin/action/ActionImpl$LifeCycle;

    move-result-object v3

    .line 32
    sget-object v5, Lcom/xiaopeng/aicabin/action/ActionImpl$LifeCycle;->ONCE:Lcom/xiaopeng/aicabin/action/ActionImpl$LifeCycle;

    if-ne v5, v3, :cond_5

    .line 33
    sget-object v3, Lcom/xiaopeng/aicabin/action/ActionImpl$ThreadType;->WorkerThread:Lcom/xiaopeng/aicabin/action/ActionImpl$ThreadType;

    if-ne v4, v3, :cond_4

    .line 34
    iget-object v3, p0, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->mWorkHandler:Landroid/os/Handler;

    new-instance v4, Lcom/xiaopeng/aicabin/action/-$$Lambda$ActionManagerImpl$Pd5DWKcWKMo_2nxlmli4koVLjf8;

    invoke-direct {v4, p0, v2}, Lcom/xiaopeng/aicabin/action/-$$Lambda$ActionManagerImpl$Pd5DWKcWKMo_2nxlmli4koVLjf8;-><init>(Lcom/xiaopeng/aicabin/action/ActionManagerImpl;Lcom/xiaopeng/aicabin/action/IAction;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 42
    :cond_4
    iget-object v3, p0, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/xiaopeng/aicabin/action/IAction;->onDestroy(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 46
    :cond_5
    iget-object v3, p0, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->mLocalActionMap:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    .line 51
    sget-object v3, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startAction: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed e = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public action()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->mLocalActionNameRegisterMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    iget-object v2, p0, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->mLocalActionNameRegisterMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "get"

    const/4 v4, 0x1

    .line 8
    :try_start_0
    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 9
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    if-nez v2, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    const-class v3, Lcom/xiaopeng/aicabin/action/IAction;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 14
    iget-object v3, p0, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->mLocalActionClassMap:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_2
    sget-object v3, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " clazz: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is error, please use subscribe method"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    .line 20
    :goto_1
    sget-object v2, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLocalLogicClass: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " registerMap get failed e = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    return-void
.end method

.method public actionApplicationAfterOnCreate()V
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaopeng/aicabin/action/ActionImpl$StartType;->onApplicationResumed:Lcom/xiaopeng/aicabin/action/ActionImpl$StartType;

    invoke-direct {p0, v0}, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->startAction(Lcom/xiaopeng/aicabin/action/ActionImpl$StartType;)V

    return-void
.end method

.method public actionApplicationBeforeOnCreate()V
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaopeng/aicabin/action/ActionImpl$StartType;->onApplicationPreCreated:Lcom/xiaopeng/aicabin/action/ActionImpl$StartType;

    invoke-direct {p0, v0}, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->startAction(Lcom/xiaopeng/aicabin/action/ActionImpl$StartType;)V

    return-void
.end method

.method public declared-synchronized init(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->isInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    :try_start_1
    iput-boolean v0, p0, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->isInit:Z

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->mContext:Landroid/content/Context;

    .line 6
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ActionManagerImpl"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 8
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->mWorkHandler:Landroid/os/Handler;

    .line 10
    iget-object v0, p0, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->mLocalActionNameRegisterMap:Ljava/util/Map;

    sget-object v1, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->TAG:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/xiaopeng/aicabin/utils/ScanLogicRegistryUtil;->getLocalActionRegistryMap(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 11
    invoke-virtual {p0}, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->action()V

    .line 12
    invoke-virtual {p0}, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->actionApplicationBeforeOnCreate()V

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init: action size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->mLocalActionNameRegisterMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public synthetic lambda$startAction$0$ActionManagerImpl(Lcom/xiaopeng/aicabin/action/IAction;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/xiaopeng/aicabin/action/IAction;->onCreate(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startAction: action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/xiaopeng/aicabin/action/IAction;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " onCreate failed e = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$startAction$1$ActionManagerImpl(Lcom/xiaopeng/aicabin/action/IAction;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/xiaopeng/aicabin/action/IAction;->onDestroy(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startAction: action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/xiaopeng/aicabin/action/IAction;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " onDestroy failed e = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

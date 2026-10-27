.class public Lcom/xiaopeng/aicabin/utils/RegisterMapCache;
.super Ljava/lang/Object;
.source "RegisterMapCache.java"


# static fields
.field private static final mActionRegisterNameSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mEventRegisterNameSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile mIsRegisterSetInit:Z

.field private static final mLogicRegisterNameSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/xiaopeng/aicabin/utils/RegisterMapCache;->mLogicRegisterNameSet:Ljava/util/Set;

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/xiaopeng/aicabin/utils/RegisterMapCache;->mEventRegisterNameSet:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/xiaopeng/aicabin/utils/RegisterMapCache;->mActionRegisterNameSet:Ljava/util/Set;

    const/4 v0, 0x0

    .line 5
    sput-boolean v0, Lcom/xiaopeng/aicabin/utils/RegisterMapCache;->mIsRegisterSetInit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getActionRegisterNameSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/xiaopeng/aicabin/utils/RegisterMapCache;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lcom/xiaopeng/aicabin/utils/RegisterMapCache;->mIsRegisterSetInit:Z

    if-nez v1, :cond_0

    .line 2
    invoke-static {}, Lcom/xiaopeng/aicabin/utils/RegisterMapCache;->initLogicRegisterSet()V

    .line 3
    invoke-static {}, Lcom/xiaopeng/aicabin/utils/RegisterMapCache;->initEventRegisterSet()V

    .line 4
    invoke-static {}, Lcom/xiaopeng/aicabin/utils/RegisterMapCache;->initActionRegisterSet()V

    const/4 v1, 0x1

    .line 5
    sput-boolean v1, Lcom/xiaopeng/aicabin/utils/RegisterMapCache;->mIsRegisterSetInit:Z

    .line 7
    :cond_0
    sget-object v1, Lcom/xiaopeng/aicabin/utils/RegisterMapCache;->mActionRegisterNameSet:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getEventRegisterNameSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/xiaopeng/aicabin/utils/RegisterMapCache;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lcom/xiaopeng/aicabin/utils/RegisterMapCache;->mIsRegisterSetInit:Z

    if-nez v1, :cond_0

    .line 2
    invoke-static {}, Lcom/xiaopeng/aicabin/utils/RegisterMapCache;->initLogicRegisterSet()V

    .line 3
    invoke-static {}, Lcom/xiaopeng/aicabin/utils/RegisterMapCache;->initEventRegisterSet()V

    .line 4
    invoke-static {}, Lcom/xiaopeng/aicabin/utils/RegisterMapCache;->initActionRegisterSet()V

    const/4 v1, 0x1

    .line 5
    sput-boolean v1, Lcom/xiaopeng/aicabin/utils/RegisterMapCache;->mIsRegisterSetInit:Z

    .line 7
    :cond_0
    sget-object v1, Lcom/xiaopeng/aicabin/utils/RegisterMapCache;->mEventRegisterNameSet:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getLogicRegisterNameSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/xiaopeng/aicabin/utils/RegisterMapCache;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lcom/xiaopeng/aicabin/utils/RegisterMapCache;->mIsRegisterSetInit:Z

    if-nez v1, :cond_0

    .line 2
    invoke-static {}, Lcom/xiaopeng/aicabin/utils/RegisterMapCache;->initLogicRegisterSet()V

    .line 3
    invoke-static {}, Lcom/xiaopeng/aicabin/utils/RegisterMapCache;->initEventRegisterSet()V

    .line 4
    invoke-static {}, Lcom/xiaopeng/aicabin/utils/RegisterMapCache;->initActionRegisterSet()V

    const/4 v1, 0x1

    .line 5
    sput-boolean v1, Lcom/xiaopeng/aicabin/utils/RegisterMapCache;->mIsRegisterSetInit:Z

    .line 7
    :cond_0
    sget-object v1, Lcom/xiaopeng/aicabin/utils/RegisterMapCache;->mLogicRegisterNameSet:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized initActionRegisterSet()V
    .locals 1

    const-class v0, Lcom/xiaopeng/aicabin/utils/RegisterMapCache;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method private static declared-synchronized initEventRegisterSet()V
    .locals 1

    const-class v0, Lcom/xiaopeng/aicabin/utils/RegisterMapCache;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method private static declared-synchronized initLogicRegisterSet()V
    .locals 3

    const-class v0, Lcom/xiaopeng/aicabin/utils/RegisterMapCache;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaopeng/aicabin/utils/RegisterMapCache;->mLogicRegisterNameSet:Ljava/util/Set;

    const-string v2, "com.xiaopeng.musicradio.common.audio.LogicRegisterMap"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/xiaopeng/aicabin/utils/RegisterMapCache;->mLogicRegisterNameSet:Ljava/util/Set;

    const-string v2, "com.xiaopeng.musicradio.usblogic.single.LogicRegisterMap"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/xiaopeng/aicabin/utils/RegisterMapCache;->mLogicRegisterNameSet:Ljava/util/Set;

    const-string v2, "com.xiaopeng.musicradio.music.logic.playopt.LogicRegisterMap"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/xiaopeng/aicabin/utils/RegisterMapCache;->mLogicRegisterNameSet:Ljava/util/Set;

    const-string v2, "com.xiaopeng.musicradio.netradio.logic.LogicRegisterMap"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/xiaopeng/aicabin/utils/RegisterMapCache;->mLogicRegisterNameSet:Ljava/util/Set;

    const-string v2, "com.xiaopeng.musicradio.search.logic.LogicRegisterMap"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

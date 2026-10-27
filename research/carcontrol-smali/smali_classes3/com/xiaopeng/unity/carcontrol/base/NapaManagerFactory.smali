.class public Lcom/xiaopeng/unity/carcontrol/base/NapaManagerFactory;
.super Ljava/lang/Object;
.source "NapaManagerFactory.java"


# static fields
.field private static final mUnityManagerCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager<",
            "+",
            "Lcom/xiaopeng/unity/carcontrol/base/INapaListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/unity/carcontrol/base/NapaManagerFactory;->mUnityManagerCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getUnityManager(Ljava/lang/String;)Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "module"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager<",
            "+",
            "Lcom/xiaopeng/unity/carcontrol/base/INapaListener;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/xiaopeng/unity/carcontrol/base/NapaManagerFactory;

    monitor-enter v0

    .line 10
    :try_start_0
    sget-object v1, Lcom/xiaopeng/unity/carcontrol/base/NapaManagerFactory;->mUnityManagerCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v2, :cond_1

    .line 13
    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 14
    const-class v4, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "get_instance"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    .line 15
    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    .line 16
    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_0

    .line 18
    :try_start_2
    invoke-virtual {v1, p0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_1

    :cond_0
    :goto_0
    move-object v2, v3

    goto :goto_2

    :catchall_1
    move-exception p0

    .line 22
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 25
    :cond_1
    :goto_2
    monitor-exit v0

    return-object v2

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

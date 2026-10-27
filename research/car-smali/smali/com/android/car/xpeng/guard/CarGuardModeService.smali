.class public Lcom/android/car/xpeng/guard/CarGuardModeService;
.super Landroid/car/xpeng/guard/ICarGuardModeSvc$Stub;
.source "CarGuardModeService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final MAX_TRANSITION_LOG_SIZE:I = 0x14

.field private static final TAG:Ljava/lang/String; = "CarGuardModeService"


# instance fields
.field private mCarGuardModeActive:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

.field private mCarGuardModeLevel:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCarSceneClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mClientDispatchHandler:Landroid/os/Handler;

.field private final mClientDispatchThread:Landroid/os/HandlerThread;

.field private final mContext:Landroid/content/Context;

.field private final mScene:Lcom/android/car/xpeng/guard/CarGuardModeScene;

.field private final mSceneListener:Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;

.field private final mTransitionLogs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/car/Utils$TransitionLog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/car/CarPropertyService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "propertyService"    # Lcom/android/car/CarPropertyService;

    .line 113
    invoke-direct {p0}, Landroid/car/xpeng/guard/ICarGuardModeSvc$Stub;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mCarSceneClients:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mTransitionLogs:Ljava/util/LinkedList;

    .line 65
    new-instance v0, Lcom/android/car/xpeng/guard/CarGuardModeService$1;

    invoke-direct {v0, p0}, Lcom/android/car/xpeng/guard/CarGuardModeService$1;-><init>(Lcom/android/car/xpeng/guard/CarGuardModeService;)V

    iput-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mSceneListener:Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;

    .line 114
    iput-object p1, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mContext:Landroid/content/Context;

    .line 115
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CarGuardModeServiceThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mClientDispatchThread:Landroid/os/HandlerThread;

    .line 116
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mClientDispatchThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 117
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mClientDispatchThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mClientDispatchHandler:Landroid/os/Handler;

    .line 118
    new-instance v0, Lcom/android/car/xpeng/guard/CarGuardModeScene;

    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mClientDispatchHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/car/xpeng/guard/CarGuardModeScene;-><init>(Landroid/content/Context;Lcom/android/car/CarPropertyService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mScene:Lcom/android/car/xpeng/guard/CarGuardModeScene;

    .line 119
    return-void
.end method

.method private dispatchCarGuardModeLastValue(Landroid/car/xpeng/guard/ICarGuardModeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/car/xpeng/guard/ICarGuardModeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 289
    const-string v0, "CarGuardModeService"

    const-string v1, "dispatchCarGuardModeLastValue: "

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mCarGuardModeLevel:Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mCarGuardModeLevel:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mCarGuardModeLevel:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/car/xpeng/guard/ICarGuardModeListener;->onCarGuardModeLevelChanged(II)V

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mCarGuardModeActive:Landroid/util/Pair;

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mCarGuardModeActive:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mCarGuardModeActive:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/car/xpeng/guard/ICarGuardModeListener;->onCarGuardModeActiveChanged(ZI)V

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-virtual {v0}, Landroid/car/xpeng/guard/CarGuardModeEvent;->getAction()Landroid/car/xpeng/Scene$Action;

    move-result-object v0

    sget-object v1, Landroid/car/xpeng/Scene$Action;->ENTER:Landroid/car/xpeng/Scene$Action;

    if-ne v0, v1, :cond_2

    .line 297
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-interface {p1, v0}, Landroid/car/xpeng/guard/ICarGuardModeListener;->onCarGuardModeChanged(Landroid/car/xpeng/guard/CarGuardModeEvent;)V

    .line 299
    :cond_2
    return-void
.end method

.method public static synthetic lambda$dispatchCarGuardModeActiveChanged$2(Lcom/android/car/xpeng/guard/CarGuardModeService;ZI)V
    .locals 6
    .param p1, "ready"    # Z
    .param p2, "reason"    # I

    .line 180
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mCarSceneClients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;

    .line 181
    .local v1, "client":Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;->access$100(Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;)Landroid/car/xpeng/guard/ICarGuardModeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 183
    :try_start_0
    invoke-static {v1}, Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;->access$100(Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;)Landroid/car/xpeng/guard/ICarGuardModeListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/car/xpeng/guard/ICarGuardModeListener;->onCarGuardModeActiveChanged(ZI)V

    .line 184
    invoke-static {v1}, Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;->access$100(Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;)Landroid/car/xpeng/guard/ICarGuardModeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/xpeng/guard/ICarGuardModeListener;->onCarGuardModeWork(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 185
    :catch_0
    move-exception v2

    .line 186
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "CarGuardModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchCarGuardModeActiveChanged to listener failed e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .end local v1    # "client":Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_2

    .line 189
    .restart local v1    # "client":Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;
    :cond_0
    const-string v2, "CarGuardModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchCarGuardModeActiveChanged: binder fatal client:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .end local v1    # "client":Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;
    :goto_2
    goto :goto_0

    .line 192
    :cond_1
    return-void
.end method

.method public static synthetic lambda$dispatchCarGuardModeChanged$0(Lcom/android/car/xpeng/guard/CarGuardModeService;Landroid/car/xpeng/guard/CarGuardModeEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/car/xpeng/guard/CarGuardModeEvent;

    .line 142
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mCarSceneClients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;

    .line 143
    .local v1, "client":Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;->access$100(Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;)Landroid/car/xpeng/guard/ICarGuardModeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 145
    :try_start_0
    invoke-static {v1}, Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;->access$100(Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;)Landroid/car/xpeng/guard/ICarGuardModeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/xpeng/guard/ICarGuardModeListener;->onCarGuardModeChanged(Landroid/car/xpeng/guard/CarGuardModeEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 146
    :catch_0
    move-exception v2

    .line 147
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "CarGuardModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchCarGuardModeChanged to listener failed e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v1    # "client":Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_2

    .line 150
    .restart local v1    # "client":Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;
    :cond_0
    const-string v2, "CarGuardModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchCarGuardModeChanged: binder fatal client:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .end local v1    # "client":Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;
    :goto_2
    goto :goto_0

    .line 153
    :cond_1
    return-void
.end method

.method public static synthetic lambda$dispatchCarGuardModeLevel$1(Lcom/android/car/xpeng/guard/CarGuardModeService;II)V
    .locals 6
    .param p1, "level"    # I
    .param p2, "reason"    # I

    .line 161
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mCarSceneClients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;

    .line 162
    .local v1, "client":Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;->access$100(Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;)Landroid/car/xpeng/guard/ICarGuardModeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 164
    :try_start_0
    invoke-static {v1}, Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;->access$100(Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;)Landroid/car/xpeng/guard/ICarGuardModeListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/car/xpeng/guard/ICarGuardModeListener;->onCarGuardModeLevelChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 165
    :catch_0
    move-exception v2

    .line 166
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "CarGuardModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchCarGuardModeLevel to listener failed e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .end local v1    # "client":Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_2

    .line 169
    .restart local v1    # "client":Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;
    :cond_0
    const-string v2, "CarGuardModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchCarGuardModeLevel: binder fatal client:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .end local v1    # "client":Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;
    :goto_2
    goto :goto_0

    .line 172
    :cond_1
    return-void
.end method

.method public static synthetic lambda$dispatchOtherStatistics$3(Lcom/android/car/xpeng/guard/CarGuardModeService;ILjava/util/Map;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/util/Map;

    .line 199
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mCarSceneClients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;

    .line 200
    .local v1, "client":Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;->access$100(Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;)Landroid/car/xpeng/guard/ICarGuardModeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 202
    :try_start_0
    invoke-static {v1}, Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;->access$100(Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;)Landroid/car/xpeng/guard/ICarGuardModeListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/car/xpeng/guard/ICarGuardModeListener;->onOtherStatistics(ILjava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 203
    :catch_0
    move-exception v2

    .line 204
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "CarGuardModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchOtherStatistics to listener failed e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .end local v1    # "client":Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_2

    .line 207
    .restart local v1    # "client":Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;
    :cond_0
    const-string v2, "CarGuardModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchOtherStatistics: binder fatal client:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .end local v1    # "client":Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;
    :goto_2
    goto :goto_0

    .line 210
    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchCarGuardModeActiveChanged(ZI)V
    .locals 3
    .param p1, "ready"    # Z
    .param p2, "reason"    # I

    .line 176
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mContext:Landroid/content/Context;

    const-string v1, "android.car.permission.CONTROL_APP_BLOCKING"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 177
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mCarGuardModeActive:Landroid/util/Pair;

    .line 178
    const-string v0, "CarGuardModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchCarGuardModeActiveChanged ready:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mCarGuardModeActive:Landroid/util/Pair;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " clients:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mCarSceneClients:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mClientDispatchHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeService$GtRHWgRac4mvBQnkYrwImSd-7KY;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeService$GtRHWgRac4mvBQnkYrwImSd-7KY;-><init>(Lcom/android/car/xpeng/guard/CarGuardModeService;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 193
    return-void
.end method

.method public dispatchCarGuardModeChanged(Landroid/car/xpeng/guard/CarGuardModeEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/car/xpeng/guard/CarGuardModeEvent;

    .line 137
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mContext:Landroid/content/Context;

    const-string v1, "android.car.permission.CONTROL_APP_BLOCKING"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 139
    iput-object p1, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    .line 140
    const-string v0, "CarGuardModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchCarGuardModeChanged event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " clients:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mCarSceneClients:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mClientDispatchHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeService$VsJ2CHw-STFfxapyIaUhAZKFoZI;

    invoke-direct {v1, p0, p1}, Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeService$VsJ2CHw-STFfxapyIaUhAZKFoZI;-><init>(Lcom/android/car/xpeng/guard/CarGuardModeService;Landroid/car/xpeng/guard/CarGuardModeEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    return-void
.end method

.method public dispatchCarGuardModeLevel(II)V
    .locals 3
    .param p1, "level"    # I
    .param p2, "reason"    # I

    .line 157
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mContext:Landroid/content/Context;

    const-string v1, "android.car.permission.CONTROL_APP_BLOCKING"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 158
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mCarGuardModeLevel:Landroid/util/Pair;

    .line 159
    const-string v0, "CarGuardModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchCarGuardModeLevel level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mCarGuardModeLevel:Landroid/util/Pair;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " clients:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mCarSceneClients:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mClientDispatchHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeService$0ntvV6RkRGSZ9TbzNbaN0qqVTR4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeService$0ntvV6RkRGSZ9TbzNbaN0qqVTR4;-><init>(Lcom/android/car/xpeng/guard/CarGuardModeService;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    return-void
.end method

.method public dispatchOtherStatistics(ILjava/util/Map;)V
    .locals 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 196
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mContext:Landroid/content/Context;

    const-string v1, "android.car.permission.CONTROL_APP_BLOCKING"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 197
    const-string v0, "CarGuardModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchOtherStatistics type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " clients:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mCarSceneClients:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mClientDispatchHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeService$1PBQqmTcgCY-ciYV7NGuna67IGk;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeService$1PBQqmTcgCY-ciYV7NGuna67IGk;-><init>(Lcom/android/car/xpeng/guard/CarGuardModeService;ILjava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 211
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 415
    const-string v0, "*CarGuardModeService*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    const-string v0, "Scene action change log:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mTransitionLogs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/Utils$TransitionLog;

    .line 418
    .local v1, "tLog":Lcom/android/car/Utils$TransitionLog;
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 419
    .end local v1    # "tLog":Lcom/android/car/Utils$TransitionLog;
    goto :goto_0

    .line 420
    :cond_0
    return-void
.end method

.method public getCarGuardModeLevel()I
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mScene:Lcom/android/car/xpeng/guard/CarGuardModeScene;

    invoke-virtual {v0}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->getCarGuardModeLevel()I

    move-result v0

    return v0
.end method

.method public getCarGuardModeSensitivity()I
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mScene:Lcom/android/car/xpeng/guard/CarGuardModeScene;

    invoke-virtual {v0}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->getCarGuardModeSensitivity()I

    move-result v0

    return v0
.end method

.method public getCurrentCarGuardModeEvent()Landroid/car/xpeng/guard/CarGuardModeEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mScene:Lcom/android/car/xpeng/guard/CarGuardModeScene;

    invoke-virtual {v0}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->getCurrentCarGuardModeEvent()Landroid/car/xpeng/guard/CarGuardModeEvent;

    move-result-object v0

    return-object v0
.end method

.method public handleOTAStateChanged(II)V
    .locals 1
    .param p1, "prevState"    # I
    .param p2, "state"    # I

    .line 423
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mScene:Lcom/android/car/xpeng/guard/CarGuardModeScene;

    invoke-virtual {v0, p1, p2}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->handleOTAStateChanged(II)V

    .line 424
    return-void
.end method

.method public declared-synchronized init()V
    .locals 1

    monitor-enter p0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mScene:Lcom/android/car/xpeng/guard/CarGuardModeScene;

    invoke-virtual {v0}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit p0

    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/xpeng/guard/CarGuardModeService;
    throw v0
.end method

.method public injectCarGuardModeLevel(II)I
    .locals 3
    .param p1, "level"    # I
    .param p2, "reason"    # I

    .line 399
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_0

    .line 400
    const/4 v0, 0x0

    return v0

    .line 402
    :cond_0
    const-string v0, "CarGuardModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "injectCarGuardModeLevel: level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mScene:Lcom/android/car/xpeng/guard/CarGuardModeScene;

    invoke-virtual {v0, p1, p2}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->setCarGuardModeLevel(II)I

    move-result v0

    return v0
.end method

.method public injectCarSceneAction(Ljava/lang/String;I)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 308
    return-void
.end method

.method public injectCarSceneAction([Ljava/lang/String;)V
    .locals 9
    .param p1, "args"    # [Ljava/lang/String;

    .line 311
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_0

    .line 312
    return-void

    .line 314
    :cond_0
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 315
    const-string v0, "CarGuardModeService"

    const-string v1, "injectCarSceneAction: args length < 2"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-void

    .line 319
    :cond_1
    const/4 v0, 0x1

    :try_start_0
    aget-object v2, p1, v0

    .line 320
    .local v2, "type":Ljava/lang/String;
    aget-object v3, p1, v1

    .line 322
    .local v3, "value":Ljava/lang/String;
    const-string v4, "CarGuardModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "injectCarSceneAction() called with: type = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "], value = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v4, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x3

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "calibration"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_1
    const-string v1, "distance-threshold"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_2
    const-string v1, "switch-timeout-min"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_3
    const-string v5, "switch-off-changed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :sswitch_4
    const-string v1, "level"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_1

    :sswitch_5
    const-string v1, "switch-on-changed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v7

    goto :goto_1

    :sswitch_6
    const-string v1, "screen"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_7
    const-string v1, "action"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v6

    goto :goto_1

    :sswitch_8
    const-string v1, "disable-ig"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x5

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v4

    :goto_1
    packed-switch v1, :pswitch_data_0

    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    goto/16 :goto_2

    .line 383
    .restart local v2    # "type":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    :pswitch_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 384
    .local v0, "distance":I
    const/16 v1, 0x1e

    if-ge v0, v1, :cond_3

    .line 385
    return-void

    .line 387
    :cond_3
    const-string v1, "CarGuardModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "injectCarSceneAction: distanceThreshold:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mScene:Lcom/android/car/xpeng/guard/CarGuardModeScene;

    iput v0, v1, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mAvailableDrivingDistanceThreshold:I

    .line 389
    goto/16 :goto_2

    .line 378
    .end local v0    # "distance":I
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/android/car/xpeng/guard/CarGuardModeService;->injectCarSceneCalibrationData(Ljava/lang/String;)V

    .line 379
    goto/16 :goto_2

    .line 374
    :pswitch_2
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mScene:Lcom/android/car/xpeng/guard/CarGuardModeScene;

    const-string v1, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->isDebugScreenOnActive:Z

    .line 375
    goto/16 :goto_2

    .line 370
    :pswitch_3
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mScene:Lcom/android/car/xpeng/guard/CarGuardModeScene;

    const-string v1, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->isDebugIgOffDisable:Z

    .line 371
    goto/16 :goto_2

    .line 360
    :pswitch_4
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 361
    .local v0, "min":J
    const-wide/16 v4, 0x1

    cmp-long v4, v0, v4

    if-lez v4, :cond_4

    const-wide/16 v4, 0x10e0

    cmp-long v4, v0, v4

    if-gez v4, :cond_4

    .line 363
    iget-object v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mScene:Lcom/android/car/xpeng/guard/CarGuardModeScene;

    const-wide/16 v5, 0x3c

    mul-long/2addr v5, v0

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    iput-wide v5, v4, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mDebugLevelOffTimeout:J

    .line 364
    const-string v4, "CarGuardModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "injectCarSceneAction: min:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " mDebugLevelOffTimeout:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mScene:Lcom/android/car/xpeng/guard/CarGuardModeScene;

    iget-wide v6, v6, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mDebugLevelOffTimeout:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    .end local v0    # "min":J
    :cond_4
    goto :goto_2

    .line 353
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 354
    .local v1, "reason":I
    invoke-virtual {p0, v0, v1}, Lcom/android/car/xpeng/guard/CarGuardModeService;->injectCarGuardModeLevel(II)I

    .line 357
    .end local v1    # "reason":I
    goto :goto_2

    .line 346
    :pswitch_6
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 347
    .local v0, "reason":I
    invoke-virtual {p0, v6, v0}, Lcom/android/car/xpeng/guard/CarGuardModeService;->injectCarGuardModeLevel(II)I

    .line 350
    .end local v0    # "reason":I
    goto :goto_2

    .line 336
    :pswitch_7
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 337
    .local v0, "level":I
    const/4 v1, 0x0

    .line 338
    .local v1, "resaon":I
    array-length v4, p1

    if-le v4, v7, :cond_5

    .line 339
    aget-object v4, p1, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v1, v4

    .line 341
    :cond_5
    invoke-virtual {p0, v0, v1}, Lcom/android/car/xpeng/guard/CarGuardModeService;->injectCarGuardModeLevel(II)I

    .line 343
    .end local v0    # "level":I
    .end local v1    # "resaon":I
    goto :goto_2

    .line 325
    :pswitch_8
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 327
    .local v0, "action":I
    new-instance v1, Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/car/xpeng/guard/CarGuardModeEvent;-><init>(Ljava/lang/String;)V

    .line 328
    .local v1, "event":Landroid/car/xpeng/guard/CarGuardModeEvent;
    invoke-static {}, Landroid/car/xpeng/Scene$Action;->values()[Landroid/car/xpeng/Scene$Action;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v1, v4}, Landroid/car/xpeng/guard/CarGuardModeEvent;->setAction(Landroid/car/xpeng/Scene$Action;)Landroid/car/xpeng/Scene;

    .line 330
    invoke-virtual {p0, v1}, Lcom/android/car/xpeng/guard/CarGuardModeService;->dispatchCarGuardModeChanged(Landroid/car/xpeng/guard/CarGuardModeEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    .end local v0    # "action":I
    .end local v1    # "event":Landroid/car/xpeng/guard/CarGuardModeEvent;
    nop

    .line 395
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :goto_2
    goto :goto_3

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 396
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x607f35dd -> :sswitch_8
        -0x54d081ca -> :sswitch_7
        -0x361a3f94 -> :sswitch_6
        -0x1c7b0f01 -> :sswitch_5
        0x6219b84 -> :sswitch_4
        0x749af3d -> :sswitch_3
        0x25a66acd -> :sswitch_2
        0x48a9a493 -> :sswitch_1
        0x54b799ea -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public injectCarSceneCalibrationData(Ljava/lang/String;)V
    .locals 1
    .param p1, "json"    # Ljava/lang/String;

    .line 407
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_0

    .line 408
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mScene:Lcom/android/car/xpeng/guard/CarGuardModeScene;

    invoke-virtual {v0, p1}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->injectCarSceneCalibrationData(Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method public registerCarGuardModeListener(Landroid/car/xpeng/guard/ICarGuardModeListener;)V
    .locals 6
    .param p1, "listener"    # Landroid/car/xpeng/guard/ICarGuardModeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 237
    if-eqz p1, :cond_2

    .line 240
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mCarSceneClients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mScene:Lcom/android/car/xpeng/guard/CarGuardModeScene;

    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mSceneListener:Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;

    invoke-virtual {v0, v1}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->registerCarGuardModeListener(Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;)V

    .line 243
    :cond_0
    invoke-interface {p1}, Landroid/car/xpeng/guard/ICarGuardModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 244
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mCarSceneClients:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;

    .line 245
    .local v1, "client":Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;
    if-nez v1, :cond_1

    .line 246
    new-instance v2, Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;

    invoke-direct {v2, p0, p1}, Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;-><init>(Lcom/android/car/xpeng/guard/CarGuardModeService;Landroid/car/xpeng/guard/ICarGuardModeListener;)V

    move-object v1, v2

    .line 247
    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mCarSceneClients:Ljava/util/Map;

    invoke-interface {p1}, Landroid/car/xpeng/guard/ICarGuardModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 248
    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mCarSceneClients:Ljava/util/Map;

    invoke-interface {p1}, Landroid/car/xpeng/guard/ICarGuardModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/car/xpeng/guard/CarGuardModeService;->dispatchCarGuardModeLastValue(Landroid/car/xpeng/guard/ICarGuardModeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    goto :goto_0

    .line 253
    :catch_0
    move-exception v2

    .line 254
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "CarGuardModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchCarGuardModeLevel to listener failed e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    const-string v2, "CarGuardModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerCarGuardModeListener(): binder="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mCarSceneClients:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void

    .line 238
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "client":Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 4

    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mScene:Lcom/android/car/xpeng/guard/CarGuardModeScene;

    invoke-virtual {v0}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->release()V

    .line 130
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mCarSceneClients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;

    .line 131
    .local v1, "client":Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;
    invoke-static {v1}, Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;->access$000(Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;)Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 132
    .end local v1    # "client":Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;
    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mCarSceneClients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/xpeng/guard/CarGuardModeService;
    throw v0
.end method

.method public setCarGuardModeLevel(I)I
    .locals 3
    .param p1, "level"    # I

    .line 215
    const-string v0, "CarGuardModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCarGuardModeLevel: level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mScene:Lcom/android/car/xpeng/guard/CarGuardModeScene;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->setCarGuardModeLevel(II)I

    move-result v0

    return v0
.end method

.method public setCarGuardModeSensitivity(I)I
    .locals 3
    .param p1, "sens"    # I

    .line 226
    const-string v0, "CarGuardModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCarGuardModeSensitivity: sens:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mScene:Lcom/android/car/xpeng/guard/CarGuardModeScene;

    invoke-virtual {v0, p1}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->setCarGuardModeSensitivity(I)I

    move-result v0

    return v0
.end method

.method public setCarGuardThresholdJson(Ljava/lang/String;)V
    .locals 1
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mScene:Lcom/android/car/xpeng/guard/CarGuardModeScene;

    invoke-virtual {v0, p1}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->injectCarSceneCalibrationData(Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public unregisterCarGuardModeListener(Landroid/car/xpeng/guard/ICarGuardModeListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/car/xpeng/guard/ICarGuardModeListener;

    .line 263
    if-eqz p1, :cond_2

    .line 266
    invoke-interface {p1}, Landroid/car/xpeng/guard/ICarGuardModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 267
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mCarSceneClients:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;

    .line 268
    .local v1, "client":Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;
    if-nez v1, :cond_0

    .line 269
    const-string v2, "CarGuardModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterCarGuardModeListener client not exist. binder:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mCarSceneClients:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 271
    :cond_0
    const-string v2, "CarGuardModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterCarGuardModeListener: binder:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mCarSceneClients:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :goto_0
    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mCarSceneClients:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 274
    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeService;->mScene:Lcom/android/car/xpeng/guard/CarGuardModeScene;

    invoke-virtual {v2}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->unregisterCarGuardModeListener()V

    .line 276
    :cond_1
    return-void

    .line 264
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "client":Lcom/android/car/xpeng/guard/CarGuardModeService$CarSceneClient;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unregisterCarGuardModeListener listener cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

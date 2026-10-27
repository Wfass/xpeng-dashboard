.class public Landroid/car/xpeng/ai/wake/CarAutoWakeManager;
.super Landroid/car/CarManagerBase;
.source "CarAutoWakeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/ai/wake/CarAutoWakeManager$CarAutoWakeSceneListener;,
        Landroid/car/xpeng/ai/wake/CarAutoWakeManager$CarAutoWakeSceneListenerToService;
    }
.end annotation


# static fields
.field public static final CAR_AUTO_WAKE_SERVICE:Ljava/lang/String; = "ai_auto_wake"

.field public static final EXIT_CODE_WAKE_INTERRUPT_AC_STATE_BUSY:I = 0xb

.field public static final EXIT_CODE_WAKE_INTERRUPT_AC_STATE_CHANGED:I = 0xc

.field public static final EXIT_CODE_WAKE_INTERRUPT_CARE_MODE_ENTER:I = 0xf

.field public static final EXIT_CODE_WAKE_INTERRUPT_HV_POWER_OFF:I = 0x6

.field public static final EXIT_CODE_WAKE_INTERRUPT_IG_LOCAL_ON:I = 0x7

.field public static final EXIT_CODE_WAKE_INTERRUPT_NETWORK_SLEEP:I = 0x8

.field public static final EXIT_CODE_WAKE_INTERRUPT_OTA_UPGRADE:I = 0xa

.field public static final EXIT_CODE_WAKE_INTERRUPT_POWER_OUT:I = 0x9

.field public static final EXIT_CODE_WAKE_INTERRUPT_TASK_INFO_CHANGED:I = 0xd

.field public static final EXIT_CODE_WAKE_INTERRUPT_USER_ACTION:I = 0xe

.field public static final EXIT_CODE_WAKE_TRIGGER_CARE_MODE_ENTER:I = 0x10

.field public static final EXIT_CODE_WAKE_TRIGGER_CLOCK_END:I = 0x1

.field public static final EXIT_CODE_WAKE_TRIGGER_HV_POWER_FAIL:I = 0x2

.field public static final EXIT_CODE_WAKE_TRIGGER_IG_LOCAL_ON:I = 0x5

.field public static final EXIT_CODE_WAKE_TRIGGER_NETWORK_FAIL:I = 0x3

.field public static final EXIT_CODE_WAKE_TRIGGER_OTA_UPGRADE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "CarAutoWakeManager"


# instance fields
.field private final mCarAutoWakeSceneListenerToService:Landroid/car/xpeng/ai/wake/CarAutoWakeManager$CarAutoWakeSceneListenerToService;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/car/xpeng/ai/wake/CarAutoWakeManager$CarAutoWakeSceneListener;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 0

    .line 147
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 115
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Landroid/car/xpeng/ai/wake/CarAutoWakeManager;->mListeners:Ljava/util/List;

    .line 148
    invoke-static {p2}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;

    move-result-object p1

    iput-object p1, p0, Landroid/car/xpeng/ai/wake/CarAutoWakeManager;->mService:Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;

    .line 149
    new-instance p1, Landroid/car/xpeng/ai/wake/CarAutoWakeManager$CarAutoWakeSceneListenerToService;

    invoke-direct {p1, p0}, Landroid/car/xpeng/ai/wake/CarAutoWakeManager$CarAutoWakeSceneListenerToService;-><init>(Landroid/car/xpeng/ai/wake/CarAutoWakeManager;)V

    iput-object p1, p0, Landroid/car/xpeng/ai/wake/CarAutoWakeManager;->mCarAutoWakeSceneListenerToService:Landroid/car/xpeng/ai/wake/CarAutoWakeManager$CarAutoWakeSceneListenerToService;

    return-void
.end method

.method static synthetic access$000(Landroid/car/xpeng/ai/wake/CarAutoWakeManager;)Landroid/os/Handler;
    .locals 0

    .line 25
    invoke-virtual {p0}, Landroid/car/xpeng/ai/wake/CarAutoWakeManager;->getEventHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Landroid/car/xpeng/ai/wake/CarAutoWakeManager;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Landroid/car/xpeng/ai/wake/CarAutoWakeManager;->mListeners:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public deleteAllAutoWakeTask()V
    .locals 2

    const-string v0, "CarAutoWakeManager"

    const-string v1, "deleteAllAutoWakeTask"

    .line 219
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/ai/wake/CarAutoWakeManager;->mService:Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;

    invoke-interface {v0}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;->deleteAllAutoWakeTask()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 223
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public deleteAutoWakeTaskId(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteAutoWakeTaskId taskList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarAutoWakeManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/ai/wake/CarAutoWakeManager;->mService:Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;

    invoke-interface {v0, p1}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;->deleteAutoWakeTaskId(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 232
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getRunningAutoWakeTaskId()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "CarAutoWakeManager"

    const-string v1, "getRunningAutoWakeTaskId"

    .line 260
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 263
    :try_start_0
    iget-object v1, p0, Landroid/car/xpeng/ai/wake/CarAutoWakeManager;->mService:Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;

    invoke-interface {v1}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;->getRunningAutoWakeTaskId()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 264
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 265
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 266
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 267
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 272
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    return-object v0
.end method

.method public insertOrUpdateAutoWakeTask(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/xpeng/ai/wake/AutoWakeTask;",
            ">;)V"
        }
    .end annotation

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertOrUpdateAutoWakeTask taskList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarAutoWakeManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/ai/wake/CarAutoWakeManager;->mService:Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;

    invoke-interface {v0, p1}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;->insertOrUpdateAutoWakeTask(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 241
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public notifyNoRunningScene()V
    .locals 2

    const-string v0, "CarAutoWakeManager"

    const-string v1, "notifyNoRunningScene"

    .line 309
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/ai/wake/CarAutoWakeManager;->mService:Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;

    invoke-interface {v0}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;->notifyNoRunningScene()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 313
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onCarDisconnected()V
    .locals 0

    .line 319
    invoke-super {p0}, Landroid/car/CarManagerBase;->onCarDisconnected()V

    return-void
.end method

.method public onConnected()V
    .locals 2

    .line 154
    invoke-super {p0}, Landroid/car/CarManagerBase;->onConnected()V

    .line 156
    :try_start_0
    invoke-virtual {p0}, Landroid/car/xpeng/ai/wake/CarAutoWakeManager;->getICarOrThrow()Landroid/car/ICar;

    move-result-object v0

    const-string v1, "ai_auto_wake"

    invoke-interface {v0, v1}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;

    move-result-object v0

    iput-object v0, p0, Landroid/car/xpeng/ai/wake/CarAutoWakeManager;->mService:Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 158
    invoke-virtual {p0, v0}, Landroid/car/xpeng/ai/wake/CarAutoWakeManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public overrideAutoWakeUpTask(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/xpeng/ai/wake/AutoWakeTask;",
            ">;)V"
        }
    .end annotation

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "overrideAutoWakeUpTask taskList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarAutoWakeManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/ai/wake/CarAutoWakeManager;->mService:Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;

    invoke-interface {v0, p1}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;->overrideAutoWakeTask(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 250
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public registerAutoWakeListener(Landroid/car/xpeng/ai/wake/CarAutoWakeManager$CarAutoWakeSceneListener;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 182
    iget-object v0, p0, Landroid/car/xpeng/ai/wake/CarAutoWakeManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 183
    :try_start_0
    iget-object v1, p0, Landroid/car/xpeng/ai/wake/CarAutoWakeManager;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 185
    :try_start_1
    iget-object v1, p0, Landroid/car/xpeng/ai/wake/CarAutoWakeManager;->mService:Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;

    iget-object v2, p0, Landroid/car/xpeng/ai/wake/CarAutoWakeManager;->mCarAutoWakeSceneListenerToService:Landroid/car/xpeng/ai/wake/CarAutoWakeManager$CarAutoWakeSceneListenerToService;

    invoke-interface {v1, v2}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;->registerAutoWakeListener(Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 187
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 190
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/car/xpeng/ai/wake/CarAutoWakeManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 191
    iget-object v1, p0, Landroid/car/xpeng/ai/wake/CarAutoWakeManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v1, "CarAutoWakeManager"

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerAutoWakeListener: listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " mListeners.size="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Landroid/car/xpeng/ai/wake/CarAutoWakeManager;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_2
    const-string p1, "CarAutoWakeManager"

    const-string/jumbo v0, "registerAutoWakeListener listener is null"

    .line 179
    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startRootSceneByUser(Ljava/lang/String;)V
    .locals 2

    const-string v0, "CarAutoWakeManager"

    const-string/jumbo v1, "startRootSceneByUser"

    .line 283
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/ai/wake/CarAutoWakeManager;->mService:Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;

    invoke-interface {v0, p1}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;->startRootSceneByUser(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 287
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public stopRootSceneByUser(Ljava/lang/String;)V
    .locals 2

    const-string v0, "CarAutoWakeManager"

    const-string/jumbo v1, "stopRootSceneByUser"

    .line 297
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/ai/wake/CarAutoWakeManager;->mService:Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;

    invoke-interface {v0, p1}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;->stopRootSceneByUser(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 301
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public unregisterAutoWakeListener(Landroid/car/xpeng/ai/wake/CarAutoWakeManager$CarAutoWakeSceneListener;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 205
    iget-object v0, p0, Landroid/car/xpeng/ai/wake/CarAutoWakeManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 206
    :try_start_0
    iget-object v1, p0, Landroid/car/xpeng/ai/wake/CarAutoWakeManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 207
    iget-object v1, p0, Landroid/car/xpeng/ai/wake/CarAutoWakeManager;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 209
    :try_start_1
    iget-object v1, p0, Landroid/car/xpeng/ai/wake/CarAutoWakeManager;->mService:Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;

    iget-object v2, p0, Landroid/car/xpeng/ai/wake/CarAutoWakeManager;->mCarAutoWakeSceneListenerToService:Landroid/car/xpeng/ai/wake/CarAutoWakeManager$CarAutoWakeSceneListenerToService;

    invoke-interface {v1, v2}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;->unregisterAutoWakeListener(Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 211
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    const-string v1, "CarAutoWakeManager"

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterAutoWakeListener: listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " mListeners.size="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Landroid/car/xpeng/ai/wake/CarAutoWakeManager;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    const-string p1, "CarAutoWakeManager"

    const-string/jumbo v0, "unregisterAutoWakeListener listener is null"

    .line 202
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

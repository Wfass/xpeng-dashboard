.class public Landroid/car/xpeng/mode/CarLeaveModeManager;
.super Landroid/car/CarManagerBase;
.source "CarLeaveModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/mode/CarLeaveModeManager$CarLeaveModeListenerToService;
    }
.end annotation


# static fields
.field public static final CAR_LEAVE_MODE_1H_TIP:I = 0x6

.field public static final CAR_LEAVE_MODE_AUTO_ON_5MIN_TIP:I = 0xb

.field public static final CAR_LEAVE_MODE_AUTO_ON_BY_CAR_TIP:I = 0xd

.field public static final CAR_LEAVE_MODE_AUTO_ON_BY_PHONE_TIP:I = 0xc

.field public static final CAR_LEAVE_MODE_GEAR_NO_TIP:I = 0x0

.field public static final CAR_LEAVE_MODE_GEAR_TIP:I = 0x1

.field public static final CAR_LEAVE_MODE_LOCK_FAIL_TIP:I = 0x9

.field public static final CAR_LEAVE_MODE_OFF:I = 0x0

.field public static final CAR_LEAVE_MODE_OFF_BY_CAR_TIP:I = 0xf

.field public static final CAR_LEAVE_MODE_OFF_BY_PHONE_TIP:I = 0x10

.field public static final CAR_LEAVE_MODE_ON:I = 0x1

.field public static final CAR_LEAVE_MODE_ON_BY_AUTO_TIP:I = 0xe

.field public static final CAR_LEAVE_MODE_OTHERS_TIP:I = 0x5

.field public static final CAR_LEAVE_MODE_POWER_TIP:I = 0x3

.field public static final CAR_LEAVE_MODE_PRE_ON:I = 0x2

.field public static final CAR_LEAVE_MODE_REASON_ANTI_POWER:I = 0x4e24

.field public static final CAR_LEAVE_MODE_REASON_ANTI_WARM:I = 0x4e25

.field public static final CAR_LEAVE_MODE_REASON_CAMP_MODE_ON:I = 0x4e29

.field public static final CAR_LEAVE_MODE_REASON_CARE_MODE_ON:I = 0x4e28

.field public static final CAR_LEAVE_MODE_REASON_DEFAULT:I = 0xc8

.field public static final CAR_LEAVE_MODE_REASON_NOT_LOCAL_ON:I = 0x4e21

.field public static final CAR_LEAVE_MODE_REASON_NOT_P_GEAR:I = 0x4e22

.field public static final CAR_LEAVE_MODE_REASON_OTHERS:I = 0x4e26

.field public static final CAR_LEAVE_MODE_REASON_SOC_LESS_20:I = 0x4e23

.field public static final CAR_LEAVE_MODE_SOC_10_TIP:I = 0x8

.field public static final CAR_LEAVE_MODE_SOC_15_TIP:I = 0xa

.field public static final CAR_LEAVE_MODE_SOC_20_TIP:I = 0x7

.field public static final CAR_LEAVE_MODE_SOC_LESS_5_TIP:I = 0x4

.field public static final CAR_LEAVE_MODE_SPEED_TIP:I = 0x2

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "CarLeaveModeManager"


# instance fields
.field private final mCarLeaveModeListenerToService:Landroid/car/xpeng/mode/CarLeaveModeManager$CarLeaveModeListenerToService;

.field private final mClientListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/car/xpeng/mode/CarLeaveModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLeaveHandler:Landroid/os/Handler;

.field private mService:Landroid/car/xpeng/mode/ICarLeaveModeSvc;


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 0

    .line 159
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    const/4 p1, 0x0

    .line 154
    iput-object p1, p0, Landroid/car/xpeng/mode/CarLeaveModeManager;->mLeaveHandler:Landroid/os/Handler;

    .line 155
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Landroid/car/xpeng/mode/CarLeaveModeManager;->mClientListenerList:Ljava/util/List;

    .line 160
    invoke-static {p2}, Landroid/car/xpeng/mode/ICarLeaveModeSvc$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/xpeng/mode/ICarLeaveModeSvc;

    move-result-object p1

    iput-object p1, p0, Landroid/car/xpeng/mode/CarLeaveModeManager;->mService:Landroid/car/xpeng/mode/ICarLeaveModeSvc;

    .line 161
    new-instance p1, Landroid/car/xpeng/mode/CarLeaveModeManager$CarLeaveModeListenerToService;

    invoke-direct {p1, p0}, Landroid/car/xpeng/mode/CarLeaveModeManager$CarLeaveModeListenerToService;-><init>(Landroid/car/xpeng/mode/CarLeaveModeManager;)V

    iput-object p1, p0, Landroid/car/xpeng/mode/CarLeaveModeManager;->mCarLeaveModeListenerToService:Landroid/car/xpeng/mode/CarLeaveModeManager$CarLeaveModeListenerToService;

    .line 162
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/car/xpeng/mode/CarLeaveModeManager;->mLeaveHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/car/xpeng/mode/CarLeaveModeManager;Landroid/car/xpeng/mode/CarLeaveModeEvent;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/car/xpeng/mode/CarLeaveModeManager;->handleCarLeaveModeEventChanged(Landroid/car/xpeng/mode/CarLeaveModeEvent;)V

    return-void
.end method

.method private dispatchCarLeaveToClients(Landroid/car/xpeng/mode/CarLeaveModeEvent;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Landroid/car/xpeng/mode/CarLeaveModeManager;->mClientListenerList:Ljava/util/List;

    monitor-enter v0

    .line 227
    :try_start_0
    iget-object v1, p0, Landroid/car/xpeng/mode/CarLeaveModeManager;->mClientListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 228
    iget-object v1, p0, Landroid/car/xpeng/mode/CarLeaveModeManager;->mClientListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/xpeng/mode/CarLeaveModeListener;

    .line 229
    invoke-interface {v2, p1}, Landroid/car/xpeng/mode/CarLeaveModeListener;->onLeaveModeEventChange(Landroid/car/xpeng/mode/CarLeaveModeEvent;)V

    goto :goto_0

    .line 232
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xp_leave_mode_service"

    return-object v0
.end method

.method private handleCarLeaveModeEventChanged(Landroid/car/xpeng/mode/CarLeaveModeEvent;)V
    .locals 2

    .line 217
    iget-object v0, p0, Landroid/car/xpeng/mode/CarLeaveModeManager;->mLeaveHandler:Landroid/os/Handler;

    new-instance v1, Landroid/car/xpeng/mode/-$$Lambda$CarLeaveModeManager$3rVOP__aS5qWQ40puJZWlofvXp0;

    invoke-direct {v1, p0, p1}, Landroid/car/xpeng/mode/-$$Lambda$CarLeaveModeManager$3rVOP__aS5qWQ40puJZWlofvXp0;-><init>(Landroid/car/xpeng/mode/CarLeaveModeManager;Landroid/car/xpeng/mode/CarLeaveModeEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getCarLeaveModeEnable()[I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 269
    fill-array-data v0, :array_0

    .line 271
    :try_start_0
    iget-object v1, p0, Landroid/car/xpeng/mode/CarLeaveModeManager;->mService:Landroid/car/xpeng/mode/ICarLeaveModeSvc;

    invoke-interface {v1}, Landroid/car/xpeng/mode/ICarLeaveModeSvc;->getCarLeaveModeEnable()[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 273
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0xc8
    .end array-data
.end method

.method public getCarLeaveModeTip()I
    .locals 1

    .line 301
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/mode/CarLeaveModeManager;->mService:Landroid/car/xpeng/mode/ICarLeaveModeSvc;

    invoke-interface {v0}, Landroid/car/xpeng/mode/ICarLeaveModeSvc;->getCarLeaveModeTip()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 303
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$handleCarLeaveModeEventChanged$0$CarLeaveModeManager(Landroid/car/xpeng/mode/CarLeaveModeEvent;)V
    .locals 0

    .line 218
    invoke-direct {p0, p1}, Landroid/car/xpeng/mode/CarLeaveModeManager;->dispatchCarLeaveToClients(Landroid/car/xpeng/mode/CarLeaveModeEvent;)V

    return-void
.end method

.method public declared-synchronized onCarDisconnected()V
    .locals 1

    monitor-enter p0

    .line 209
    :try_start_0
    invoke-super {p0}, Landroid/car/CarManagerBase;->onCarDisconnected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onConnected()V
    .locals 2

    .line 167
    invoke-super {p0}, Landroid/car/CarManagerBase;->onConnected()V

    .line 169
    :try_start_0
    invoke-virtual {p0}, Landroid/car/xpeng/mode/CarLeaveModeManager;->getICarOrThrow()Landroid/car/ICar;

    move-result-object v0

    const-string/jumbo v1, "xp_leave_mode_service"

    invoke-interface {v0, v1}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/car/xpeng/mode/ICarLeaveModeSvc$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/xpeng/mode/ICarLeaveModeSvc;

    move-result-object v0

    iput-object v0, p0, Landroid/car/xpeng/mode/CarLeaveModeManager;->mService:Landroid/car/xpeng/mode/ICarLeaveModeSvc;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 171
    invoke-virtual {p0, v0}, Landroid/car/xpeng/mode/CarLeaveModeManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized registerLeaveModeListener(Landroid/car/xpeng/mode/CarLeaveModeListener;)V
    .locals 5

    monitor-enter p0

    .line 177
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/mode/CarLeaveModeManager;->mClientListenerList:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 178
    :try_start_1
    iget-object v1, p0, Landroid/car/xpeng/mode/CarLeaveModeManager;->mClientListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 180
    :try_start_2
    iget-object v1, p0, Landroid/car/xpeng/mode/CarLeaveModeManager;->mService:Landroid/car/xpeng/mode/ICarLeaveModeSvc;

    iget-object v2, p0, Landroid/car/xpeng/mode/CarLeaveModeManager;->mCarLeaveModeListenerToService:Landroid/car/xpeng/mode/CarLeaveModeManager$CarLeaveModeListenerToService;

    invoke-interface {v1, v2}, Landroid/car/xpeng/mode/ICarLeaveModeSvc;->registerLeaveModeListener(Landroid/car/xpeng/mode/ICarLeaveModeListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "CarLeaveModeManager"

    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerLeaveModeListener failed, e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 186
    :try_start_4
    iget-object v0, p0, Landroid/car/xpeng/mode/CarLeaveModeManager;->mClientListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    iget-object v0, p0, Landroid/car/xpeng/mode/CarLeaveModeManager;->mClientListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v0, "CarLeaveModeManager"

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerLeaveModeListener listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", mClientListenerList = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Landroid/car/xpeng/mode/CarLeaveModeManager;->mClientListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 190
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 185
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setCarLeaveModeEnable(I)V
    .locals 1

    .line 244
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/mode/CarLeaveModeManager;->mService:Landroid/car/xpeng/mode/ICarLeaveModeSvc;

    invoke-interface {v0, p1}, Landroid/car/xpeng/mode/ICarLeaveModeSvc;->setCarLeaveModeEnable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 246
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public declared-synchronized unregisterLeaveModeListener(Landroid/car/xpeng/mode/CarLeaveModeListener;)V
    .locals 5

    monitor-enter p0

    .line 193
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/mode/CarLeaveModeManager;->mClientListenerList:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 194
    :try_start_1
    iget-object v1, p0, Landroid/car/xpeng/mode/CarLeaveModeManager;->mClientListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 195
    iget-object v1, p0, Landroid/car/xpeng/mode/CarLeaveModeManager;->mClientListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 197
    :try_start_2
    iget-object v1, p0, Landroid/car/xpeng/mode/CarLeaveModeManager;->mService:Landroid/car/xpeng/mode/ICarLeaveModeSvc;

    iget-object v2, p0, Landroid/car/xpeng/mode/CarLeaveModeManager;->mCarLeaveModeListenerToService:Landroid/car/xpeng/mode/CarLeaveModeManager$CarLeaveModeListenerToService;

    invoke-interface {v1, v2}, Landroid/car/xpeng/mode/ICarLeaveModeSvc;->unregisterLeaveModeListener(Landroid/car/xpeng/mode/ICarLeaveModeListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "CarLeaveModeManager"

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterLeaveModeListener failed, e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const-string v1, "CarLeaveModeManager"

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterLeaveModeListener listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", mClientListenerList = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Landroid/car/xpeng/mode/CarLeaveModeManager;->mClientListenerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 203
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

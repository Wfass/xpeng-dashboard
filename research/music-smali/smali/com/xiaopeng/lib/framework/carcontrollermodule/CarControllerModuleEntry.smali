.class public Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;
.super Ljava/lang/Object;
.source "CarControllerModuleEntry.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/module/IModuleEntry;


# static fields
.field public static sPrintLog:Z = false


# instance fields
.field private volatile mAvasController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvasController;

.field private volatile mAvmController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;

.field private volatile mBcmController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;

.field private volatile mBmsController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;

.field private volatile mCanController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CanController;

.field private mCarApiClient:Landroid/car/Car;

.field private volatile mCcsController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CcsController;

.field private volatile mCiuController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CiuController;

.field private mContext:Landroid/content/Context;

.field private volatile mDcdcController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/DcdcController;

.field private volatile mEpsController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EpsController;

.field private volatile mEspController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EspController;

.field private volatile mHVACController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private volatile mIcmController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;

.field private volatile mInputController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;

.field private volatile mIpuController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IpuController;

.field private volatile mIsInited:Z

.field private volatile mMcuController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;

.field private volatile mRadioController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController;

.field private volatile mScuController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;

.field private volatile mTpmsController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/TpmsController;

.field private volatile mVcuController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;

.field private volatile mXpuController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/XpuController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mIsInited:Z

    .line 92
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->clearAllControllers()V

    return-void
.end method

.method private clearAllControllers()V
    .locals 1

    .line 326
    monitor-enter p0

    const/4 v0, 0x0

    .line 327
    :try_start_0
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mVcuController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;

    .line 328
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mHVACController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;

    .line 329
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mAvasController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvasController;

    .line 330
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mAvmController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;

    .line 331
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mBmsController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;

    .line 332
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mEpsController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EpsController;

    .line 333
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mEspController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EspController;

    .line 334
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mIcmController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;

    .line 335
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mMcuController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;

    .line 336
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mRadioController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController;

    .line 337
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mScuController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;

    .line 338
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mTpmsController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/TpmsController;

    .line 339
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mInputController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;

    .line 340
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mCanController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CanController;

    .line 341
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mIpuController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IpuController;

    .line 342
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mCcsController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CcsController;

    .line 343
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mDcdcController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/DcdcController;

    .line 344
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mCiuController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CiuController;

    .line 345
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mXpuController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/XpuController;

    .line 346
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private connectCarWhenInit()V
    .locals 4

    .line 96
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mIsInited:Z

    if-nez v0, :cond_1

    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mIsInited:Z

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CarControllerModule"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mHandlerThread:Landroid/os/HandlerThread;

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry$1;-><init>(Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;)V

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mHandlerThread:Landroid/os/HandlerThread;

    .line 117
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 102
    invoke-static {v0, v1, v2}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/os/Handler;)Landroid/car/Car;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mCarApiClient:Landroid/car/Car;

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v0}, Landroid/car/Car;->connect()V

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mIsInited:Z

    .line 121
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public static setPrintLog(Z)V
    .locals 0

    .line 351
    sput-boolean p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->sPrintLog:Z

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 128
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->connectCarWhenInit()V

    .line 130
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController;

    if-ne p1, v0, :cond_2

    .line 131
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mBcmController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;

    if-nez p1, :cond_1

    .line 132
    monitor-enter p0

    .line 133
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mBcmController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;

    if-nez p1, :cond_0

    .line 134
    new-instance p1, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mCarApiClient:Landroid/car/Car;

    invoke-direct {p1, v0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;-><init>(Landroid/car/Car;)V

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mBcmController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;

    .line 136
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 138
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mBcmController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BcmController;

    return-object p1

    .line 139
    :cond_2
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController;

    if-ne p1, v0, :cond_5

    .line 140
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mVcuController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;

    if-nez p1, :cond_4

    .line 141
    monitor-enter p0

    .line 142
    :try_start_1
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mVcuController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;

    if-nez p1, :cond_3

    .line 143
    new-instance p1, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mCarApiClient:Landroid/car/Car;

    invoke-direct {p1, v0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;-><init>(Landroid/car/Car;)V

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mVcuController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;

    .line 145
    :cond_3
    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 148
    :cond_4
    :goto_1
    const-class p1, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EspController;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 150
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mVcuController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/VcuController;

    return-object p1

    .line 151
    :cond_5
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IHVACController;

    if-ne p1, v0, :cond_8

    .line 153
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mHVACController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;

    if-nez p1, :cond_7

    .line 154
    monitor-enter p0

    .line 155
    :try_start_2
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mHVACController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;

    if-nez p1, :cond_6

    .line 156
    new-instance p1, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mCarApiClient:Landroid/car/Car;

    invoke-direct {p1, v0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;-><init>(Landroid/car/Car;)V

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mHVACController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;

    .line 158
    :cond_6
    monitor-exit p0

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    .line 160
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mHVACController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/HVACController;

    return-object p1

    .line 161
    :cond_8
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IAvasController;

    if-ne p1, v0, :cond_b

    .line 163
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mAvasController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvasController;

    if-nez p1, :cond_a

    .line 164
    monitor-enter p0

    .line 165
    :try_start_3
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mAvasController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvasController;

    if-nez p1, :cond_9

    .line 166
    new-instance p1, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvasController;

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mCarApiClient:Landroid/car/Car;

    invoke-direct {p1, v0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvasController;-><init>(Landroid/car/Car;)V

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mAvasController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvasController;

    .line 168
    :cond_9
    monitor-exit p0

    goto :goto_3

    :catchall_3
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p1

    .line 170
    :cond_a
    :goto_3
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mAvasController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvasController;

    return-object p1

    .line 171
    :cond_b
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IAvmController;

    if-ne p1, v0, :cond_e

    .line 173
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mAvmController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;

    if-nez p1, :cond_d

    .line 174
    monitor-enter p0

    .line 175
    :try_start_4
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mAvmController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;

    if-nez p1, :cond_c

    .line 176
    new-instance p1, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mCarApiClient:Landroid/car/Car;

    invoke-direct {p1, v0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;-><init>(Landroid/car/Car;)V

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mAvmController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;

    .line 178
    :cond_c
    monitor-exit p0

    goto :goto_4

    :catchall_4
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw p1

    .line 180
    :cond_d
    :goto_4
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mAvmController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/AvmController;

    return-object p1

    .line 181
    :cond_e
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController;

    if-ne p1, v0, :cond_11

    .line 182
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mBmsController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;

    if-nez p1, :cond_10

    .line 183
    monitor-enter p0

    .line 184
    :try_start_5
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mBmsController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;

    if-nez p1, :cond_f

    .line 185
    new-instance p1, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mCarApiClient:Landroid/car/Car;

    invoke-direct {p1, v0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;-><init>(Landroid/car/Car;)V

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mBmsController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;

    .line 187
    :cond_f
    monitor-exit p0

    goto :goto_5

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw p1

    .line 189
    :cond_10
    :goto_5
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mBmsController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/BmsController;

    return-object p1

    .line 190
    :cond_11
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IEpsController;

    if-ne p1, v0, :cond_14

    .line 191
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mEpsController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EpsController;

    if-nez p1, :cond_13

    .line 192
    monitor-enter p0

    .line 193
    :try_start_6
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mEpsController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EpsController;

    if-nez p1, :cond_12

    .line 194
    new-instance p1, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EpsController;

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mCarApiClient:Landroid/car/Car;

    invoke-direct {p1, v0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EpsController;-><init>(Landroid/car/Car;)V

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mEpsController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EpsController;

    .line 196
    :cond_12
    monitor-exit p0

    goto :goto_6

    :catchall_6
    move-exception p1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw p1

    .line 198
    :cond_13
    :goto_6
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mEpsController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EpsController;

    return-object p1

    .line 199
    :cond_14
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IEspController;

    if-ne p1, v0, :cond_17

    .line 200
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mEspController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EspController;

    if-nez p1, :cond_16

    .line 201
    monitor-enter p0

    .line 202
    :try_start_7
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mEspController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EspController;

    if-nez p1, :cond_15

    .line 203
    new-instance p1, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EspController;

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mCarApiClient:Landroid/car/Car;

    invoke-direct {p1, v0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EspController;-><init>(Landroid/car/Car;)V

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mEspController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EspController;

    .line 205
    :cond_15
    monitor-exit p0

    goto :goto_7

    :catchall_7
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw p1

    .line 207
    :cond_16
    :goto_7
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mEspController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/EspController;

    return-object p1

    .line 208
    :cond_17
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController;

    if-ne p1, v0, :cond_1a

    .line 209
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mIcmController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;

    if-nez p1, :cond_19

    .line 210
    monitor-enter p0

    .line 211
    :try_start_8
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mIcmController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;

    if-nez p1, :cond_18

    .line 212
    new-instance p1, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mCarApiClient:Landroid/car/Car;

    invoke-direct {p1, v0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;-><init>(Landroid/car/Car;)V

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mIcmController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;

    .line 214
    :cond_18
    monitor-exit p0

    goto :goto_8

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw p1

    .line 216
    :cond_19
    :goto_8
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mIcmController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IcmController;

    return-object p1

    .line 217
    :cond_1a
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController;

    if-ne p1, v0, :cond_1d

    .line 218
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mMcuController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;

    if-nez p1, :cond_1c

    .line 219
    monitor-enter p0

    .line 220
    :try_start_9
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mMcuController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;

    if-nez p1, :cond_1b

    .line 221
    new-instance p1, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mCarApiClient:Landroid/car/Car;

    invoke-direct {p1, v0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;-><init>(Landroid/car/Car;)V

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mMcuController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;

    .line 223
    :cond_1b
    monitor-exit p0

    goto :goto_9

    :catchall_9
    move-exception p1

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    throw p1

    .line 225
    :cond_1c
    :goto_9
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mMcuController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/McuController;

    return-object p1

    .line 226
    :cond_1d
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IRadioController;

    if-ne p1, v0, :cond_20

    .line 227
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mRadioController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController;

    if-nez p1, :cond_1f

    .line 228
    monitor-enter p0

    .line 229
    :try_start_a
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mRadioController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController;

    if-nez p1, :cond_1e

    .line 230
    new-instance p1, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController;

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mCarApiClient:Landroid/car/Car;

    invoke-direct {p1, v0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController;-><init>(Landroid/car/Car;)V

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mRadioController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController;

    .line 232
    :cond_1e
    monitor-exit p0

    goto :goto_a

    :catchall_a
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    throw p1

    .line 234
    :cond_1f
    :goto_a
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mRadioController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/RadioController;

    return-object p1

    .line 235
    :cond_20
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IScuController;

    if-ne p1, v0, :cond_23

    .line 236
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mScuController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;

    if-nez p1, :cond_22

    .line 237
    monitor-enter p0

    .line 238
    :try_start_b
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mScuController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;

    if-nez p1, :cond_21

    .line 239
    new-instance p1, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mCarApiClient:Landroid/car/Car;

    invoke-direct {p1, v0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;-><init>(Landroid/car/Car;)V

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mScuController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;

    .line 241
    :cond_21
    monitor-exit p0

    goto :goto_b

    :catchall_b
    move-exception p1

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    throw p1

    .line 243
    :cond_22
    :goto_b
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mScuController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/ScuController;

    return-object p1

    .line 244
    :cond_23
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ITpmsController;

    if-ne p1, v0, :cond_26

    .line 245
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mTpmsController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/TpmsController;

    if-nez p1, :cond_25

    .line 246
    monitor-enter p0

    .line 247
    :try_start_c
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mTpmsController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/TpmsController;

    if-nez p1, :cond_24

    .line 248
    new-instance p1, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/TpmsController;

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mCarApiClient:Landroid/car/Car;

    invoke-direct {p1, v0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/TpmsController;-><init>(Landroid/car/Car;)V

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mTpmsController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/TpmsController;

    .line 250
    :cond_24
    monitor-exit p0

    goto :goto_c

    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    throw p1

    .line 252
    :cond_25
    :goto_c
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mTpmsController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/TpmsController;

    return-object p1

    .line 253
    :cond_26
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IInputController;

    if-ne p1, v0, :cond_29

    .line 254
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mInputController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;

    if-nez p1, :cond_28

    .line 255
    monitor-enter p0

    .line 256
    :try_start_d
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mInputController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;

    if-nez p1, :cond_27

    .line 257
    new-instance p1, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mCarApiClient:Landroid/car/Car;

    invoke-direct {p1, v0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;-><init>(Landroid/car/Car;)V

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mInputController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;

    .line 259
    :cond_27
    monitor-exit p0

    goto :goto_d

    :catchall_d
    move-exception p1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    throw p1

    .line 261
    :cond_28
    :goto_d
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mInputController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/InputController;

    return-object p1

    .line 263
    :cond_29
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICanController;

    if-ne p1, v0, :cond_2c

    .line 264
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mCanController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CanController;

    if-nez p1, :cond_2b

    .line 265
    monitor-enter p0

    .line 266
    :try_start_e
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mCanController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CanController;

    if-nez p1, :cond_2a

    .line 267
    new-instance p1, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CanController;

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mCarApiClient:Landroid/car/Car;

    invoke-direct {p1, v0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CanController;-><init>(Landroid/car/Car;)V

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mCanController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CanController;

    .line 269
    :cond_2a
    monitor-exit p0

    goto :goto_e

    :catchall_e
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    throw p1

    .line 271
    :cond_2b
    :goto_e
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mCanController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CanController;

    return-object p1

    .line 273
    :cond_2c
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIpuController;

    if-ne p1, v0, :cond_2f

    .line 274
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mIpuController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IpuController;

    if-nez p1, :cond_2e

    .line 275
    monitor-enter p0

    .line 276
    :try_start_f
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mIpuController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IpuController;

    if-nez p1, :cond_2d

    .line 277
    new-instance p1, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IpuController;

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mCarApiClient:Landroid/car/Car;

    invoke-direct {p1, v0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IpuController;-><init>(Landroid/car/Car;)V

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mIpuController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IpuController;

    .line 279
    :cond_2d
    monitor-exit p0

    goto :goto_f

    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    throw p1

    .line 281
    :cond_2e
    :goto_f
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mIpuController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/IpuController;

    return-object p1

    .line 282
    :cond_2f
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICcsController;

    if-ne p1, v0, :cond_32

    .line 283
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mCcsController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CcsController;

    if-nez p1, :cond_31

    .line 284
    monitor-enter p0

    .line 285
    :try_start_10
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mCcsController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CcsController;

    if-nez p1, :cond_30

    .line 286
    new-instance p1, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CcsController;

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mCarApiClient:Landroid/car/Car;

    invoke-direct {p1, v0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CcsController;-><init>(Landroid/car/Car;)V

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mCcsController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CcsController;

    .line 288
    :cond_30
    monitor-exit p0

    goto :goto_10

    :catchall_10
    move-exception p1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    throw p1

    .line 290
    :cond_31
    :goto_10
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mCcsController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CcsController;

    return-object p1

    .line 291
    :cond_32
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IDcdcController;

    if-ne p1, v0, :cond_35

    .line 292
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mDcdcController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/DcdcController;

    if-nez p1, :cond_34

    .line 293
    monitor-enter p0

    .line 294
    :try_start_11
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mDcdcController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/DcdcController;

    if-nez p1, :cond_33

    .line 295
    new-instance p1, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/DcdcController;

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mCarApiClient:Landroid/car/Car;

    invoke-direct {p1, v0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/DcdcController;-><init>(Landroid/car/Car;)V

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mDcdcController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/DcdcController;

    .line 297
    :cond_33
    monitor-exit p0

    goto :goto_11

    :catchall_11
    move-exception p1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    throw p1

    .line 299
    :cond_34
    :goto_11
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mDcdcController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/DcdcController;

    return-object p1

    .line 300
    :cond_35
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICiuController;

    if-ne p1, v0, :cond_38

    .line 301
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mCiuController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CiuController;

    if-nez p1, :cond_37

    .line 302
    monitor-enter p0

    .line 303
    :try_start_12
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mCiuController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CiuController;

    if-nez p1, :cond_36

    .line 304
    new-instance p1, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CiuController;

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mCarApiClient:Landroid/car/Car;

    invoke-direct {p1, v0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CiuController;-><init>(Landroid/car/Car;)V

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mCiuController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CiuController;

    .line 306
    :cond_36
    monitor-exit p0

    goto :goto_12

    :catchall_12
    move-exception p1

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    throw p1

    .line 308
    :cond_37
    :goto_12
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mCiuController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/CiuController;

    return-object p1

    .line 309
    :cond_38
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IXpuController;

    if-ne p1, v0, :cond_3b

    .line 310
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mXpuController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/XpuController;

    if-nez p1, :cond_3a

    .line 311
    monitor-enter p0

    .line 312
    :try_start_13
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mXpuController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/XpuController;

    if-nez p1, :cond_39

    .line 313
    new-instance p1, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/XpuController;

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mCarApiClient:Landroid/car/Car;

    invoke-direct {p1, v0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/XpuController;-><init>(Landroid/car/Car;)V

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mXpuController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/XpuController;

    .line 315
    :cond_39
    monitor-exit p0

    goto :goto_13

    :catchall_13
    move-exception p1

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    throw p1

    .line 317
    :cond_3a
    :goto_13
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mXpuController:Lcom/xiaopeng/lib/framework/carcontrollermodule/controller/XpuController;

    return-object p1

    :cond_3b
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCarApiClient()Landroid/car/Car;
    .locals 2

    .line 355
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mIsInited:Z

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->mCarApiClient:Landroid/car/Car;

    return-object v0

    .line 356
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "CarServices is not connected"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

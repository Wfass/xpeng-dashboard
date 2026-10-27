.class public Lcom/android/car/SystemStateControllerService;
.super Ljava/lang/Object;
.source "SystemStateControllerService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;
.implements Lcom/android/car/CarPowerManagementService$PowerServiceEventListener;
.implements Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandler;


# instance fields
.field private final mCarAudioService:Lcom/android/car/CarAudioService;

.field private final mCarPowerManagementService:Lcom/android/car/CarPowerManagementService;

.field private final mICarImpl:Lcom/android/car/ICarImpl;

.field private final mLockWhenMuting:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/car/CarPowerManagementService;Lcom/android/car/CarAudioService;Lcom/android/car/ICarImpl;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "carPowerManagementService"    # Lcom/android/car/CarPowerManagementService;
    .param p3, "carAudioService"    # Lcom/android/car/CarAudioService;
    .param p4, "carImpl"    # Lcom/android/car/ICarImpl;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/android/car/SystemStateControllerService;->mCarPowerManagementService:Lcom/android/car/CarPowerManagementService;

    .line 38
    iput-object p3, p0, Lcom/android/car/SystemStateControllerService;->mCarAudioService:Lcom/android/car/CarAudioService;

    .line 39
    iput-object p4, p0, Lcom/android/car/SystemStateControllerService;->mICarImpl:Lcom/android/car/ICarImpl;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 41
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/car/SystemStateControllerService;->mLockWhenMuting:Z

    .line 42
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 87
    return-void
.end method

.method public getWakeupTime()I
    .locals 1

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public init()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/car/SystemStateControllerService;->mCarPowerManagementService:Lcom/android/car/CarPowerManagementService;

    invoke-virtual {v0, p0}, Lcom/android/car/CarPowerManagementService;->registerPowerEventListener(Lcom/android/car/CarPowerManagementService$PowerServiceEventListener;)V

    .line 78
    iget-object v0, p0, Lcom/android/car/SystemStateControllerService;->mCarPowerManagementService:Lcom/android/car/CarPowerManagementService;

    invoke-virtual {v0, p0}, Lcom/android/car/CarPowerManagementService;->registerPowerEventProcessingHandler(Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandler;)V

    .line 79
    return-void
.end method

.method public onPowerOn(Z)V
    .locals 0
    .param p1, "displayOn"    # Z

    .line 53
    return-void
.end method

.method public onPrepareShutdown(Z)J
    .locals 2
    .param p1, "shuttingDown"    # Z

    .line 47
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public onShutdown()V
    .locals 0

    .line 63
    return-void
.end method

.method public onSleepEntry()V
    .locals 0

    .line 68
    return-void
.end method

.method public onSleepExit()V
    .locals 0

    .line 73
    return-void
.end method

.method public release()V
    .locals 0

    .line 83
    return-void
.end method

.class public Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;
.super Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc$Stub;
.source "CarAIVehicleService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# static fields
.field private static final TAG:Ljava/lang/String; = "CarAIVehicleService"

.field public static final TIME_AC_CONTROL_DELAY:J = 0x1f4L


# instance fields
.field private final mCarPropertyService:Lcom/android/car/CarPropertyService;

.field private mIsHvacMachineStateSwitch:Z

.field private final mWorkHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/car/CarPropertyService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "carPropertyService"    # Lcom/android/car/CarPropertyService;

    .line 42
    invoke-direct {p0}, Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc$Stub;-><init>()V

    .line 43
    iput-object p2, p0, Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;->mWorkHandler:Landroid/os/Handler;

    .line 44
    iput-object p3, p0, Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    .line 45
    return-void
.end method

.method public static synthetic lambda$setFloatPropertyByACMachine$0(Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;IF)V
    .locals 2
    .param p1, "prop"    # I
    .param p2, "value"    # F

    .line 96
    iget-object v0, p0, Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/car/CarPropertyService;->setFloatProperty(IIF)V

    return-void
.end method

.method public static synthetic lambda$setHvacPowerModeByACMachine$2(Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;II)V
    .locals 0
    .param p1, "value"    # I
    .param p2, "memoryReq"    # I

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;->setHvacPowerMode(II)V

    return-void
.end method

.method public static synthetic lambda$setIntPropertyByACMachine$1(Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;II)V
    .locals 2
    .param p1, "prop"    # I
    .param p2, "value"    # I

    .line 118
    iget-object v0, p0, Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/car/CarPropertyService;->setIntProperty(III)V

    return-void
.end method

.method private setHvacPowerMode(II)V
    .locals 4
    .param p1, "enable"    # I
    .param p2, "memoryReq"    # I

    .line 142
    const-string v0, "config_car_hvac_protocol"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 144
    add-int/lit8 p1, p1, 0x1

    .line 145
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 146
    .local v0, "data":[B
    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 147
    const/4 v1, -0x1

    aput-byte v1, v0, v2

    .line 148
    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 149
    const/4 v1, 0x3

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 150
    iget-object v1, p0, Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const v2, 0x21701a6d

    invoke-virtual {v1, v2, v0}, Lcom/android/car/CarPropertyService;->setByteVectorProperty(I[B)V

    .line 151
    .end local v0    # "data":[B
    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const v2, 0x21401a2a

    invoke-virtual {v0, v2, v1, p1}, Lcom/android/car/CarPropertyService;->setIntProperty(III)V

    .line 155
    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 74
    const-string v0, "*CarAIVehicleService*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public init()V
    .locals 3

    .line 55
    const-string v0, "config_hvac_machine_state_switch"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;->mIsHvacMachineStateSwitch:Z

    .line 61
    const-string v0, "CarAIVehicleService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init: mIsHvacMachineStateSwitch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;->mIsHvacMachineStateSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method public release()V
    .locals 0

    .line 70
    return-void
.end method

.method public setFloatPropertyByACMachine(IF)V
    .locals 7
    .param p1, "prop"    # I
    .param p2, "value"    # F

    .line 80
    iget-object v0, p0, Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    if-nez v0, :cond_0

    .line 81
    const-string v0, "CarAIVehicleService"

    const-string v1, "setFloatPropertyByACMachine: mCarHvacManager is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void

    .line 84
    :cond_0
    iget-boolean v0, p0, Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;->mIsHvacMachineStateSwitch:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/car/CarPropertyService;->setFloatProperty(IIF)V

    .line 86
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const v2, 0x21401a5e

    invoke-virtual {v0, v2, v1}, Lcom/android/car/CarPropertyService;->getIntProperty(II)I

    move-result v0

    .line 90
    .local v0, "machineState":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 91
    iget-object v2, p0, Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    invoke-virtual {v2, p1, v1, p2}, Lcom/android/car/CarPropertyService;->setFloatProperty(IIF)V

    .line 92
    return-void

    .line 94
    :cond_2
    const-string v4, "CarAIVehicleService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setFloatPropertyByACMachine: prop:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleProperty;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " machineState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v4, p0, Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    invoke-virtual {v4, v2, v1, v3}, Lcom/android/car/CarPropertyService;->setIntProperty(III)V

    .line 96
    iget-object v1, p0, Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;->mWorkHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/car/xpeng/ai/vehicle/-$$Lambda$CarAIVehicleService$mqKUXbaaCZ-b039Tzy3STOFG3wU;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/car/xpeng/ai/vehicle/-$$Lambda$CarAIVehicleService$mqKUXbaaCZ-b039Tzy3STOFG3wU;-><init>(Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;IF)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 98
    return-void
.end method

.method public setHvacPowerModeByACMachine(II)V
    .locals 7
    .param p1, "value"    # I
    .param p2, "memoryReq"    # I

    .line 123
    iget-object v0, p0, Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    if-nez v0, :cond_0

    .line 124
    const-string v0, "CarAIVehicleService"

    const-string v1, "setIntPropertyByACMachine: mCarHvacManager is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void

    .line 127
    :cond_0
    iget-boolean v0, p0, Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;->mIsHvacMachineStateSwitch:Z

    if-nez v0, :cond_1

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;->setHvacPowerMode(II)V

    .line 129
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const/4 v1, 0x0

    const v2, 0x21401a5e

    invoke-virtual {v0, v2, v1}, Lcom/android/car/CarPropertyService;->getIntProperty(II)I

    move-result v0

    .line 132
    .local v0, "machineState":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;->setHvacPowerMode(II)V

    .line 134
    return-void

    .line 136
    :cond_2
    const-string v4, "CarAIVehicleService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setHvacPowerMode  value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "memoryReq = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " machineState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v4, p0, Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    invoke-virtual {v4, v2, v1, v3}, Lcom/android/car/CarPropertyService;->setIntProperty(III)V

    .line 138
    iget-object v1, p0, Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;->mWorkHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/car/xpeng/ai/vehicle/-$$Lambda$CarAIVehicleService$KWAzCQ-fLEVhN3WLC7C7xv_ovgI;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/car/xpeng/ai/vehicle/-$$Lambda$CarAIVehicleService$KWAzCQ-fLEVhN3WLC7C7xv_ovgI;-><init>(Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;II)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    return-void
.end method

.method public setIntPropertyByACMachine(II)V
    .locals 7
    .param p1, "prop"    # I
    .param p2, "value"    # I

    .line 102
    iget-object v0, p0, Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    if-nez v0, :cond_0

    .line 103
    const-string v0, "CarAIVehicleService"

    const-string v1, "setIntPropertyByACMachine: mCarHvacManager is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void

    .line 106
    :cond_0
    iget-boolean v0, p0, Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;->mIsHvacMachineStateSwitch:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/car/CarPropertyService;->setIntProperty(III)V

    .line 108
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const v2, 0x21401a5e

    invoke-virtual {v0, v2, v1}, Lcom/android/car/CarPropertyService;->getIntProperty(II)I

    move-result v0

    .line 112
    .local v0, "machineState":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 113
    iget-object v2, p0, Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    invoke-virtual {v2, p1, v1, p2}, Lcom/android/car/CarPropertyService;->setIntProperty(III)V

    .line 114
    return-void

    .line 116
    :cond_2
    const-string v4, "CarAIVehicleService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setIntPropertyByACMachine: prop:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleProperty;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " machineState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v4, p0, Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    invoke-virtual {v4, v2, v1, v3}, Lcom/android/car/CarPropertyService;->setIntProperty(III)V

    .line 118
    iget-object v1, p0, Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;->mWorkHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/car/xpeng/ai/vehicle/-$$Lambda$CarAIVehicleService$fv_hfNdnsI6FDzuOGmpeFHFft5I;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/car/xpeng/ai/vehicle/-$$Lambda$CarAIVehicleService$fv_hfNdnsI6FDzuOGmpeFHFft5I;-><init>(Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;II)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 119
    return-void
.end method

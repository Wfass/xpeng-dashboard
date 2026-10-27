.class public final Landroid/car/hardware/radio/CarRadioManager;
.super Landroid/car/hardware/CarEcuManager;
.source "CarRadioManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/radio/CarRadioManager$CarBroadcastRadioCallback;,
        Landroid/car/hardware/radio/CarRadioManager$CarRadioEventCallback;,
        Landroid/car/hardware/radio/CarRadioManager$PropertyId;
    }
.end annotation


# static fields
.field public static final BAND_AM:I = 0x0

.field public static final BAND_FM:I = 0x1

.field private static final DBG:Z = false

.field private static final DISABLE_TUNER:Ljava/lang/String; = "fm_enable=false"

.field private static final ENABLE_TUNER:Ljava/lang/String; = "fm_enable=true"

.field public static final ID_RADIO_RADIO_STATUS:I = 0x70001408

.field private static final MODULE_INDEX:I = 0x0

.field public static final PRIMARY_CHANNEL:I = 0x100

.field private static final TAG:Ljava/lang/String; = "CarRadioManager"


# instance fields
.field private mAmFmRegionConfig:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$BandDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mCallbacks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mCarAudioManager:Landroid/car/media/CarAudioManager;

.field private final mHandler:Landroid/os/Handler;

.field private mInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

.field private volatile mIsTunerPowered:Z

.field private mModule:Landroid/hardware/radio/RadioManager$ModuleProperties;

.field private mProgramList:Landroid/hardware/radio/ProgramList;

.field private final mProgramListCompleteListener:Landroid/hardware/radio/ProgramList$OnCompleteListener;

.field private final mRadioManager:Landroid/hardware/radio/RadioManager;

.field private final mRadioPropertyIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRadioTuner:Landroid/hardware/radio/RadioTuner;


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    const/4 p4, 0x0

    const-string v0, "CarRadioManager"

    .line 193
    invoke-direct {p0, p1, p2, p4, v0}, Landroid/car/hardware/CarEcuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;ZLjava/lang/String;)V

    .line 61
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Landroid/car/hardware/radio/CarRadioManager;->mCallbacks:Landroid/util/ArraySet;

    .line 66
    iput-boolean p4, p0, Landroid/car/hardware/radio/CarRadioManager;->mIsTunerPowered:Z

    .line 88
    new-instance p2, Landroid/car/hardware/radio/-$$Lambda$CarRadioManager$pfX-HV9FhQSnwvFiIMcuw2Yj2rc;

    invoke-direct {p2, p0}, Landroid/car/hardware/radio/-$$Lambda$CarRadioManager$pfX-HV9FhQSnwvFiIMcuw2Yj2rc;-><init>(Landroid/car/hardware/radio/CarRadioManager;)V

    iput-object p2, p0, Landroid/car/hardware/radio/CarRadioManager;->mProgramListCompleteListener:Landroid/hardware/radio/ProgramList$OnCompleteListener;

    .line 107
    new-instance p2, Landroid/util/ArraySet;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x70001408

    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p4

    .line 107
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-direct {p2, p4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Landroid/car/hardware/radio/CarRadioManager;->mRadioPropertyIds:Landroid/util/ArraySet;

    .line 194
    new-instance p2, Landroid/car/media/CarAudioManager;

    invoke-direct {p2, p1, p3}, Landroid/car/media/CarAudioManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    iput-object p2, p0, Landroid/car/hardware/radio/CarRadioManager;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    const-string p1, "audio"

    .line 195
    invoke-virtual {p5, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Landroid/car/hardware/radio/CarRadioManager;->mAudioManager:Landroid/media/AudioManager;

    const-string p1, "broadcastradio"

    .line 196
    invoke-virtual {p5, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioManager;

    iput-object p1, p0, Landroid/car/hardware/radio/CarRadioManager;->mRadioManager:Landroid/hardware/radio/RadioManager;

    .line 197
    iput-object p6, p0, Landroid/car/hardware/radio/CarRadioManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/car/hardware/radio/CarRadioManager;Landroid/hardware/radio/RadioManager$ProgramInfo;ZZ)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/car/hardware/radio/CarRadioManager;->handleOnProgramInfoChangedEvent(Landroid/hardware/radio/RadioManager$ProgramInfo;ZZ)V

    return-void
.end method

.method static synthetic access$100(Landroid/car/hardware/radio/CarRadioManager;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Landroid/car/hardware/radio/CarRadioManager;->handleOnErrorEvent(I)V

    return-void
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xp_radio"

    return-object v0
.end method

.method private handleOnErrorEvent(I)V
    .locals 3

    .line 157
    monitor-enter p0

    .line 158
    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/car/hardware/radio/CarRadioManager;->mCallbacks:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 159
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;

    const v2, 0x70001408

    .line 161
    invoke-interface {v1, v2, p1}, Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;->onErrorEvent(II)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 159
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private handleOnProgramInfoChangedEvent(Landroid/hardware/radio/RadioManager$ProgramInfo;ZZ)V
    .locals 3

    const-string v0, "CarRadioManager"

    const/4 v1, 0x3

    .line 166
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CarRadioManager"

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOnProgramInfoChangedEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    monitor-enter p0

    .line 171
    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/car/hardware/radio/CarRadioManager;->mCallbacks:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    if-eqz p3, :cond_1

    .line 173
    iput-object p1, p0, Landroid/car/hardware/radio/CarRadioManager;->mInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 175
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    new-instance p3, Landroid/car/hardware/radio/RadioInfo;

    invoke-direct {p3, p1, p2}, Landroid/car/hardware/radio/RadioInfo;-><init>(Landroid/hardware/radio/RadioManager$ProgramInfo;Z)V

    .line 177
    new-instance p1, Landroid/car/hardware/CarPropertyValue;

    const p2, 0x70001408

    const/high16 v1, 0x1000000

    invoke-virtual {p3}, Landroid/car/hardware/radio/RadioInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, p2, v1, v2}, Landroid/car/hardware/CarPropertyValue;-><init>(IILjava/lang/Object;)V

    const-string p2, "CarRadioManager"

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOnProgramInfoChangedEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/car/hardware/radio/RadioInfo;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;

    .line 180
    invoke-interface {p3, p1}, Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;->onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 175
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private initModules()V
    .locals 4

    const-string v0, "CarRadioManager"

    const/4 v1, 0x3

    .line 281
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "initModules()"

    .line 282
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_0
    iget-object v1, p0, Landroid/car/hardware/radio/CarRadioManager;->mModule:Landroid/hardware/radio/RadioManager$ModuleProperties;

    if-eqz v1, :cond_1

    const-string v1, "Tuner Module gotten, just return"

    .line 285
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 289
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 290
    iget-object v2, p0, Landroid/car/hardware/radio/CarRadioManager;->mRadioManager:Landroid/hardware/radio/RadioManager;

    invoke-virtual {v2, v1}, Landroid/hardware/radio/RadioManager;->listModules(Ljava/util/List;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t get radio module list: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 296
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    const-string v1, "No radio modules on this device"

    .line 297
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 301
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioManager$ModuleProperties;

    iput-object v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mModule:Landroid/hardware/radio/RadioManager$ModuleProperties;

    .line 302
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getBands()[Landroid/hardware/radio/RadioManager$BandDescriptor;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mAmFmRegionConfig:Ljava/util/List;

    return-void
.end method

.method public static isZonedProperty(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$pfX-HV9FhQSnwvFiIMcuw2Yj2rc(Landroid/car/hardware/radio/CarRadioManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/car/hardware/radio/CarRadioManager;->onProgramListUpdated()V

    return-void
.end method

.method private onProgramListUpdated()V
    .locals 2

    const-string v0, "CarRadioManager"

    const/4 v1, 0x3

    .line 594
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "onProgramListUpdated"

    .line 595
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_0
    iget-object v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/car/hardware/radio/-$$Lambda$CarRadioManager$iUTMAYbp0myeT_vpnp3DCtoIIgU;

    invoke-direct {v1, p0}, Landroid/car/hardware/radio/-$$Lambda$CarRadioManager$iUTMAYbp0myeT_vpnp3DCtoIIgU;-><init>(Landroid/car/hardware/radio/CarRadioManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getAmFmRegionConfig()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$BandDescriptor;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mAmFmRegionConfig:Ljava/util/List;

    return-object v0
.end method

.method public getAudioDspStatus()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 561
    iget-object v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAudioDspStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioMode()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 545
    iget-object v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAudioMode()[I

    move-result-object v0

    return-object v0
.end method

.method public getProgramList()Landroid/hardware/radio/ProgramList;
    .locals 1

    .line 412
    iget-object v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mProgramList:Landroid/hardware/radio/ProgramList;

    return-object v0
.end method

.method protected getPropertyIds()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mRadioPropertyIds:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getRadioFrequency()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 529
    iget-object v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getRadioFrequency()[I

    move-result-object v0

    return-object v0
.end method

.method public getRadioStatus()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 553
    iget-object v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getRadioStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRadioVolumeAutoFocus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 490
    iget-object v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getRadioVolumeAutoFocus()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onProgramListUpdated$2$CarRadioManager()V
    .locals 4

    .line 598
    iget-object v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mProgramList:Landroid/hardware/radio/ProgramList;

    invoke-virtual {v0}, Landroid/hardware/radio/ProgramList;->toList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioManager$ProgramInfo;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 599
    invoke-direct {p0, v1, v2, v3}, Landroid/car/hardware/radio/CarRadioManager;->handleOnProgramInfoChangedEvent(Landroid/hardware/radio/RadioManager$ProgramInfo;ZZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$setPowerOffTunner$1$CarRadioManager()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 359
    invoke-direct {p0, v0, v1, v2}, Landroid/car/hardware/radio/CarRadioManager;->handleOnProgramInfoChangedEvent(Landroid/hardware/radio/RadioManager$ProgramInfo;ZZ)V

    return-void
.end method

.method public synthetic lambda$setPowerOnTunner$0$CarRadioManager()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 333
    invoke-direct {p0, v0, v1, v1}, Landroid/car/hardware/radio/CarRadioManager;->handleOnProgramInfoChangedEvent(Landroid/hardware/radio/RadioManager$ProgramInfo;ZZ)V

    return-void
.end method

.method public onCarDisconnected()V
    .locals 1

    .line 267
    invoke-super {p0}, Landroid/car/hardware/CarEcuManager;->onCarDisconnected()V

    .line 268
    iget-object v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    invoke-virtual {v0}, Landroid/car/media/CarAudioManager;->onCarDisconnected()V

    return-void
.end method

.method public onConnected()V
    .locals 3

    .line 202
    invoke-super {p0}, Landroid/car/hardware/CarEcuManager;->onConnected()V

    .line 204
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    invoke-virtual {p0}, Landroid/car/hardware/radio/CarRadioManager;->getICarOrThrow()Landroid/car/ICar;

    move-result-object v1

    const-string v2, "audio"

    invoke-interface {v1, v2}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/car/media/CarAudioManager;->updateIBinder(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 206
    invoke-virtual {p0, v0}, Landroid/car/hardware/radio/CarRadioManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized registerCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "CarRadioManager"

    const/4 v1, 0x3

    .line 229
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CarRadioManager"

    const-string/jumbo v1, "registerCallback"

    .line 230
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    iget-object v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    .line 253
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/car/hardware/radio/CarRadioManager;->registerCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public requestTunerMute(Z)Z
    .locals 3

    const-string v0, "CarRadioManager"

    const/4 v1, 0x3

    .line 369
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestTunerMute("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") with TunerPowered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/car/hardware/radio/CarRadioManager;->mIsTunerPowered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    iget-boolean v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mIsTunerPowered:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    .line 374
    iget-object p1, p0, Landroid/car/hardware/radio/CarRadioManager;->mAudioManager:Landroid/media/AudioManager;

    const-string v0, "fm_enable=true"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 376
    :cond_1
    iget-object p1, p0, Landroid/car/hardware/radio/CarRadioManager;->mAudioManager:Landroid/media/AudioManager;

    const-string v0, "fm_enable=false"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public setAudioBalanceFader(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 581
    iget-object v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/car/media/CarAudioManager;->setBalanceTowardRight(F)V

    .line 582
    iget-object p1, p0, Landroid/car/hardware/radio/CarRadioManager;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/car/media/CarAudioManager;->setFadeTowardFront(F)V

    return-void
.end method

.method public setAudioGEQParams(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 573
    iget-object v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAudioGEQParams(IIII)V

    return-void
.end method

.method public setAudioMode(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 537
    iget-object v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAudioMode(II)V

    return-void
.end method

.method public setAudioParameters()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 590
    iget-object v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAudioParameters()V

    return-void
.end method

.method public setCarExhibitionModeVol(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 507
    iget-object v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setCarExhibitionModeVol(I)V

    return-void
.end method

.method public setFmVolume(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 498
    iget-object v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setFmVolume(II)V

    return-void
.end method

.method public setPowerOffTunner()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "CarRadioManager"

    const/4 v1, 0x3

    .line 341
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPowerOffTunner() with TunerPowered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/car/hardware/radio/CarRadioManager;->mIsTunerPowered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_0
    iget-boolean v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mIsTunerPowered:Z

    if-eqz v0, :cond_3

    .line 346
    iget-object v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mProgramList:Landroid/hardware/radio/ProgramList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 347
    invoke-virtual {v0}, Landroid/hardware/radio/ProgramList;->close()V

    .line 348
    iput-object v1, p0, Landroid/car/hardware/radio/CarRadioManager;->mProgramList:Landroid/hardware/radio/ProgramList;

    .line 351
    :cond_1
    iget-object v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mRadioTuner:Landroid/hardware/radio/RadioTuner;

    if-eqz v0, :cond_2

    .line 352
    invoke-virtual {v0}, Landroid/hardware/radio/RadioTuner;->close()V

    .line 353
    iput-object v1, p0, Landroid/car/hardware/radio/CarRadioManager;->mRadioTuner:Landroid/hardware/radio/RadioTuner;

    .line 357
    :cond_2
    iget-object v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "fm_enable=false"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 358
    iput-boolean v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mIsTunerPowered:Z

    .line 359
    iget-object v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/car/hardware/radio/-$$Lambda$CarRadioManager$rJB1H5L7kveLoM9G-WEeshDrOTw;

    invoke-direct {v1, p0}, Landroid/car/hardware/radio/-$$Lambda$CarRadioManager$rJB1H5L7kveLoM9G-WEeshDrOTw;-><init>(Landroid/car/hardware/radio/CarRadioManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public setPowerOnTunner()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "CarRadioManager"

    const/4 v1, 0x3

    .line 312
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPowerOnTunner() with TunerPowered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/car/hardware/radio/CarRadioManager;->mIsTunerPowered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    iget-boolean v1, p0, Landroid/car/hardware/radio/CarRadioManager;->mIsTunerPowered:Z

    if-eqz v1, :cond_1

    const-string v1, "Radio has been powered"

    .line 317
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 320
    :cond_1
    invoke-direct {p0}, Landroid/car/hardware/radio/CarRadioManager;->initModules()V

    .line 321
    iget-object v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mModule:Landroid/hardware/radio/RadioManager$ModuleProperties;

    if-nez v0, :cond_2

    return-void

    .line 323
    :cond_2
    new-instance v5, Landroid/car/hardware/radio/CarRadioManager$CarBroadcastRadioCallback;

    invoke-direct {v5, p0, p0}, Landroid/car/hardware/radio/CarRadioManager$CarBroadcastRadioCallback;-><init>(Landroid/car/hardware/radio/CarRadioManager;Landroid/car/hardware/radio/CarRadioManager;)V

    .line 325
    iget-object v1, p0, Landroid/car/hardware/radio/CarRadioManager;->mRadioManager:Landroid/hardware/radio/RadioManager;

    iget-object v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mModule:Landroid/hardware/radio/RadioManager$ModuleProperties;

    .line 326
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getId()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v6, p0, Landroid/car/hardware/radio/CarRadioManager;->mHandler:Landroid/os/Handler;

    .line 325
    invoke-virtual/range {v1 .. v6}, Landroid/hardware/radio/RadioManager;->openTuner(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/RadioTuner$Callback;Landroid/os/Handler;)Landroid/hardware/radio/RadioTuner;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mRadioTuner:Landroid/hardware/radio/RadioTuner;

    if-nez v0, :cond_3

    return-void

    .line 331
    :cond_3
    iget-object v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "fm_enable=true"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 332
    iput-boolean v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mIsTunerPowered:Z

    .line 333
    iget-object v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/car/hardware/radio/-$$Lambda$CarRadioManager$1V439FgGi59-5VvDqRv5VsaMfis;

    invoke-direct {v1, p0}, Landroid/car/hardware/radio/-$$Lambda$CarRadioManager$1V439FgGi59-5VvDqRv5VsaMfis;-><init>(Landroid/car/hardware/radio/CarRadioManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setRadioBand(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 451
    iget-object v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setRadioBand(I)V

    return-void
.end method

.method public setRadioFrequency(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "CarRadioManager"

    const/4 v1, 0x3

    .line 515
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRadioFrequency(band="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", frequency="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-ltz p2, :cond_1

    .line 521
    iget-object v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mRadioTuner:Landroid/hardware/radio/RadioTuner;

    invoke-static {p1, p2}, Landroid/hardware/radio/ProgramSelector;->createAmFmSelector(II)Landroid/hardware/radio/ProgramSelector;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner;->tune(Landroid/hardware/radio/ProgramSelector;)V

    return-void

    .line 519
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal frequency value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRadioSearchStationDown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "CarRadioManager"

    const/4 v1, 0x3

    .line 400
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "setRadioSearchStationDown()"

    .line 401
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_0
    iget-boolean v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mIsTunerPowered:Z

    if-eqz v0, :cond_1

    .line 404
    iget-object v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mRadioTuner:Landroid/hardware/radio/RadioTuner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/hardware/radio/RadioTuner;->scan(IZ)I

    :cond_1
    return-void
.end method

.method public setRadioSearchStationUp()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "CarRadioManager"

    const/4 v1, 0x3

    .line 387
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRadioSearchStationUp() with TunerPowered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/car/hardware/radio/CarRadioManager;->mIsTunerPowered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_0
    iget-boolean v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mIsTunerPowered:Z

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mRadioTuner:Landroid/hardware/radio/RadioTuner;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/RadioTuner;->scan(IZ)I

    :cond_1
    return-void
.end method

.method public setRadioVolumeAutoFocus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 481
    iget-object v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setRadioVolumeAutoFocus(I)V

    return-void
.end method

.method public setRadioVolumePercent(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "CarRadioManager"

    const/4 v1, 0x3

    .line 461
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    const-string v3, ")"

    if-eqz v2, :cond_0

    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRadioVolumePercent(channel="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", vol="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v2, 0x100

    if-ne v2, p1, :cond_2

    .line 465
    iget-object p1, p0, Landroid/car/hardware/radio/CarRadioManager;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/car/media/CarAudioManager;->getVolumeGroupIdForUsage(I)I

    move-result p1

    .line 466
    iget-object v2, p0, Landroid/car/hardware/radio/CarRadioManager;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    invoke-virtual {v2, p1}, Landroid/car/media/CarAudioManager;->getGroupMaxVolume(I)I

    move-result v2

    mul-int/2addr p2, v2

    .line 467
    div-int/lit8 p2, p2, 0x64

    .line 468
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRadioVolumePercent(maxVol="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", finalVal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_1
    iget-object v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/car/media/CarAudioManager;->setGroupVolume(III)V

    :cond_2
    return-void
.end method

.method public setStartFullBandScan()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "CarRadioManager"

    const/4 v1, 0x3

    .line 420
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "setStartFullBandScan()"

    .line 421
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_0
    iget-boolean v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mIsTunerPowered:Z

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mRadioTuner:Landroid/hardware/radio/RadioTuner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/radio/RadioTuner;->getDynamicProgramList(Landroid/hardware/radio/ProgramList$Filter;)Landroid/hardware/radio/ProgramList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mProgramList:Landroid/hardware/radio/ProgramList;

    .line 426
    iget-object v1, p0, Landroid/car/hardware/radio/CarRadioManager;->mProgramListCompleteListener:Landroid/hardware/radio/ProgramList$OnCompleteListener;

    invoke-virtual {v0, v1}, Landroid/hardware/radio/ProgramList;->addOnCompleteListener(Landroid/hardware/radio/ProgramList$OnCompleteListener;)V

    :cond_1
    return-void
.end method

.method public setStopFullBandScan()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "CarRadioManager"

    const/4 v1, 0x3

    .line 435
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "setStopFullBandScan()"

    .line 436
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_0
    iget-object v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mProgramList:Landroid/hardware/radio/ProgramList;

    if-eqz v0, :cond_1

    .line 439
    invoke-virtual {v0}, Landroid/hardware/radio/ProgramList;->close()V

    const/4 v0, 0x0

    .line 440
    iput-object v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mProgramList:Landroid/hardware/radio/ProgramList;

    :cond_1
    return-void
.end method

.method public declared-synchronized unregisterCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "CarRadioManager"

    const/4 v1, 0x3

    .line 244
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CarRadioManager"

    const-string/jumbo v1, "unregisterCallback"

    .line 245
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    iget-object v0, p0, Landroid/car/hardware/radio/CarRadioManager;->mCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    .line 259
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/car/hardware/radio/CarRadioManager;->unregisterCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

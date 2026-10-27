.class public Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "PuremicTuningInf"

.field private static volatile instance:Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;


# instance fields
.field private audioTempoProcess:Lcom/loostone/libtuning/inf/extern/IAudioTempoProcess;

.field private final dongleListener:Lcom/loostone/libtuning/inf/extern/IDongleListener;

.field private environmentalSoundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/loostone/libtuning/data/config/vendor/EnvironmentalSoundItem;",
            ">;"
        }
    .end annotation
.end field

.field private localDongleListener:Lcom/loostone/libtuning/channel/byd/old/IDongleListener;

.field private musicFFTControl:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;

.field private final realInstance:Lcom/loostone/libtuning/PuremicTuning;

.field private volumeAdjustment:Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;->volumeAdjustment:Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    .line 166
    new-instance v0, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning$1;

    invoke-direct {v0, p0}, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning$1;-><init>(Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;)V

    iput-object v0, p0, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;->dongleListener:Lcom/loostone/libtuning/inf/extern/IDongleListener;

    .line 167
    sget-object v0, Lcom/loostone/libtuning/PuremicTuning;->Companion:Lcom/loostone/libtuning/PuremicTuning$Companion;

    invoke-virtual {v0}, Lcom/loostone/libtuning/PuremicTuning$Companion;->getInstance()Lcom/loostone/libtuning/PuremicTuning;

    move-result-object v0

    iput-object v0, p0, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;->realInstance:Lcom/loostone/libtuning/PuremicTuning;

    return-void
.end method

.method public static synthetic access$000(Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;)Lcom/loostone/libtuning/channel/byd/old/IDongleListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;->localDongleListener:Lcom/loostone/libtuning/channel/byd/old/IDongleListener;

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;
    .locals 2

    const-class v0, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;->instance:Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;

    invoke-direct {v1}, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;-><init>()V

    sput-object v1, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;->instance:Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;

    .line 5
    :cond_0
    sget-object v1, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;->instance:Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 0
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isLoostoneMicPhone(Landroid/content/Context;)Z
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO00o;

    const-string v1, "context"

    .line 2
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "usb"

    .line 37
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4

    check-cast p0, Landroid/hardware/usb/UsbManager;

    .line 39
    invoke-virtual {p0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_1

    .line 41
    :cond_0
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    const-string v2, "usbDevice"

    .line 42
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO00o;->OooO00o(Landroid/hardware/usb/UsbDevice;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_2
    const-string p0, "puremic"

    .line 47
    invoke-static {p0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0O0(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_3

    :goto_0
    const/4 p0, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 48
    :goto_2
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLoostoneMicPhone() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PuremicTuningInf"

    invoke-virtual {v0, v2, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    .line 49
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.hardware.usb.UsbManager"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setFixGainEffect()V
    .locals 5

    .line 1
    sget-object v0, Lcom/loostone/libtuning/channel/byd/data/BYDCache;->INSTANCE:Lcom/loostone/libtuning/channel/byd/data/BYDCache;

    invoke-virtual {v0}, Lcom/loostone/libtuning/channel/byd/data/BYDCache;->getReverbVolume()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 8
    move v1, v2

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/loostone/libtuning/channel/byd/data/BYDCache;->getReverbVolume()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 8
    :goto_0
    invoke-virtual {v0}, Lcom/loostone/libtuning/channel/byd/data/BYDCache;->getKaraokeEffect()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v0}, Lcom/loostone/libtuning/channel/byd/data/BYDCache;->getKaraokeEffect()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 14
    :goto_1
    iget-object v3, p0, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;->volumeAdjustment:Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    if-eqz v3, :cond_3

    .line 16
    invoke-interface {v3, v1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setAef2ReverbVolume(I)V

    .line 19
    invoke-virtual {v0}, Lcom/loostone/libtuning/channel/byd/data/BYDCache;->getReverbVolume()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    .line 22
    :cond_2
    invoke-virtual {v0}, Lcom/loostone/libtuning/channel/byd/data/BYDCache;->getReverbVolume()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    div-double/2addr v0, v3

    .line 26
    :goto_2
    iget-object v3, p0, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;->volumeAdjustment:Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    invoke-interface {v3, v2, v0, v1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setEnvironmentalSound(ID)V

    :cond_3
    return-void
.end method

.method public static setNeedListenSystemVolume(Z)V
    .locals 2

    .line 1
    sget-object p0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v0, "PuremicTuningInf"

    const-string v1, "setNeedListenSystemVolume()"

    invoke-virtual {p0, v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "PuremicTuningInf"

    const-string v2, "deInit()"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;->realInstance:Lcom/loostone/libtuning/PuremicTuning;

    invoke-virtual {v0}, Lcom/loostone/libtuning/PuremicTuning;->getDongleManager()Lcom/loostone/libtuning/process/dongle/LocalDongleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;->dongleListener:Lcom/loostone/libtuning/inf/extern/IDongleListener;

    invoke-virtual {v0, v1}, Lcom/loostone/libtuning/process/dongle/LocalDongleManager;->unRegisterDongleListener(Lcom/loostone/libtuning/inf/extern/IDongleListener;)V

    .line 4
    iget-object v0, p0, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;->realInstance:Lcom/loostone/libtuning/PuremicTuning;

    invoke-virtual {v0}, Lcom/loostone/libtuning/PuremicTuning;->release()V

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;->localDongleListener:Lcom/loostone/libtuning/channel/byd/old/IDongleListener;

    .line 6
    iput-object v0, p0, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;->volumeAdjustment:Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    .line 7
    iput-object v0, p0, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;->musicFFTControl:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;

    .line 8
    iput-object v0, p0, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;->audioTempoProcess:Lcom/loostone/libtuning/inf/extern/IAudioTempoProcess;

    return-void
.end method

.method public getMusicAudioFFTControl()Lcom/loostone/libtuning/inf/extern/IAudioFFTProcess;
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "PuremicTuningInf"

    const-string v2, "getMusicAudioFFTControl()"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;->musicFFTControl:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;

    return-object v0
.end method

.method public getMusicAudioTempoControl()Lcom/loostone/libtuning/inf/extern/IAudioTempoProcess;
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "PuremicTuningInf"

    const-string v2, "getMusicAudioTempoControl()"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;->audioTempoProcess:Lcom/loostone/libtuning/inf/extern/IAudioTempoProcess;

    return-object v0
.end method

.method public init(Landroid/app/Application;I)V
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "PuremicTuningInf"

    const-string v2, "init()"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;->localDongleListener:Lcom/loostone/libtuning/channel/byd/old/IDongleListener;

    .line 5
    iget-object v0, p0, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;->realInstance:Lcom/loostone/libtuning/PuremicTuning;

    const-wide/32 v1, 0x61a80

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/loostone/libtuning/PuremicTuning;->init(Landroid/content/Context;JI)V

    .line 6
    iget-object p1, p0, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;->realInstance:Lcom/loostone/libtuning/PuremicTuning;

    invoke-virtual {p1}, Lcom/loostone/libtuning/PuremicTuning;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    iput-object p1, p0, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;->volumeAdjustment:Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    .line 7
    iget-object p1, p0, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;->realInstance:Lcom/loostone/libtuning/PuremicTuning;

    invoke-virtual {p1}, Lcom/loostone/libtuning/PuremicTuning;->getDongleManager()Lcom/loostone/libtuning/process/dongle/LocalDongleManager;

    move-result-object p1

    iget-object p2, p0, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;->dongleListener:Lcom/loostone/libtuning/inf/extern/IDongleListener;

    invoke-virtual {p1, p2}, Lcom/loostone/libtuning/process/dongle/LocalDongleManager;->registerDongleListener(Lcom/loostone/libtuning/inf/extern/IDongleListener;)V

    .line 10
    iget-object p1, p0, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;->environmentalSoundItems:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    .line 11
    sget-object p1, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOOO0/OooO00o;->OooO0O0:Ljava/util/ArrayList;

    .line 12
    iput-object p1, p0, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;->environmentalSoundItems:Ljava/util/ArrayList;

    .line 16
    :cond_0
    new-instance p1, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;

    sget-object p2, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO0O0;

    invoke-direct {p1, p2}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;-><init>(LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO0O0;)V

    iput-object p1, p0, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;->musicFFTControl:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;

    .line 18
    new-instance p1, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;

    invoke-direct {p1}, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;-><init>()V

    iput-object p1, p0, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;->audioTempoProcess:Lcom/loostone/libtuning/inf/extern/IAudioTempoProcess;

    return-void
.end method

.method public setDongleListener(Lcom/loostone/libtuning/channel/byd/old/IDongleListener;)V
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "PuremicTuningInf"

    const-string v2, "setDongleListener()"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;->localDongleListener:Lcom/loostone/libtuning/channel/byd/old/IDongleListener;

    return-void
.end method

.method public setKaraokeEffect(I)V
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setKaraokeEffect("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PuremicTuningInf"

    invoke-virtual {v0, v2, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/loostone/libtuning/channel/byd/data/BYDCache;->INSTANCE:Lcom/loostone/libtuning/channel/byd/data/BYDCache;

    invoke-virtual {v0}, Lcom/loostone/libtuning/channel/byd/data/BYDCache;->getKaraokeEffect()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o(Ljava/lang/Object;)V

    .line 5
    invoke-direct {p0}, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;->setFixGainEffect()V

    return-void
.end method

.method public setMicPercentage(I)V
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMicPercentage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PuremicTuningInf"

    invoke-virtual {v0, v2, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;->volumeAdjustment:Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setMicVolume(I)V

    :cond_0
    return-void
.end method

.method public setReverbPercentage(I)V
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setReverbPercentage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PuremicTuningInf"

    invoke-virtual {v0, v2, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/loostone/libtuning/channel/byd/data/BYDCache;->INSTANCE:Lcom/loostone/libtuning/channel/byd/data/BYDCache;

    invoke-virtual {v0}, Lcom/loostone/libtuning/channel/byd/data/BYDCache;->getReverbVolume()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v0

    div-int/lit8 p1, p1, 0xa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o(Ljava/lang/Object;)V

    .line 5
    invoke-direct {p0}, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;->setFixGainEffect()V

    return-void
.end method

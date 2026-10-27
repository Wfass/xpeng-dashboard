.class public final Landroid/car/media/CarAudioManager;
.super Landroid/car/CarManagerBase;
.source "CarAudioManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/media/CarAudioManager$CarVolumeCallback;,
        Landroid/car/media/CarAudioManager$AudioXpFeatureType;,
        Landroid/car/media/CarAudioManager$AudCtlParameterVal;
    }
.end annotation


# static fields
.field public static final AI_SOUND_FLUSH:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final AI_SOUND_RESET:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final AUDIOFOCUS_EXTRA_RECEIVE_DUCKING_EVENTS:Ljava/lang/String; = "android.car.media.AUDIOFOCUS_EXTRA_RECEIVE_DUCKING_EVENTS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final AUDIOFOCUS_EXTRA_REQUEST_ZONE_ID:Ljava/lang/String; = "android.car.media.AUDIOFOCUS_EXTRA_REQUEST_ZONE_ID"

.field public static final AUDIO_XP_FEATURE_AI_SOUND:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final AUDIO_XP_FEATURE_EVSE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CMD_DISABLE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CMD_ENABLE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EVSE_DISABLE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EVSE_ENABLE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EVSE_STYLE_EM:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EVSE_STYLE_ICE:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EVSE_VOLUME_HIGH:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EVSE_VOLUME_LOW:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EVSE_VOLUME_MEDIUM:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PRIMARY_AUDIO_ZONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final VOLUME_GROUP_AVAS:I = 0x6


# instance fields
.field private final mCarVolumeCallbackImpl:Landroid/car/media/ICarVolumeCallback;

.field private final mCarVolumeCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/car/media/CarAudioManager$CarVolumeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/car/media/ICarAudio;


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 1

    .line 708
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 206
    new-instance p1, Landroid/car/media/CarAudioManager$1;

    invoke-direct {p1, p0}, Landroid/car/media/CarAudioManager$1;-><init>(Landroid/car/media/CarAudioManager;)V

    iput-object p1, p0, Landroid/car/media/CarAudioManager;->mCarVolumeCallbackImpl:Landroid/car/media/ICarVolumeCallback;

    .line 709
    invoke-static {p2}, Landroid/car/media/ICarAudio$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/media/ICarAudio;

    move-result-object p2

    iput-object p2, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    .line 710
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroid/car/media/CarAudioManager;->mCarVolumeCallbacks:Ljava/util/List;

    .line 712
    :try_start_0
    iget-object p2, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {p1}, Landroid/car/media/ICarVolumeCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p2, p1}, Landroid/car/media/ICarAudio;->registerVolumeCallback(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "CAR.L"

    const-string/jumbo v0, "registerVolumeCallback failed"

    .line 714
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static synthetic access$000(Landroid/car/media/CarAudioManager;)Ljava/util/List;
    .locals 0

    .line 58
    iget-object p0, p0, Landroid/car/media/CarAudioManager;->mCarVolumeCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "audio"

    return-object v0
.end method


# virtual methods
.method public clearZoneIdForUid(I)Z
    .locals 1

    .line 629
    :try_start_0
    iget-object v0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {v0, p1}, Landroid/car/media/ICarAudio;->clearZoneIdForUid(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 631
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/car/media/CarAudioManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public createAudioPatch(Ljava/lang/String;II)Landroid/car/media/CarAudioPatchHandle;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "CAR.L"

    const-string v1, "createAudioPatch  "

    .line 470
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :try_start_0
    iget-object v0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {v0, p1, p2, p3}, Landroid/car/media/ICarAudio;->createAudioPatch(Ljava/lang/String;II)Landroid/car/media/CarAudioPatchHandle;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 474
    invoke-virtual {p0, p1, p2}, Landroid/car/media/CarAudioManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/media/CarAudioPatchHandle;

    return-object p1
.end method

.method public getAudioZoneIds()[I
    .locals 2

    .line 579
    :try_start_0
    iget-object v0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {v0}, Landroid/car/media/ICarAudio;->getAudioZoneIds()[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [I

    .line 581
    invoke-virtual {p0, v0, v1}, Landroid/car/media/CarAudioManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getExternalSources()[Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 440
    :try_start_0
    iget-object v0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {v0}, Landroid/car/media/ICarAudio;->getExternalSources()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 442
    invoke-virtual {p0, v0}, Landroid/car/media/CarAudioManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getGroupMaxVolume(I)I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    .line 302
    invoke-virtual {p0, v0, p1}, Landroid/car/media/CarAudioManager;->getGroupMaxVolume(II)I

    move-result p1

    return p1
.end method

.method public getGroupMaxVolume(II)I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 317
    :try_start_0
    iget-object v0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {v0, p1, p2}, Landroid/car/media/ICarAudio;->getGroupMaxVolume(II)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 319
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/car/media/CarAudioManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getGroupMinVolume(I)I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    .line 332
    invoke-virtual {p0, v0, p1}, Landroid/car/media/CarAudioManager;->getGroupMinVolume(II)I

    move-result p1

    return p1
.end method

.method public getGroupMinVolume(II)I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 347
    :try_start_0
    iget-object v0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {v0, p1, p2}, Landroid/car/media/ICarAudio;->getGroupMinVolume(II)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 349
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/car/media/CarAudioManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getGroupVolume(I)I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    .line 362
    invoke-virtual {p0, v0, p1}, Landroid/car/media/CarAudioManager;->getGroupVolume(II)I

    move-result p1

    return p1
.end method

.method public getGroupVolume(II)I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 380
    :try_start_0
    iget-object v0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {v0, p1, p2}, Landroid/car/media/ICarAudio;->getGroupVolume(II)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 382
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/car/media/CarAudioManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getUsagesForVolumeGroupId(I)[I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    .line 567
    invoke-virtual {p0, v0, p1}, Landroid/car/media/CarAudioManager;->getUsagesForVolumeGroupId(II)[I

    move-result-object p1

    return-object p1
.end method

.method public getUsagesForVolumeGroupId(II)[I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 684
    :try_start_0
    iget-object v0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {v0, p1, p2}, Landroid/car/media/ICarAudio;->getUsagesForVolumeGroupId(II)[I

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    new-array p2, p2, [I

    .line 686
    invoke-virtual {p0, p1, p2}, Landroid/car/media/CarAudioManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    return-object p1
.end method

.method public getVolumeGroupCount()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    .line 508
    invoke-virtual {p0, v0}, Landroid/car/media/CarAudioManager;->getVolumeGroupCount(I)I

    move-result v0

    return v0
.end method

.method public getVolumeGroupCount(I)I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 522
    :try_start_0
    iget-object v0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {v0, p1}, Landroid/car/media/ICarAudio;->getVolumeGroupCount(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 524
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/car/media/CarAudioManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getVolumeGroupIdForUsage(I)I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    .line 537
    invoke-virtual {p0, v0, p1}, Landroid/car/media/CarAudioManager;->getVolumeGroupIdForUsage(II)I

    move-result p1

    return p1
.end method

.method public getVolumeGroupIdForUsage(II)I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 552
    :try_start_0
    iget-object v0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {v0, p1, p2}, Landroid/car/media/ICarAudio;->getVolumeGroupIdForUsage(II)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 554
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/car/media/CarAudioManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getZoneIdForDisplay(Landroid/view/Display;)I
    .locals 1

    .line 645
    invoke-virtual {p1}, Landroid/view/Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object p1

    .line 646
    instance-of v0, p1, Landroid/view/DisplayAddress$Physical;

    if-eqz v0, :cond_0

    .line 647
    check-cast p1, Landroid/view/DisplayAddress$Physical;

    if-eqz p1, :cond_0

    .line 649
    invoke-virtual {p1}, Landroid/view/DisplayAddress$Physical;->getPort()B

    move-result p1

    invoke-virtual {p0, p1}, Landroid/car/media/CarAudioManager;->getZoneIdForDisplayPortId(B)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getZoneIdForDisplayPortId(B)I
    .locals 1

    .line 666
    :try_start_0
    iget-object v0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {v0, p1}, Landroid/car/media/ICarAudio;->getZoneIdForDisplayPortId(B)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 668
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/car/media/CarAudioManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getZoneIdForUid(I)I
    .locals 1

    .line 596
    :try_start_0
    iget-object v0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {v0, p1}, Landroid/car/media/ICarAudio;->getZoneIdForUid(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 598
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/car/media/CarAudioManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public isDynamicRoutingEnabled()Z
    .locals 2

    .line 229
    :try_start_0
    iget-object v0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {v0}, Landroid/car/media/ICarAudio;->isDynamicRoutingEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 231
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/car/media/CarAudioManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onCarDisconnected()V
    .locals 2

    .line 693
    iget-object v0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    if-eqz v0, :cond_0

    .line 695
    :try_start_0
    iget-object v1, p0, Landroid/car/media/CarAudioManager;->mCarVolumeCallbackImpl:Landroid/car/media/ICarVolumeCallback;

    invoke-interface {v1}, Landroid/car/media/ICarVolumeCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/car/media/ICarAudio;->unregisterVolumeCallback(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 697
    invoke-virtual {p0, v0}, Landroid/car/media/CarAudioManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onConnected()V
    .locals 2

    .line 724
    invoke-super {p0}, Landroid/car/CarManagerBase;->onConnected()V

    .line 726
    :try_start_0
    invoke-virtual {p0}, Landroid/car/media/CarAudioManager;->getICarOrThrow()Landroid/car/ICar;

    move-result-object v0

    const-string v1, "audio"

    invoke-interface {v0, v1}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/car/media/ICarAudio$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/media/ICarAudio;

    move-result-object v0

    iput-object v0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 728
    invoke-virtual {p0, v0}, Landroid/car/media/CarAudioManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public registerCarVolumeCallback(Landroid/car/media/CarAudioManager$CarVolumeCallback;)V
    .locals 1

    .line 737
    iget-object v0, p0, Landroid/car/media/CarAudioManager;->mCarVolumeCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public releaseAudioPatch(Landroid/car/media/CarAudioPatchHandle;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "CAR.L"

    const-string/jumbo v1, "releaseAudioPatch  "

    .line 491
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :try_start_0
    iget-object v0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {v0, p1}, Landroid/car/media/ICarAudio;->releaseAudioPatch(Landroid/car/media/CarAudioPatchHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 495
    invoke-virtual {p0, p1}, Landroid/car/media/CarAudioManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public setAudioCustomizedFeatureParam(II)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAudioCustomizedFeatureParam audioXpFeatureType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " parameterVal: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CAR.L"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBalanceTowardRight(F)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 418
    :try_start_0
    iget-object v0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {v0, p1}, Landroid/car/media/ICarAudio;->setBalanceTowardRight(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 420
    invoke-virtual {p0, p1}, Landroid/car/media/CarAudioManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public setEVSEParemeters(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x1

    .line 244
    invoke-virtual {p0, v0, p1}, Landroid/car/media/CarAudioManager;->setAudioCustomizedFeatureParam(II)V

    return-void
.end method

.method public setFadeTowardFront(F)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 399
    :try_start_0
    iget-object v0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {v0, p1}, Landroid/car/media/ICarAudio;->setFadeTowardFront(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 401
    invoke-virtual {p0, p1}, Landroid/car/media/CarAudioManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public setGroupVolume(III)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    .line 269
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/car/media/CarAudioManager;->setGroupVolume(IIII)V

    return-void
.end method

.method public setGroupVolume(IIII)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 287
    :try_start_0
    iget-object v0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/car/media/ICarAudio;->setGroupVolume(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 289
    invoke-virtual {p0, p1}, Landroid/car/media/CarAudioManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public setZoneIdForUid(II)Z
    .locals 1

    .line 613
    :try_start_0
    iget-object v0, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    invoke-interface {v0, p1, p2}, Landroid/car/media/ICarAudio;->setZoneIdForUid(II)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 615
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/car/media/CarAudioManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public unregisterCarVolumeCallback(Landroid/car/media/CarAudioManager$CarVolumeCallback;)V
    .locals 1

    .line 745
    iget-object v0, p0, Landroid/car/media/CarAudioManager;->mCarVolumeCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateIBinder(Landroid/os/IBinder;)V
    .locals 0

    .line 719
    invoke-static {p1}, Landroid/car/media/ICarAudio$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/media/ICarAudio;

    move-result-object p1

    iput-object p1, p0, Landroid/car/media/CarAudioManager;->mService:Landroid/car/media/ICarAudio;

    return-void
.end method

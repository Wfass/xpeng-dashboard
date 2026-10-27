.class public final Lcom/loostone/libtuning/channel/skyworth/SkyworthBMgr;
.super Lcom/loostone/libtuning/channel/BaseChannelMgr;
.source "SourceFile"

# interfaces
.implements LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0O0;
.implements Lcom/loostone/libtuning/inf/extern/IKeyListener;
.implements LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO;
.implements LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0o;
.implements Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr$IBTDeviceConnectedChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loostone/libtuning/channel/skyworth/SkyworthBMgr$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/loostone/libtuning/channel/BaseChannelMgr;",
        "LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0O0;",
        "Lcom/loostone/libtuning/inf/extern/IKeyListener;",
        "LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO<",
        "Ljava/lang/Boolean;",
        ">;",
        "LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0o;",
        "Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr$IBTDeviceConnectedChangedListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 52\u00020\u00012\u00020\u00022\u00020\u00032\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u00020\u00062\u00020\u0007:\u00015B\u0011\u0012\u0008\u0008\u0002\u00102\u001a\u000201\u00a2\u0006\u0004\u00083\u00104J\u000f\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u0017\u0010\u000e\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\nJ\u0017\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0014J\u0017\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0014J\u001f\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u001f\u0010\u001c\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001bJ\u001f\u0010\u001d\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001bJ\u001f\u0010\u001e\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001bJ\u001f\u0010\u001f\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010\u001bJ\u0017\u0010!\u001a\u00020\u00082\u0006\u0010 \u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008!\u0010\"J\u000f\u0010#\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008#\u0010\nJ\u0017\u0010%\u001a\u00020\u00082\u0006\u0010$\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008%\u0010&J\u0017\u0010(\u001a\u00020\u00082\u0006\u0010\'\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008(\u0010\"J\u0017\u0010*\u001a\u00020\u00082\u0006\u0010)\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008*\u0010&J\u000f\u0010+\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008+\u0010\nR\u0016\u0010,\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R\u0016\u0010/\u001a\u00020.8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008/\u00100\u00a8\u00066"
    }
    d2 = {
        "Lcom/loostone/libtuning/channel/skyworth/SkyworthBMgr;",
        "Lcom/loostone/libtuning/channel/BaseChannelMgr;",
        "LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0O0;",
        "Lcom/loostone/libtuning/inf/extern/IKeyListener;",
        "LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO;",
        "",
        "LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0o;",
        "Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr$IBTDeviceConnectedChangedListener;",
        "",
        "init",
        "()V",
        "release",
        "Landroid/hardware/usb/UsbDevice;",
        "usbDevice",
        "onDonglePermissionGranted",
        "(Landroid/hardware/usb/UsbDevice;)V",
        "onDonglePermissionDenied",
        "LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;",
        "cachedDevice",
        "onDeviceAddedWithHid",
        "(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;)V",
        "onDeviceDeniedByHid",
        "onDeviceRemoved",
        "",
        "mic",
        "actionDown",
        "onPower",
        "(IZ)V",
        "onVoice",
        "onTVPhoneSwitch",
        "onVolumeUp",
        "onVolumeDown",
        "arg",
        "onSuccess",
        "(Z)V",
        "onError",
        "volume",
        "onVolumeChange",
        "(I)V",
        "on",
        "onScreenChange",
        "key",
        "onSkyworthKey",
        "onDeviceChanged",
        "strState",
        "Z",
        "Landroid/os/Handler;",
        "mHandler",
        "Landroid/os/Handler;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Companion",
        "libTuning_CAR_XIAOPENGRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/loostone/libtuning/channel/skyworth/SkyworthBMgr$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final KEYCODE_ASSIST:I = 0xdb

.field private static final TAG:Ljava/lang/String; = "SkyworthBMgr"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final mHandler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private strState:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/loostone/libtuning/channel/skyworth/SkyworthBMgr$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/loostone/libtuning/channel/skyworth/SkyworthBMgr$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/loostone/libtuning/channel/skyworth/SkyworthBMgr;->Companion:Lcom/loostone/libtuning/channel/skyworth/SkyworthBMgr$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/loostone/libtuning/channel/skyworth/SkyworthBMgr;-><init>(Landroid/content/Context;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/loostone/libtuning/channel/BaseChannelMgr;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/SkyworthBMgr;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    .line 1
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO00o;->OooO0O0:Landroid/content/Context;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "instance"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 2
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/loostone/libtuning/channel/skyworth/SkyworthBMgr;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic lambda$IapWMM_lO4211PT6Qldy8AtpBg4()V
    .locals 0

    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/SkyworthBMgr;->onPower$lambda-3()V

    return-void
.end method

.method public static synthetic lambda$N4uPUXnYLdjXLBBZCKSNyNi66mM(Lcom/loostone/libtuning/channel/skyworth/SkyworthBMgr;)V
    .locals 0

    invoke-static {p0}, Lcom/loostone/libtuning/channel/skyworth/SkyworthBMgr;->onDeviceChanged$lambda-4(Lcom/loostone/libtuning/channel/skyworth/SkyworthBMgr;)V

    return-void
.end method

.method public static synthetic lambda$cESh7gtWYJmTG-2F8Dz1s6-EJXs()V
    .locals 0

    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/SkyworthBMgr;->onPower$lambda-2()V

    return-void
.end method

.method private static final onDeviceChanged$lambda-4(Lcom/loostone/libtuning/channel/skyworth/SkyworthBMgr;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->getInstance()Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->isConnectAudioBt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getPowerStatus()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 3
    sget-object p0, LOooO00o/OooO0O0/OooO0O0/OooO00o;->OooO0O0:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 4
    sget v0, Lcom/loostone/libtuning/R$string;->mic_power_on_bt:I

    const/4 v1, 0x1

    .line 5
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 10
    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->getInstance()Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;

    move-result-object p0

    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->disconnectBtAudioDevice()V

    goto :goto_0

    .line 11
    :cond_0
    const-string p0, "instance"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private static final onPower$lambda-2()V
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO00o;->OooO0O0:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2
    sget v1, Lcom/loostone/libtuning/R$string;->mic_power_on_bt:I

    const/4 v2, 0x1

    .line 3
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 8
    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->getInstance()Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->disconnectBtAudioDevice()V

    return-void

    .line 9
    :cond_0
    const-string v0, "instance"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private static final onPower$lambda-3()V
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO00o;->OooO0O0:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2
    sget v1, Lcom/loostone/libtuning/R$string;->mic_power_off_bt:I

    const/4 v2, 0x1

    .line 3
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 8
    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->getInstance()Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->connectBtAudioDevice()V

    return-void

    .line 9
    :cond_0
    const-string v0, "instance"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public init()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->init()V

    .line 2
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getLocalDongleManager()Lcom/loostone/libtuning/process/dongle/LocalDongleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loostone/libtuning/process/dongle/LocalDongleManager;->getMEventManager()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0, p0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO00o(LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0O0;)V

    .line 3
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getKeyService()Lcom/loostone/libtuning/inf/extern/IBaseKeyService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/loostone/libtuning/inf/extern/IBaseKeyService;->registerKeyListener(Lcom/loostone/libtuning/inf/extern/IKeyListener;)V

    .line 4
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getInfoReceiver()LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;

    move-result-object v0

    invoke-virtual {v0, p0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;->OooO00o(LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0o;)V

    .line 7
    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->getInstance()Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;

    move-result-object v0

    .line 8
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO00o;->OooO0O0:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v0, v1}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->init(Landroid/content/Context;)V

    .line 10
    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->getInstance()Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->setListener(Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr$IBTDeviceConnectedChangedListener;)V

    return-void

    .line 11
    :cond_0
    const-string v0, "instance"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onDeviceAddedWithHid(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;)V
    .locals 5
    .param p1    # LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cachedDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "SkyworthBMgr"

    const-string v2, " ------> \u8bbe\u5907\u9a8c\u8bc1\u901a\u8fc7, \u6253\u5f00so\u6216\u8005ko"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-boolean v1, p0, Lcom/loostone/libtuning/channel/skyworth/SkyworthBMgr;->strState:Z

    if-eqz v1, :cond_0

    const-string p1, "SkyworthBMgr"

    const-string v1, " ------> STR\u5f85\u673a\u72b6\u6001\uff0c\u4e0d\u54cd\u5e94USB\u63d2\u5165\u4e8b\u4ef6"

    .line 4
    invoke-virtual {v0, p1, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v1, p1, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;->OooO0oO:Ljava/lang/String;

    .line 6
    invoke-static {v1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0O0(Ljava/lang/String;)I

    move-result v1

    .line 9
    sget-object v2, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;

    invoke-virtual {v2}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooOO0O()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v3, 0x3

    if-nez v2, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 11
    sget-object v2, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;

    invoke-virtual {v2}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->o000OO()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v3

    const-string v4, "000"

    invoke-virtual {v3, v4}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v2}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->o0000Oo0()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "00"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o(Ljava/lang/Object;)V

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ------> \u8bbe\u7f6ecapture\u548cplayback\u8282\u70b9 c: 000 p: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "00"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SkyworthBMgr"

    invoke-virtual {v0, v2, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->startKaraoke()V

    .line 21
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getKeyService()Lcom/loostone/libtuning/inf/extern/IBaseKeyService;

    move-result-object v0

    .line 22
    iget-object v1, p1, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;->OooO00o:Landroid/hardware/usb/UsbDevice;

    .line 23
    invoke-interface {v0, v1}, Lcom/loostone/libtuning/inf/extern/IBaseKeyService;->setDevice(Landroid/hardware/usb/UsbDevice;)V

    .line 24
    invoke-interface {v0}, Lcom/loostone/libtuning/inf/extern/IBaseKeyService;->start()V

    .line 28
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getNetworkMgr()LOooO00o/OooO0O0/OooO0Oo/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0Oo/OooO00o;->OooO00o()LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO0o;

    move-result-object v0

    .line 30
    invoke-interface {v0, p1, p0}, LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO0o;->OooO00o(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO;)V

    .line 33
    invoke-interface {v0, p1}, LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO0o;->OooO00o(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;)V

    return-void
.end method

.method public onDeviceChanged()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getPowerStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/SkyworthBMgr;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/loostone/libtuning/channel/skyworth/-$$Lambda$SkyworthBMgr$N4uPUXnYLdjXLBBZCKSNyNi66mM;

    invoke-direct {v1, p0}, Lcom/loostone/libtuning/channel/skyworth/-$$Lambda$SkyworthBMgr$N4uPUXnYLdjXLBBZCKSNyNi66mM;-><init>(Lcom/loostone/libtuning/channel/skyworth/SkyworthBMgr;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onDeviceDeniedByHid(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;)V
    .locals 1
    .param p1    # LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cachedDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onDeviceRemoved(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;)V
    .locals 3
    .param p1    # LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cachedDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "SkyworthBMgr"

    const-string v2, " ------> \u8bbe\u5907\u79fb\u9664 "

    .line 2
    iget-object p1, p1, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;->OooO0oO:Ljava/lang/String;

    .line 3
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0Oo(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->stopKaraoke()V

    .line 7
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getKeyService()Lcom/loostone/libtuning/inf/extern/IBaseKeyService;

    move-result-object p1

    invoke-interface {p1}, Lcom/loostone/libtuning/inf/extern/IBaseKeyService;->stop()V

    return-void
.end method

.method public onDonglePermissionDenied()V
    .locals 0

    return-void
.end method

.method public onDonglePermissionGranted(Landroid/hardware/usb/UsbDevice;)V
    .locals 2
    .param p1    # Landroid/hardware/usb/UsbDevice;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "usbDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object p1

    const-string v1, " ------> \u6743\u9650\u7533\u8bf7\u6210\u529f "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "SkyworthBMgr"

    invoke-virtual {v0, v1, p1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getLocalDongleManager()Lcom/loostone/libtuning/process/dongle/LocalDongleManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/loostone/libtuning/process/dongle/LocalDongleManager;->getMCachedDongleDeviceManager()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;->OooO00o()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, " ------> \u8bbe\u5907\u6570\u91cf "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "SkyworthBMgr"

    .line 5
    invoke-virtual {v0, v1, p1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVerifyStatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->stopKaraoke()V

    .line 3
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getKeyService()Lcom/loostone/libtuning/inf/extern/IBaseKeyService;

    move-result-object v0

    invoke-interface {v0}, Lcom/loostone/libtuning/inf/extern/IBaseKeyService;->stop()V

    :cond_0
    return-void
.end method

.method public onPower(IZ)V
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, " ------> \u7535\u6e90\u6309\u4e0b "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SkyworthBMgr"

    invoke-virtual {v0, v2, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, " ------> \u7535\u6e90\u5f39\u8d77 "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SkyworthBMgr"

    invoke-virtual {v0, v2, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    if-eqz p2, :cond_2

    .line 10
    sget-object p2, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v0, "SkyworthBMgr"

    const-string v1, " ------> \u7535\u6e90\u6309\u4e0b"

    invoke-virtual {p2, v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getFullSceneMode()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO00o;

    move-result-object p2

    invoke-interface {p2, p1}, LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0OO;->OooO00o(I)V

    .line 15
    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->getInstance()Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->isConnectAudioBt()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 16
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/SkyworthBMgr;->mHandler:Landroid/os/Handler;

    sget-object p2, Lcom/loostone/libtuning/channel/skyworth/-$$Lambda$SkyworthBMgr$cESh7gtWYJmTG-2F8Dz1s6-EJXs;->INSTANCE:Lcom/loostone/libtuning/channel/skyworth/-$$Lambda$SkyworthBMgr$cESh7gtWYJmTG-2F8Dz1s6-EJXs;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 26
    :cond_2
    sget-object p2, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v0, "SkyworthBMgr"

    const-string v1, " ------> \u7535\u6e90\u5f39\u8d77"

    invoke-virtual {p2, v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getFullSceneMode()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO00o;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0OO;->OooO00o(I)V

    .line 31
    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->getInstance()Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->isConnectAudioBt()Z

    move-result p2

    xor-int/2addr p2, p1

    .line 32
    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->getInstance()Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->isAddressNull()Z

    move-result v0

    xor-int/2addr p1, v0

    and-int/2addr p1, p2

    if-eqz p1, :cond_3

    .line 34
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/SkyworthBMgr;->mHandler:Landroid/os/Handler;

    sget-object p2, Lcom/loostone/libtuning/channel/skyworth/-$$Lambda$SkyworthBMgr$IapWMM_lO4211PT6Qldy8AtpBg4;->INSTANCE:Lcom/loostone/libtuning/channel/skyworth/-$$Lambda$SkyworthBMgr$IapWMM_lO4211PT6Qldy8AtpBg4;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public onScreenChange(Z)V
    .locals 2

    xor-int/lit8 v0, p1, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/loostone/libtuning/channel/skyworth/SkyworthBMgr;->strState:Z

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getFullSceneMode()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO00o;->OooO0O0()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getFullSceneMode()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO00o;->OooO0OO()V

    .line 9
    :goto_0
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v0, "SkyworthBMgr"

    const-string v1, " ------> \u4eae\u5c4f\u606f\u5c4f"

    invoke-virtual {p1, v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSkyworthKey(I)V
    .locals 2

    .line 1
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v0, "SkyworthBMgr"

    const-string v1, " ------> \u6309\u952e\u76d1\u542c"

    invoke-virtual {p1, v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/loostone/libtuning/channel/skyworth/SkyworthBMgr;->onSuccess(Z)V

    return-void
.end method

.method public onSuccess(Z)V
    .locals 0

    return-void
.end method

.method public onTVPhoneSwitch(IZ)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 1
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string p2, "SkyworthBMgr"

    const-string v0, " ------> TV\u6309\u4e0b"

    invoke-virtual {p1, p2, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string p2, "SkyworthBMgr"

    const-string v0, " ------> TV\u5f39\u8d77"

    invoke-virtual {p1, p2, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onVoice(IZ)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-boolean p1, p0, Lcom/loostone/libtuning/channel/skyworth/SkyworthBMgr;->strState:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setMicVolumeEnable(Z)V

    .line 7
    new-instance p1, Landroid/app/Instrumentation;

    invoke-direct {p1}, Landroid/app/Instrumentation;-><init>()V

    const/16 p2, 0xdb

    invoke-virtual {p1, p2}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    .line 8
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string p2, "SkyworthBMgr"

    const-string v0, " ------> \u8bed\u97f3\u6309\u4e0b"

    invoke-virtual {p1, p2, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_2
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string p2, "SkyworthBMgr"

    const-string v0, " ------> \u8bed\u97f3\u5f39\u8d77"

    invoke-virtual {p1, p2, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setMicVolumeEnable(Z)V

    :goto_0
    return-void
.end method

.method public onVolumeChange(I)V
    .locals 2

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, " ------> \u8bbe\u7f6e\u97f3\u91cf "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "SkyworthBMgr"

    invoke-virtual {v0, v1, p1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVolumeDown(IZ)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 1
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string p2, "SkyworthBMgr"

    const-string v0, " ------> \u97f3\u91cf\u51cf\u6309\u4e0b"

    invoke-virtual {p1, p2, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->volumeDown(I)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string p2, "SkyworthBMgr"

    const-string v0, " ------> \u97f3\u91cf\u51cf\u5f39\u8d77"

    invoke-virtual {p1, p2, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onVolumeUp(IZ)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 1
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string p2, "SkyworthBMgr"

    const-string v0, " ------> \u97f3\u91cf\u52a0\u6309\u4e0b"

    invoke-virtual {p1, p2, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->volumeUp(I)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string p2, "SkyworthBMgr"

    const-string v0, " ------> \u97f3\u91cf\u52a0\u5f39\u8d77"

    invoke-virtual {p1, p2, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->release()V

    .line 2
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getLocalDongleManager()Lcom/loostone/libtuning/process/dongle/LocalDongleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loostone/libtuning/process/dongle/LocalDongleManager;->getMEventManager()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0, p0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO0O0(LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0O0;)V

    .line 3
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getKeyService()Lcom/loostone/libtuning/inf/extern/IBaseKeyService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/loostone/libtuning/inf/extern/IBaseKeyService;->unRegisterKeyListener(Lcom/loostone/libtuning/inf/extern/IKeyListener;)V

    .line 4
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getInfoReceiver()LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;

    move-result-object v0

    invoke-virtual {v0, p0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;->OooO0O0(LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0o;)V

    .line 7
    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->getInstance()Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->deinit()V

    return-void
.end method

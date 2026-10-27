.class public final Lcom/loostone/libtuning/channel/skyworth/SkyworthAMgr;
.super Lcom/loostone/libtuning/channel/BaseChannelMgr;
.source "SourceFile"

# interfaces
.implements LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0O0;
.implements Lcom/loostone/libtuning/inf/extern/IKeyListener;
.implements LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO;
.implements LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0o;
.implements Lcom/loostone/libtuning/channel/skyworth/inf/ISkySystemProperty;
.implements Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr$IBTDeviceConnectedChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loostone/libtuning/channel/skyworth/SkyworthAMgr$Companion;
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
        "Lcom/loostone/libtuning/channel/skyworth/inf/ISkySystemProperty;",
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
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 A2\u00020\u00012\u00020\u00022\u00020\u00032\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u00020\u00062\u00020\u00072\u00020\u0008:\u0001AB\u0011\u0012\u0008\u0008\u0002\u0010>\u001a\u00020=\u00a2\u0006\u0004\u0008?\u0010@J\u000f\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u000bJ\u0017\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0015J\u001f\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u001f\u0010\u001d\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001cJ\u001f\u0010\u001e\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001cJ\u001f\u0010\u001f\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010\u001cJ\u001f\u0010 \u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008 \u0010\u001cJ\u0017\u0010\"\u001a\u00020\t2\u0006\u0010!\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\"\u0010#J\u000f\u0010$\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008$\u0010\u000bJ\u0017\u0010&\u001a\u00020\t2\u0006\u0010%\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008&\u0010\'J\u0017\u0010)\u001a\u00020\t2\u0006\u0010(\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008)\u0010#J\u0017\u0010+\u001a\u00020\t2\u0006\u0010*\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008+\u0010\'J\u0017\u0010-\u001a\u00020\t2\u0006\u0010,\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008-\u0010#J\u000f\u0010.\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008.\u0010\u000bR\u001d\u00104\u001a\u00020/8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00080\u00101\u001a\u0004\u00082\u00103R\u0016\u00106\u001a\u0002058\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u001d\u0010<\u001a\u0002088B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00089\u00101\u001a\u0004\u0008:\u0010;\u00a8\u0006B"
    }
    d2 = {
        "Lcom/loostone/libtuning/channel/skyworth/SkyworthAMgr;",
        "Lcom/loostone/libtuning/channel/BaseChannelMgr;",
        "LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0O0;",
        "Lcom/loostone/libtuning/inf/extern/IKeyListener;",
        "LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO;",
        "",
        "LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0o;",
        "Lcom/loostone/libtuning/channel/skyworth/inf/ISkySystemProperty;",
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
        "mute",
        "onDormancy",
        "onDeviceChanged",
        "Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;",
        "systemProperty$delegate",
        "Lkotlin/Lazy;",
        "getSystemProperty",
        "()Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;",
        "systemProperty",
        "Landroid/os/Handler;",
        "mHandler",
        "Landroid/os/Handler;",
        "Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;",
        "skyworthAIControl$delegate",
        "getSkyworthAIControl",
        "()Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;",
        "skyworthAIControl",
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
.field public static final Companion:Lcom/loostone/libtuning/channel/skyworth/SkyworthAMgr$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DONGLE_CARD:Ljava/lang/String; = "third.pmkara.mic.card"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DONGLE_PRODUCT_NAME:Ljava/lang/String; = "third.pmkara.mic.name"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MIC_STATUS:Ljava/lang/String; = "third.pmkara.mic.status"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SkyworthAMgr"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final mHandler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final skyworthAIControl$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final systemProperty$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/loostone/libtuning/channel/skyworth/SkyworthAMgr$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/loostone/libtuning/channel/skyworth/SkyworthAMgr$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/loostone/libtuning/channel/skyworth/SkyworthAMgr;->Companion:Lcom/loostone/libtuning/channel/skyworth/SkyworthAMgr$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/loostone/libtuning/channel/skyworth/SkyworthAMgr;-><init>(Landroid/content/Context;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    .line 22
    sget-object p1, Lcom/loostone/libtuning/channel/skyworth/SkyworthAMgr$skyworthAIControl$2;->INSTANCE:Lcom/loostone/libtuning/channel/skyworth/SkyworthAMgr$skyworthAIControl$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/SkyworthAMgr;->skyworthAIControl$delegate:Lkotlin/Lazy;

    .line 27
    sget-object p1, Lcom/loostone/libtuning/channel/skyworth/SkyworthAMgr$systemProperty$2;->INSTANCE:Lcom/loostone/libtuning/channel/skyworth/SkyworthAMgr$systemProperty$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/SkyworthAMgr;->systemProperty$delegate:Lkotlin/Lazy;

    .line 31
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/SkyworthAMgr;->mHandler:Landroid/os/Handler;

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
    invoke-direct {p0, p1}, Lcom/loostone/libtuning/channel/skyworth/SkyworthAMgr;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private final getSkyworthAIControl()Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/SkyworthAMgr;->skyworthAIControl$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;

    return-object v0
.end method

.method private final getSystemProperty()Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/SkyworthAMgr;->systemProperty$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;

    return-object v0
.end method

.method public static synthetic lambda$200DZLtBu_uA86drM1fW2MI41Hc()V
    .locals 0

    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/SkyworthAMgr;->onPower$lambda-3()V

    return-void
.end method

.method public static synthetic lambda$ONV66CxX-RA5huYw3MpoLn8BODo()V
    .locals 0

    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/SkyworthAMgr;->onPower$lambda-2()V

    return-void
.end method

.method public static synthetic lambda$RZZlNJfjGBpQzBFidjtN5SB5TtY(Lcom/loostone/libtuning/channel/skyworth/SkyworthAMgr;)V
    .locals 0

    invoke-static {p0}, Lcom/loostone/libtuning/channel/skyworth/SkyworthAMgr;->onDeviceChanged$lambda-4(Lcom/loostone/libtuning/channel/skyworth/SkyworthAMgr;)V

    return-void
.end method

.method private static final onDeviceChanged$lambda-4(Lcom/loostone/libtuning/channel/skyworth/SkyworthAMgr;)V
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
    .locals 3

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

    .line 5
    invoke-direct {p0}, Lcom/loostone/libtuning/channel/skyworth/SkyworthAMgr;->getSystemProperty()Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;->registerCallback(Lcom/loostone/libtuning/channel/skyworth/inf/ISkySystemProperty;)V

    .line 8
    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->getInstance()Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;

    move-result-object v0

    .line 9
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO00o;->OooO0O0:Landroid/content/Context;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v0, v1}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->init(Landroid/content/Context;)V

    .line 11
    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->getInstance()Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->setListener(Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr$IBTDeviceConnectedChangedListener;)V

    .line 12
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO00o;->OooO0O0:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 13
    invoke-static {v0, v1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlFactory;->createAiControl(Landroid/content/Context;I)V

    .line 16
    invoke-direct {p0}, Lcom/loostone/libtuning/channel/skyworth/SkyworthAMgr;->getSystemProperty()Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;->start()V

    return-void

    .line 17
    :cond_0
    const-string v0, "instance"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 18
    :cond_1
    const-string v0, "instance"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public onDeviceAddedWithHid(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;)V
    .locals 12
    .param p1    # LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cachedDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "SkyworthAMgr"

    const-string v2, " ------> \u8bbe\u5907\u9a8c\u8bc1\u901a\u8fc7, \u6253\u5f00so\u6216\u8005ko"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p1, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;->OooO0oO:Ljava/lang/String;

    .line 3
    invoke-static {v1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0O0(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-lez v1, :cond_0

    const-string v6, "third.pmkara.mic.card"

    .line 5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x63

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "d0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :try_start_0
    const-string v8, "android.os.SystemProperties"

    .line 6
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "set"

    .line 7
    :try_start_1
    new-array v10, v4, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v3

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v5

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 8
    new-array v9, v4, [Ljava/lang/Object;

    aput-object v6, v9, v3

    aput-object v7, v9, v5

    invoke-virtual {v8, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 10
    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string v6, "third.pmkara.mic.name"

    .line 11
    iget-object v7, p1, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;->OooO0oO:Ljava/lang/String;

    :try_start_2
    const-string v8, "android.os.SystemProperties"

    .line 12
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v9, "set"

    .line 13
    :try_start_3
    new-array v10, v4, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v3

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v5

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 14
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v3

    aput-object v7, v4, v5

    invoke-virtual {v8, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 16
    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_0
    const-string v6, "third.pmkara.mic.card"

    const-string v7, "null"

    :try_start_4
    const-string v8, "android.os.SystemProperties"

    .line 17
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    const-string v9, "set"

    .line 18
    :try_start_5
    new-array v10, v4, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v3

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v5

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 19
    new-array v9, v4, [Ljava/lang/Object;

    aput-object v6, v9, v3

    aput-object v7, v9, v5

    invoke-virtual {v8, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 21
    :catch_2
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const-string v6, "third.pmkara.mic.name"

    const-string v7, "null"

    :try_start_6
    const-string v8, "android.os.SystemProperties"

    .line 22
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    const-string v9, "set"

    .line 23
    :try_start_7
    new-array v10, v4, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v3

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v5

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 24
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v3

    aput-object v7, v4, v5

    invoke-virtual {v8, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 26
    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    :goto_2
    sget-object v2, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;

    invoke-virtual {v2}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooOO0O()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v3, 0x3

    if-nez v2, :cond_1

    goto :goto_3

    .line 28
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 29
    sget-object v2, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;

    invoke-virtual {v2}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->o000OO()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v3

    const-string v4, "000"

    invoke-virtual {v3, v4}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o(Ljava/lang/Object;)V

    .line 30
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

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ------> \u8bbe\u7f6ecapture\u548cplayback\u8282\u70b9 c: 000 p: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "00"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SkyworthAMgr"

    invoke-virtual {v0, v2, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->startKaraoke()V

    .line 39
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getKeyService()Lcom/loostone/libtuning/inf/extern/IBaseKeyService;

    move-result-object v0

    .line 40
    iget-object v1, p1, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;->OooO00o:Landroid/hardware/usb/UsbDevice;

    .line 41
    invoke-interface {v0, v1}, Lcom/loostone/libtuning/inf/extern/IBaseKeyService;->setDevice(Landroid/hardware/usb/UsbDevice;)V

    .line 42
    invoke-interface {v0}, Lcom/loostone/libtuning/inf/extern/IBaseKeyService;->start()V

    .line 46
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getNetworkMgr()LOooO00o/OooO0O0/OooO0Oo/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0Oo/OooO00o;->OooO00o()LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO0o;

    move-result-object v0

    .line 48
    invoke-interface {v0, p1, p0}, LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO0o;->OooO00o(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO;)V

    .line 51
    invoke-interface {v0, p1}, LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO0o;->OooO00o(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;)V

    .line 55
    invoke-direct {p0}, Lcom/loostone/libtuning/channel/skyworth/SkyworthAMgr;->getSkyworthAIControl()Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;->micChanged(I)V

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
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/SkyworthAMgr;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/loostone/libtuning/channel/skyworth/-$$Lambda$SkyworthAMgr$RZZlNJfjGBpQzBFidjtN5SB5TtY;

    invoke-direct {v1, p0}, Lcom/loostone/libtuning/channel/skyworth/-$$Lambda$SkyworthAMgr$RZZlNJfjGBpQzBFidjtN5SB5TtY;-><init>(Lcom/loostone/libtuning/channel/skyworth/SkyworthAMgr;)V

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
    .locals 9
    .param p1    # LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cachedDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "SkyworthAMgr"

    const-string v2, " ------> \u8bbe\u5907\u79fb\u9664 "

    .line 2
    iget-object p1, p1, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;->OooO0oO:Ljava/lang/String;

    .line 3
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0Oo(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "third.pmkara.mic.card"

    const-string v0, "null"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    :try_start_0
    const-string v5, "android.os.SystemProperties"

    .line 4
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "set"

    .line 5
    :try_start_1
    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v3

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 6
    new-array v6, v4, [Ljava/lang/Object;

    aput-object p1, v6, v3

    aput-object v0, v6, v2

    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string p1, "third.pmkara.mic.name"

    const-string v0, "null"

    :try_start_2
    const-string v5, "android.os.SystemProperties"

    .line 9
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v6, "set"

    .line 10
    :try_start_3
    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v3

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 11
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    aput-object v0, v4, v2

    invoke-virtual {v5, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 13
    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :goto_1
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->stopKaraoke()V

    .line 15
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getKeyService()Lcom/loostone/libtuning/inf/extern/IBaseKeyService;

    move-result-object p1

    invoke-interface {p1}, Lcom/loostone/libtuning/inf/extern/IBaseKeyService;->stop()V

    return-void
.end method

.method public onDonglePermissionDenied()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/loostone/libtuning/channel/skyworth/SkyworthAMgr;->getSkyworthAIControl()Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;->micChanged(I)V

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

    const-string v1, "SkyworthAMgr"

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

    const-string v1, "SkyworthAMgr"

    .line 5
    invoke-virtual {v0, v1, p1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDormancy(Z)V
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "\u4f11\u7720\u9759\u97f3\u76d1\u542c ------> "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SkyworthAMgr"

    invoke-virtual {v0, v2, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v0

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setMicVolumeEnable(Z)V

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
    invoke-direct {p0}, Lcom/loostone/libtuning/channel/skyworth/SkyworthAMgr;->getSkyworthAIControl()Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;->micChanged(I)V

    .line 3
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->stopKaraoke()V

    .line 4
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getKeyService()Lcom/loostone/libtuning/inf/extern/IBaseKeyService;

    move-result-object v0

    invoke-interface {v0}, Lcom/loostone/libtuning/inf/extern/IBaseKeyService;->stop()V

    :cond_0
    return-void
.end method

.method public onPower(IZ)V
    .locals 8

    if-eqz p2, :cond_0

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, " ------> \u7535\u6e90\u6309\u4e0b "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SkyworthAMgr"

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

    const-string v2, "SkyworthAMgr"

    invoke-virtual {v0, v2, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    .line 10
    sget-object p2, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v3, "SkyworthAMgr"

    const-string v4, " ------> \u7535\u6e90\u6309\u4e0b"

    invoke-virtual {p2, v3, v4}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getFullSceneMode()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO00o;

    move-result-object p2

    invoke-interface {p2, v2}, LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0OO;->OooO00o(I)V

    const-string p2, "third.pmkara.mic.status"

    const-string v3, "1"

    :try_start_0
    const-string v4, "android.os.SystemProperties"

    .line 13
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "set"

    .line 14
    :try_start_1
    new-array v6, v0, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v1

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 15
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    aput-object v3, v0, v2

    invoke-virtual {v4, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 17
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    :goto_1
    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->getInstance()Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->isConnectAudioBt()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 19
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/SkyworthAMgr;->mHandler:Landroid/os/Handler;

    sget-object p2, Lcom/loostone/libtuning/channel/skyworth/-$$Lambda$SkyworthAMgr$ONV66CxX-RA5huYw3MpoLn8BODo;->INSTANCE:Lcom/loostone/libtuning/channel/skyworth/-$$Lambda$SkyworthAMgr$ONV66CxX-RA5huYw3MpoLn8BODo;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 29
    :cond_2
    sget-object p2, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v3, "SkyworthAMgr"

    const-string v4, " ------> \u7535\u6e90\u5f39\u8d77"

    invoke-virtual {p2, v3, v4}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getFullSceneMode()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO00o;

    move-result-object p2

    invoke-interface {p2, v1}, LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0OO;->OooO00o(I)V

    const-string p2, "third.pmkara.mic.status"

    const-string v3, "0"

    :try_start_2
    const-string v4, "android.os.SystemProperties"

    .line 32
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v5, "set"

    .line 33
    :try_start_3
    new-array v6, v0, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v1

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 34
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    aput-object v3, v0, v2

    invoke-virtual {v4, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 36
    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 37
    :goto_2
    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->getInstance()Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->isConnectAudioBt()Z

    move-result p1

    xor-int/2addr p1, v2

    .line 38
    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->getInstance()Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->isAddressNull()Z

    move-result p2

    xor-int/2addr p2, v2

    and-int/2addr p1, p2

    if-eqz p1, :cond_3

    .line 40
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/SkyworthAMgr;->mHandler:Landroid/os/Handler;

    sget-object p2, Lcom/loostone/libtuning/channel/skyworth/-$$Lambda$SkyworthAMgr$200DZLtBu_uA86drM1fW2MI41Hc;->INSTANCE:Lcom/loostone/libtuning/channel/skyworth/-$$Lambda$SkyworthAMgr$200DZLtBu_uA86drM1fW2MI41Hc;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_3
    return-void
.end method

.method public onScreenChange(Z)V
    .locals 2

    .line 1
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v0, "SkyworthAMgr"

    const-string v1, " ------> \u4eae\u5c4f\u606f\u5c4f"

    invoke-virtual {p1, v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSkyworthKey(I)V
    .locals 2

    .line 1
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v0, "SkyworthAMgr"

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

    invoke-virtual {p0, p1}, Lcom/loostone/libtuning/channel/skyworth/SkyworthAMgr;->onSuccess(Z)V

    return-void
.end method

.method public onSuccess(Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/loostone/libtuning/channel/skyworth/SkyworthAMgr;->getSkyworthAIControl()Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthAIControl;->micChanged(I)V

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

    const-string p2, "SkyworthAMgr"

    const-string v0, " ------> TV\u6309\u4e0b"

    invoke-virtual {p1, p2, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string p2, "SkyworthAMgr"

    const-string v0, " ------> TV\u5f39\u8d77"

    invoke-virtual {p1, p2, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onVoice(IZ)V
    .locals 2

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 1
    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->getInstance()Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/loostone/libtuning/channel/skyworth/old/record/RecordMgr;->create()V

    .line 2
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setMicVolumeEnable(Z)V

    .line 3
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v0, "SkyworthAMgr"

    const-string v1, " ------> \u8bed\u97f3\u6309\u4e0b"

    invoke-virtual {p1, v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v0, "SkyworthAMgr"

    const-string v1, " ------> \u8bed\u97f3\u5f39\u8d77"

    invoke-virtual {p1, v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setMicVolumeEnable(Z)V

    .line 9
    :goto_0
    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlFactory;->getAiControl()Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10
    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlFactory;->getAiControl()Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;->onVoiceKey(I)V

    :cond_2
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

    const-string v1, "SkyworthAMgr"

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

    const-string p2, "SkyworthAMgr"

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

    const-string p2, "SkyworthAMgr"

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

    const-string p2, "SkyworthAMgr"

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

    const-string p2, "SkyworthAMgr"

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

    .line 5
    invoke-direct {p0}, Lcom/loostone/libtuning/channel/skyworth/SkyworthAMgr;->getSystemProperty()Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;->unRegisterCallback(Lcom/loostone/libtuning/channel/skyworth/inf/ISkySystemProperty;)V

    .line 8
    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->getInstance()Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->deinit()V

    .line 11
    invoke-direct {p0}, Lcom/loostone/libtuning/channel/skyworth/SkyworthAMgr;->getSystemProperty()Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;->stop()V

    return-void
.end method

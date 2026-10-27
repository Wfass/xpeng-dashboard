.class public final Lcom/loostone/libtuning/channel/FullSceneSpeakMgr;
.super Lcom/loostone/libtuning/channel/BaseChannelMgr;
.source "SourceFile"

# interfaces
.implements LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0O0;
.implements Lcom/loostone/libtuning/inf/extern/IKeyListener;
.implements LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loostone/libtuning/channel/FullSceneSpeakMgr$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/loostone/libtuning/channel/BaseChannelMgr;",
        "LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0O0;",
        "Lcom/loostone/libtuning/inf/extern/IKeyListener;",
        "LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 82\u00020\u00012\u00020\u00022\u00020\u00032\u0008\u0012\u0004\u0012\u00020\u00050\u0004:\u00018B\u0011\u0012\u0008\u0008\u0002\u00105\u001a\u000204\u00a2\u0006\u0004\u00086\u00107J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\rJ\u000f\u0010\u000f\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\rJ\u0017\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\rJ\u0017\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u0019\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0018J\u0017\u0010\u001a\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0018J\r\u0010\u001b\u001a\u00020\t\u00a2\u0006\u0004\u0008\u001b\u0010\rJ\u001f\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0008\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u001f\u0010 \u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0008\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008 \u0010\u001fJ\u001f\u0010!\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0008\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008!\u0010\u001fJ\u001f\u0010\"\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0008\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\"\u0010\u001fJ\u001f\u0010#\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0008\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008#\u0010\u001fJ\u0017\u0010%\u001a\u00020\t2\u0006\u0010$\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008%\u0010&J\u000f\u0010\'\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\'\u0010\rR\"\u0010(\u001a\u00020\u001c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\u001d\u00103\u001a\u00020.8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008/\u00100\u001a\u0004\u00081\u00102\u00a8\u00069"
    }
    d2 = {
        "Lcom/loostone/libtuning/channel/FullSceneSpeakMgr;",
        "Lcom/loostone/libtuning/channel/BaseChannelMgr;",
        "LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0O0;",
        "Lcom/loostone/libtuning/inf/extern/IKeyListener;",
        "LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO;",
        "",
        "",
        "type",
        "actionDown",
        "",
        "sendMicKey",
        "(Ljava/lang/String;Z)V",
        "init",
        "()V",
        "release",
        "startKaraoke",
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
        "dynamicAdjustCompPregain",
        "",
        "mic",
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
        "karaokeMode",
        "I",
        "getKaraokeMode",
        "()I",
        "setKaraokeMode",
        "(I)V",
        "LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0O0;",
        "audioServerReceiver$delegate",
        "Lkotlin/Lazy;",
        "getAudioServerReceiver",
        "()LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0O0;",
        "audioServerReceiver",
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
.field public static final Companion:Lcom/loostone/libtuning/channel/FullSceneSpeakMgr$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "FullSceneSpeakMgr"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final audioServerReceiver$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private karaokeMode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/loostone/libtuning/channel/FullSceneSpeakMgr$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/loostone/libtuning/channel/FullSceneSpeakMgr$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/loostone/libtuning/channel/FullSceneSpeakMgr;->Companion:Lcom/loostone/libtuning/channel/FullSceneSpeakMgr$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/loostone/libtuning/channel/FullSceneSpeakMgr;-><init>(Landroid/content/Context;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    .line 12
    sget-object p1, Lcom/loostone/libtuning/channel/FullSceneSpeakMgr$audioServerReceiver$2;->INSTANCE:Lcom/loostone/libtuning/channel/FullSceneSpeakMgr$audioServerReceiver$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/loostone/libtuning/channel/FullSceneSpeakMgr;->audioServerReceiver$delegate:Lkotlin/Lazy;

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
    invoke-direct {p0, p1}, Lcom/loostone/libtuning/channel/FullSceneSpeakMgr;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private final getAudioServerReceiver()LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0O0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/channel/FullSceneSpeakMgr;->audioServerReceiver$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0O0;

    return-object v0
.end method

.method private final sendMicKey(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.loostone.puremic.dongle_key_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "keycode_type"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "keycode_action"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO00o;->OooO0O0:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 6
    :cond_0
    const-string p1, "instance"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public final dynamicAdjustCompPregain()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getMicControlService()Lcom/loostone/libtuning/inf/extern/IMicControl;

    move-result-object v0

    check-cast v0, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO0O0()[B

    move-result-object v0

    .line 4
    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    return-void

    .line 6
    :cond_0
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "micKey A = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-byte v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", B = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget-byte v5, v0, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "FullSceneSpeakMgr"

    invoke-virtual {v1, v5, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    aget-byte v1, v0, v3

    aget-byte v0, v0, v4

    and-int/2addr v0, v1

    int-to-byte v0, v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    .line 8
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->OooO0o0()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v1

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->OooO0o()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getCarOutPregainAdd()I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o(Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_1
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->OooO0o0()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v1

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->OooO0o()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getCarOutPregainAdd()I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final getKaraokeMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/loostone/libtuning/channel/FullSceneSpeakMgr;->karaokeMode:I

    return v0
.end method

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
    invoke-direct {p0}, Lcom/loostone/libtuning/channel/FullSceneSpeakMgr;->getAudioServerReceiver()LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0O0;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.AUDIODIEDRESTORE"

    .line 27
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    :try_start_0
    sget-object v2, LOooO00o/OooO0O0/OooO0O0/OooO00o;->OooO0O0:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 29
    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v0, "instance"

    .line 30
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 31
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v2, "register error :: "

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "AudioServerReceiver"

    invoke-virtual {v1, v2, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onDeviceAddedWithHid(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;)V
    .locals 6
    .param p1    # LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cachedDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "FullSceneSpeakMgr"

    const-string v2, "  \u8bbe\u5907\u9a8c\u8bc1\u901a\u8fc7, \u6253\u5f00so\u6216\u8005ko"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "FullSceneSpeakMgr"

    const-string v2, "  SDK VERSION 3.1.21 2024-07-31 18:15:56, CommitID:28506df1"

    .line 2
    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v1, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;

    invoke-virtual {v1}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooOO0O()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    if-ne v1, v2, :cond_1

    .line 6
    iget-object v1, p1, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;->OooO0oO:Ljava/lang/String;

    .line 7
    invoke-static {v1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0O0(Ljava/lang/String;)I

    move-result v1

    .line 8
    sget-object v3, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;

    invoke-virtual {v3}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->o000OO()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "00"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o(Ljava/lang/Object;)V

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " \u8bbe\u7f6ecapture card: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " device: 00"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FullSceneSpeakMgr"

    invoke-virtual {v0, v3, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/FullSceneSpeakMgr;->startKaraoke()V

    .line 17
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getKeyService()Lcom/loostone/libtuning/inf/extern/IBaseKeyService;

    move-result-object v1

    .line 18
    iget-object v3, p1, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;->OooO00o:Landroid/hardware/usb/UsbDevice;

    .line 19
    invoke-interface {v1, v3}, Lcom/loostone/libtuning/inf/extern/IBaseKeyService;->setDevice(Landroid/hardware/usb/UsbDevice;)V

    .line 20
    invoke-interface {v1}, Lcom/loostone/libtuning/inf/extern/IBaseKeyService;->start()V

    .line 22
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/FullSceneSpeakMgr;->dynamicAdjustCompPregain()V

    .line 25
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getNetworkMgr()LOooO00o/OooO0O0/OooO0Oo/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0O0/OooO0Oo/OooO00o;->OooO00o()LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO0o;

    move-result-object v1

    .line 27
    invoke-interface {v1, p1, p0}, LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO0o;->OooO00o(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO;)V

    .line 30
    invoke-interface {v1, p1}, LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO0o;->OooO00o(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;)V

    .line 34
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getKeyService()Lcom/loostone/libtuning/inf/extern/IBaseKeyService;

    move-result-object p1

    invoke-interface {p1}, Lcom/loostone/libtuning/inf/extern/IBaseKeyService;->getMicControl()Lcom/loostone/libtuning/inf/extern/IMicControl;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/loostone/libtuning/inf/extern/IMicControl;->setMicShiftFrequency(I)I

    .line 35
    :goto_1
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setAef3ReverbFsEnable(I)V

    const-string p1, "FullSceneSpeakMgr"

    const-string v1, "\u5173\u95ed\u63a5\u6536\u5668\u79fb\u9891\uff0c\u6253\u5f00\u8f6f\u79fb\u9891"

    .line 36
    invoke-virtual {v0, p1, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

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

    const-string v1, "FullSceneSpeakMgr"

    const-string v2, "  \u8bbe\u5907\u79fb\u9664 "

    .line 2
    iget-object p1, p1, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;->OooO0oO:Ljava/lang/String;

    .line 3
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0Oo(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->stopKaraoke()V

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getKeyService()Lcom/loostone/libtuning/inf/extern/IBaseKeyService;

    move-result-object p1

    invoke-interface {p1}, Lcom/loostone/libtuning/inf/extern/IBaseKeyService;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    :goto_0
    :try_start_1
    sget-object p1, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO00o:LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO0OO;

    invoke-virtual {p1}, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO0OO;->OooO00o()LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO0O0()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 15
    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
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

    const-string v1, "  \u6743\u9650\u7533\u8bf7\u6210\u529f "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "FullSceneSpeakMgr"

    invoke-virtual {v0, v1, p1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
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

    const-string v1, "  \u8bbe\u5907\u6570\u91cf "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "FullSceneSpeakMgr"

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
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/FullSceneSpeakMgr;->dynamicAdjustCompPregain()V

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 5
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v0, "FullSceneSpeakMgr"

    const-string v1, "  \u7535\u6e90\u6309\u4e0b"

    invoke-virtual {p1, v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getMicPowerListener()LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0OO;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, v0}, LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0OO;->OooO00o(I)V

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getFullSceneMode()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO00o;

    move-result-object p1

    invoke-interface {p1, v0}, LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0OO;->OooO00o(I)V

    goto :goto_2

    .line 9
    :cond_2
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v0, "FullSceneSpeakMgr"

    const-string v1, "  \u7535\u6e90\u5f39\u8d77"

    invoke-virtual {p1, v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getMicPowerListener()LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0OO;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p1, v0}, LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0OO;->OooO00o(I)V

    .line 11
    :goto_1
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getFullSceneMode()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO00o;

    move-result-object p1

    invoke-interface {p1, v0}, LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0OO;->OooO00o(I)V

    :goto_2
    const-string p1, "power"

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/loostone/libtuning/channel/FullSceneSpeakMgr;->sendMicKey(Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/loostone/libtuning/channel/FullSceneSpeakMgr;->onSuccess(Z)V

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

    const-string p2, "FullSceneSpeakMgr"

    const-string v0, "  TV\u6309\u4e0b"

    invoke-virtual {p1, p2, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string p2, "FullSceneSpeakMgr"

    const-string v0, "  TV\u5f39\u8d77"

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
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v0, "FullSceneSpeakMgr"

    const-string v1, "  \u8bed\u97f3\u6309\u4e0b"

    invoke-virtual {p1, v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v0, "FullSceneSpeakMgr"

    const-string v1, "  \u8bed\u97f3\u5f39\u8d77"

    invoke-virtual {p1, v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string p1, "voice"

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/loostone/libtuning/channel/FullSceneSpeakMgr;->sendMicKey(Ljava/lang/String;Z)V

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

    const-string p2, "FullSceneSpeakMgr"

    const-string v0, "  \u97f3\u91cf\u51cf\u6309\u4e0b"

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

    const-string p2, "FullSceneSpeakMgr"

    const-string v0, "  \u97f3\u91cf\u51cf\u5f39\u8d77"

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

    const-string p2, "FullSceneSpeakMgr"

    const-string v0, "  \u97f3\u91cf\u52a0\u6309\u4e0b"

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

    const-string p2, "FullSceneSpeakMgr"

    const-string v0, "  \u97f3\u91cf\u52a0\u5f39\u8d77"

    invoke-virtual {p1, p2, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 4

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
    invoke-direct {p0}, Lcom/loostone/libtuning/channel/FullSceneSpeakMgr;->getAudioServerReceiver()LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0O0;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    :try_start_0
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO00o;->OooO0O0:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    :cond_0
    const-string v1, "instance"

    .line 8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .line 9
    sget-object v2, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v3, "unRegister error :: "

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "AudioServerReceiver"

    invoke-virtual {v2, v3, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :goto_0
    iget-object v0, v0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0O0;->OooO00o:Ljava/util/Timer;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 12
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getKeyService()Lcom/loostone/libtuning/inf/extern/IBaseKeyService;

    move-result-object v0

    invoke-interface {v0}, Lcom/loostone/libtuning/inf/extern/IBaseKeyService;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 14
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    :goto_2
    :try_start_2
    sget-object v0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO00o:LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO0OO;

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO0OO;->OooO00o()LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO0O0()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 19
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public final setKaraokeMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/loostone/libtuning/channel/FullSceneSpeakMgr;->karaokeMode:I

    return-void
.end method

.method public startKaraoke()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/loostone/libtuning/channel/FullSceneSpeakMgr;->karaokeMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-super {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->startKaraoke()V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "FullSceneSpeakMgr"

    const-string v2, "startKaraoke fail: not in karaoke mode"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

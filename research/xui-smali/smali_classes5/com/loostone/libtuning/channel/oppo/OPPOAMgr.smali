.class public final Lcom/loostone/libtuning/channel/oppo/OPPOAMgr;
.super Lcom/loostone/libtuning/channel/BaseChannelMgr;
.source "SourceFile"

# interfaces
.implements LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0O0;
.implements Lcom/loostone/libtuning/inf/extern/IKeyListener;
.implements LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loostone/libtuning/channel/oppo/OPPOAMgr$Companion;
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
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 &2\u00020\u00012\u00020\u00022\u00020\u00032\u0008\u0012\u0004\u0012\u00020\u00050\u0004:\u0001&B\u0011\u0012\u0008\u0008\u0002\u0010#\u001a\u00020\"\u00a2\u0006\u0004\u0008$\u0010%J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0008J\u0017\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u0008J\u0017\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0012J\u001f\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u001f\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0019J\u001f\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u0019J\u001f\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u0019J\u001f\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u0019J\u0017\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008!\u0010\u0008\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/loostone/libtuning/channel/oppo/OPPOAMgr;",
        "Lcom/loostone/libtuning/channel/BaseChannelMgr;",
        "LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0O0;",
        "Lcom/loostone/libtuning/inf/extern/IKeyListener;",
        "LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO;",
        "",
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
.field public static final Companion:Lcom/loostone/libtuning/channel/oppo/OPPOAMgr$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "OPPOAMgr"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/loostone/libtuning/channel/oppo/OPPOAMgr$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/loostone/libtuning/channel/oppo/OPPOAMgr$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/loostone/libtuning/channel/oppo/OPPOAMgr;->Companion:Lcom/loostone/libtuning/channel/oppo/OPPOAMgr$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/loostone/libtuning/channel/oppo/OPPOAMgr;-><init>(Landroid/content/Context;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

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
    invoke-direct {p0, p1}, Lcom/loostone/libtuning/channel/oppo/OPPOAMgr;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

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

    return-void
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

    const-string v1, "OPPOAMgr"

    const-string v2, " ------> \u8bbe\u5907\u9a8c\u8bc1\u901a\u8fc7, \u6253\u5f00so\u6216\u8005ko"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO00o;->OooO0O0:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 3
    sget v2, Lcom/loostone/libtuning/R$string;->oppo_a_mic_in:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 6
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

    .line 7
    iget-object v1, p1, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;->OooO0oO:Ljava/lang/String;

    .line 8
    invoke-static {v1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0O0(Ljava/lang/String;)I

    move-result v1

    .line 9
    sget-object v2, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;

    invoke-virtual {v2}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->o000OO()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "00"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o(Ljava/lang/Object;)V

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------> \u8bbe\u7f6ecapture card: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " device: 00"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPPOAMgr"

    invoke-virtual {v0, v2, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->startKaraoke()V

    .line 18
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getKeyService()Lcom/loostone/libtuning/inf/extern/IBaseKeyService;

    move-result-object v0

    .line 19
    iget-object v1, p1, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;->OooO00o:Landroid/hardware/usb/UsbDevice;

    .line 20
    invoke-interface {v0, v1}, Lcom/loostone/libtuning/inf/extern/IBaseKeyService;->setDevice(Landroid/hardware/usb/UsbDevice;)V

    .line 21
    invoke-interface {v0}, Lcom/loostone/libtuning/inf/extern/IBaseKeyService;->start()V

    .line 25
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getNetworkMgr()LOooO00o/OooO0O0/OooO0Oo/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0Oo/OooO00o;->OooO00o()LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO0o;

    move-result-object v0

    .line 27
    invoke-interface {v0, p1, p0}, LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO0o;->OooO00o(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO;)V

    .line 30
    invoke-interface {v0, p1}, LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO0o;->OooO00o(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;)V

    return-void

    .line 31
    :cond_2
    const-string p1, "instance"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
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

    const-string v1, "OPPOAMgr"

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

    const-string v1, "OPPOAMgr"

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

    const-string v1, " ------> \u8bbe\u5907\u6570\u91cf "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "OPPOAMgr"

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
    .locals 1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 1
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string p2, "OPPOAMgr"

    const-string v0, " ------> \u7535\u6e90\u6309\u4e0b"

    invoke-virtual {p1, p2, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getFullSceneMode()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO00o;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0OO;->OooO00o(I)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string p2, "OPPOAMgr"

    const-string v0, " ------> \u7535\u6e90\u5f39\u8d77"

    invoke-virtual {p1, p2, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getFullSceneMode()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO00o;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0OO;->OooO00o(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/loostone/libtuning/channel/oppo/OPPOAMgr;->onSuccess(Z)V

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

    const-string p2, "OPPOAMgr"

    const-string v0, " ------> TV\u6309\u4e0b"

    invoke-virtual {p1, p2, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string p2, "OPPOAMgr"

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
    if-eqz p2, :cond_2

    .line 1
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string p2, "OPPOAMgr"

    const-string v0, " ------> \u8bed\u97f3\u6309\u4e0b"

    invoke-virtual {p1, p2, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p1, Landroid/content/Intent;

    const-string p2, "heytap.intent.action.ACTIVATE_SPEECH_ASSIST"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance p2, Landroid/content/ComponentName;

    const-string v0, "com.heytap.speechassist.tv"

    const-string v1, "com.heytap.speechassist.tv.core.SpeechService"

    invoke-direct {p2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p2, "caller_package"

    const-string v0, "com.loostone.tuning"

    .line 8
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "start_type"

    const/high16 v0, 0x20000000

    .line 9
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 10
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 11
    :try_start_0
    sget-object p2, LOooO00o/OooO0O0/OooO0O0/OooO00o;->OooO0O0:Landroid/content/Context;

    if-eqz p2, :cond_1

    .line 12
    invoke-static {p2, p1}, Landroidx/core/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string p1, "instance"

    .line 13
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 17
    :cond_2
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string p2, "OPPOAMgr"

    const-string v0, " ------> \u8bed\u97f3\u5f39\u8d77"

    invoke-virtual {p1, p2, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
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

    const-string p2, "OPPOAMgr"

    const-string v0, " ------> \u97f3\u91cf\u51cf\u6309\u4e0b"

    invoke-virtual {p1, p2, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string p2, "OPPOAMgr"

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

    const-string p2, "OPPOAMgr"

    const-string v0, " ------> \u97f3\u91cf\u52a0\u6309\u4e0b"

    invoke-virtual {p1, p2, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string p2, "OPPOAMgr"

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

    return-void
.end method

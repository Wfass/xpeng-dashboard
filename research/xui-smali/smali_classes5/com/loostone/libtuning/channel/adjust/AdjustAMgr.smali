.class public final Lcom/loostone/libtuning/channel/adjust/AdjustAMgr;
.super Lcom/loostone/libtuning/channel/BaseChannelMgr;
.source "SourceFile"

# interfaces
.implements LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0O0;
.implements Lcom/loostone/libtuning/inf/extern/IKeyListener;
.implements Lcom/loostone/libtuning/inf/extern/IAdjustEffect;
.implements LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loostone/libtuning/channel/adjust/AdjustAMgr$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/loostone/libtuning/channel/BaseChannelMgr;",
        "LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0O0;",
        "Lcom/loostone/libtuning/inf/extern/IKeyListener;",
        "Lcom/loostone/libtuning/inf/extern/IAdjustEffect;",
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
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 *2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u0008\u0012\u0004\u0012\u00020\u00060\u0005:\u0001*B\u0011\u0012\u0008\u0008\u0002\u0010\'\u001a\u00020&\u00a2\u0006\u0004\u0008(\u0010)J\u000f\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\tJ\u0017\u0010\r\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\tJ\u0017\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0013J\u001f\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u001f\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001aJ\u001f\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001aJ\u001f\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001aJ\u001f\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001aJ\u0017\u0010 \u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008 \u0010!J\u000f\u0010\"\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\"\u0010\tJ\u000f\u0010$\u001a\u00020#H\u0016\u00a2\u0006\u0004\u0008$\u0010%\u00a8\u0006+"
    }
    d2 = {
        "Lcom/loostone/libtuning/channel/adjust/AdjustAMgr;",
        "Lcom/loostone/libtuning/channel/BaseChannelMgr;",
        "LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0O0;",
        "Lcom/loostone/libtuning/inf/extern/IKeyListener;",
        "Lcom/loostone/libtuning/inf/extern/IAdjustEffect;",
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
        "",
        "getConfigAll",
        "()Ljava/lang/String;",
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
.field public static final Companion:Lcom/loostone/libtuning/channel/adjust/AdjustAMgr$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AdjustMgr"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/loostone/libtuning/channel/adjust/AdjustAMgr$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/loostone/libtuning/channel/adjust/AdjustAMgr$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/loostone/libtuning/channel/adjust/AdjustAMgr;->Companion:Lcom/loostone/libtuning/channel/adjust/AdjustAMgr$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/loostone/libtuning/channel/adjust/AdjustAMgr;-><init>(Landroid/content/Context;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

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
    invoke-direct {p0, p1}, Lcom/loostone/libtuning/channel/adjust/AdjustAMgr;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getConfigAll()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/loostone/libtuning/data/config/DefaultConfig;

    invoke-direct {v0}, Lcom/loostone/libtuning/data/config/DefaultConfig;-><init>()V

    .line 3
    sget-object v1, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;

    invoke-virtual {v1}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooO0O0()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    invoke-virtual {v0, v2, v3}, Lcom/loostone/libtuning/data/config/DefaultConfig;->setChannel(J)V

    .line 5
    invoke-virtual {v1}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooOO0O()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1
    invoke-virtual {v0, v2}, Lcom/loostone/libtuning/data/config/DefaultConfig;->setWorkModeInt(I)V

    .line 6
    sget-object v2, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;

    invoke-virtual {v2}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->o0000o0o()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v4

    invoke-virtual {v4}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_2

    const-string v4, ""

    :cond_2
    invoke-virtual {v0, v4}, Lcom/loostone/libtuning/data/config/DefaultConfig;->setWorkMode(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->o0000O0O()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_2
    invoke-virtual {v0, v2}, Lcom/loostone/libtuning/data/config/DefaultConfig;->setBeta(I)V

    .line 8
    invoke-virtual {v1}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooO0Oo()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_4

    move v1, v3

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_3
    invoke-virtual {v0, v1}, Lcom/loostone/libtuning/data/config/DefaultConfig;->setLogLevel(I)V

    .line 11
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v1

    invoke-interface {v1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getMicVolume()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/loostone/libtuning/data/config/DefaultConfig;->setMicVolume(I)V

    .line 12
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v1

    invoke-interface {v1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getMusicVolume()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/loostone/libtuning/data/config/DefaultConfig;->setMusicVolume(I)V

    .line 14
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v1

    invoke-interface {v1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->isAef1ReverbEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/loostone/libtuning/data/config/DefaultConfig;->setAef1ReverbEnable(I)V

    .line 15
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v1

    invoke-interface {v1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef1ReverbOutGain()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/loostone/libtuning/data/config/DefaultConfig;->setAef1ReverbOutGain(I)V

    .line 16
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v1

    invoke-interface {v1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->isAef2EQEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/loostone/libtuning/data/config/DefaultConfig;->setAef2EQEnable(I)V

    .line 17
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v1

    invoke-interface {v1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->isAef2MusicEQEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/loostone/libtuning/data/config/DefaultConfig;->setAef2MusicEQEnable(I)V

    .line 20
    new-instance v1, Lcom/loostone/libtuning/data/bean/EQItem;

    invoke-direct {v1}, Lcom/loostone/libtuning/data/bean/EQItem;-><init>()V

    .line 21
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EQ1()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loostone/libtuning/data/bean/EQItem;->setEq1(Ljava/lang/Integer;)V

    .line 22
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EQ2()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loostone/libtuning/data/bean/EQItem;->setEq2(Ljava/lang/Integer;)V

    .line 23
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EQ3()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loostone/libtuning/data/bean/EQItem;->setEq3(Ljava/lang/Integer;)V

    .line 24
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EQ4()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loostone/libtuning/data/bean/EQItem;->setEq4(Ljava/lang/Integer;)V

    .line 25
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EQ5()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loostone/libtuning/data/bean/EQItem;->setEq5(Ljava/lang/Integer;)V

    .line 26
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EQ6()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loostone/libtuning/data/bean/EQItem;->setEq6(Ljava/lang/Integer;)V

    .line 27
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EQ7()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loostone/libtuning/data/bean/EQItem;->setEq7(Ljava/lang/Integer;)V

    .line 28
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EQ8()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loostone/libtuning/data/bean/EQItem;->setEq8(Ljava/lang/Integer;)V

    .line 29
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EQ9()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loostone/libtuning/data/bean/EQItem;->setEq9(Ljava/lang/Integer;)V

    .line 30
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EQ1Frequency()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loostone/libtuning/data/bean/EQItem;->setFrequency1(Ljava/lang/Integer;)V

    .line 31
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EQ2Frequency()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loostone/libtuning/data/bean/EQItem;->setFrequency2(Ljava/lang/Integer;)V

    .line 32
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EQ3Frequency()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loostone/libtuning/data/bean/EQItem;->setFrequency3(Ljava/lang/Integer;)V

    .line 33
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EQ4Frequency()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loostone/libtuning/data/bean/EQItem;->setFrequency4(Ljava/lang/Integer;)V

    .line 34
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EQ5Frequency()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loostone/libtuning/data/bean/EQItem;->setFrequency5(Ljava/lang/Integer;)V

    .line 35
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EQ6Frequency()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loostone/libtuning/data/bean/EQItem;->setFrequency6(Ljava/lang/Integer;)V

    .line 36
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EQ7Frequency()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loostone/libtuning/data/bean/EQItem;->setFrequency7(Ljava/lang/Integer;)V

    .line 37
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EQ8Frequency()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loostone/libtuning/data/bean/EQItem;->setFrequency8(Ljava/lang/Integer;)V

    .line 38
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EQ9Frequency()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loostone/libtuning/data/bean/EQItem;->setFrequency9(Ljava/lang/Integer;)V

    .line 39
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef3EqQ1()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loostone/libtuning/data/bean/EQItem;->setQ1(Ljava/lang/Integer;)V

    .line 40
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef3EqQ2()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loostone/libtuning/data/bean/EQItem;->setQ2(Ljava/lang/Integer;)V

    .line 41
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef3EqQ3()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loostone/libtuning/data/bean/EQItem;->setQ3(Ljava/lang/Integer;)V

    .line 42
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef3EqQ4()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loostone/libtuning/data/bean/EQItem;->setQ4(Ljava/lang/Integer;)V

    .line 43
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef3EqQ5()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loostone/libtuning/data/bean/EQItem;->setQ5(Ljava/lang/Integer;)V

    .line 44
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef3EqQ6()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loostone/libtuning/data/bean/EQItem;->setQ6(Ljava/lang/Integer;)V

    .line 45
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef3EqQ7()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loostone/libtuning/data/bean/EQItem;->setQ7(Ljava/lang/Integer;)V

    .line 46
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef3EqQ8()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loostone/libtuning/data/bean/EQItem;->setQ8(Ljava/lang/Integer;)V

    .line 47
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef3EqQ9()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loostone/libtuning/data/bean/EQItem;->setQ9(Ljava/lang/Integer;)V

    .line 48
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef3EQ1Type()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loostone/libtuning/data/bean/EQItem;->setType1(Ljava/lang/Integer;)V

    .line 49
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef3EQ2Type()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loostone/libtuning/data/bean/EQItem;->setType2(Ljava/lang/Integer;)V

    .line 50
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef3EQ3Type()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loostone/libtuning/data/bean/EQItem;->setType3(Ljava/lang/Integer;)V

    .line 51
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef3EQ4Type()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loostone/libtuning/data/bean/EQItem;->setType4(Ljava/lang/Integer;)V

    .line 52
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef3EQ5Type()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loostone/libtuning/data/bean/EQItem;->setType5(Ljava/lang/Integer;)V

    .line 53
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef3EQ6Type()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loostone/libtuning/data/bean/EQItem;->setType6(Ljava/lang/Integer;)V

    .line 54
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef3EQ7Type()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loostone/libtuning/data/bean/EQItem;->setType7(Ljava/lang/Integer;)V

    .line 55
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef3EQ8Type()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loostone/libtuning/data/bean/EQItem;->setType8(Ljava/lang/Integer;)V

    .line 56
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v2

    invoke-interface {v2}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef3EQ9Type()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loostone/libtuning/data/bean/EQItem;->setType9(Ljava/lang/Integer;)V

    .line 59
    new-instance v2, Lcom/loostone/libtuning/data/bean/EQItem;

    invoke-direct {v2}, Lcom/loostone/libtuning/data/bean/EQItem;-><init>()V

    .line 60
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v4

    invoke-interface {v4}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2MusicEQ1()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/loostone/libtuning/data/bean/EQItem;->setEq1(Ljava/lang/Integer;)V

    .line 61
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v4

    invoke-interface {v4}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2MusicEQ2()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/loostone/libtuning/data/bean/EQItem;->setEq2(Ljava/lang/Integer;)V

    .line 62
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v4

    invoke-interface {v4}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2MusicEQ3()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/loostone/libtuning/data/bean/EQItem;->setEq3(Ljava/lang/Integer;)V

    .line 63
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v4

    invoke-interface {v4}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2MusicEQ4()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/loostone/libtuning/data/bean/EQItem;->setEq4(Ljava/lang/Integer;)V

    .line 64
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v4

    invoke-interface {v4}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2MusicEQ5()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/loostone/libtuning/data/bean/EQItem;->setEq5(Ljava/lang/Integer;)V

    .line 65
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v4

    invoke-interface {v4}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2MusicEQ6()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/loostone/libtuning/data/bean/EQItem;->setEq6(Ljava/lang/Integer;)V

    .line 66
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v4

    invoke-interface {v4}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2MusicEQ7()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/loostone/libtuning/data/bean/EQItem;->setEq7(Ljava/lang/Integer;)V

    .line 67
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v4

    invoke-interface {v4}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2MusicEQ8()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/loostone/libtuning/data/bean/EQItem;->setEq8(Ljava/lang/Integer;)V

    .line 68
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v4

    invoke-interface {v4}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2MusicEQ9()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/loostone/libtuning/data/bean/EQItem;->setEq9(Ljava/lang/Integer;)V

    .line 69
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v4

    invoke-interface {v4}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2MusicEQ1Frequency()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/loostone/libtuning/data/bean/EQItem;->setFrequency1(Ljava/lang/Integer;)V

    .line 70
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v4

    invoke-interface {v4}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2MusicEQ2Frequency()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/loostone/libtuning/data/bean/EQItem;->setFrequency2(Ljava/lang/Integer;)V

    .line 71
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v4

    invoke-interface {v4}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2MusicEQ3Frequency()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/loostone/libtuning/data/bean/EQItem;->setFrequency3(Ljava/lang/Integer;)V

    .line 72
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v4

    invoke-interface {v4}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2MusicEQ4Frequency()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/loostone/libtuning/data/bean/EQItem;->setFrequency4(Ljava/lang/Integer;)V

    .line 73
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v4

    invoke-interface {v4}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2MusicEQ5Frequency()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/loostone/libtuning/data/bean/EQItem;->setFrequency5(Ljava/lang/Integer;)V

    .line 74
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v4

    invoke-interface {v4}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2MusicEQ6Frequency()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/loostone/libtuning/data/bean/EQItem;->setFrequency6(Ljava/lang/Integer;)V

    .line 75
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v4

    invoke-interface {v4}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2MusicEQ7Frequency()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/loostone/libtuning/data/bean/EQItem;->setFrequency7(Ljava/lang/Integer;)V

    .line 76
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v4

    invoke-interface {v4}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2MusicEQ8Frequency()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/loostone/libtuning/data/bean/EQItem;->setFrequency8(Ljava/lang/Integer;)V

    .line 77
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v4

    invoke-interface {v4}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2MusicEQ9Frequency()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/loostone/libtuning/data/bean/EQItem;->setFrequency9(Ljava/lang/Integer;)V

    const/4 v4, 0x2

    .line 79
    new-array v4, v4, [Lcom/loostone/libtuning/data/bean/EQItem;

    aput-object v1, v4, v3

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loostone/libtuning/data/config/DefaultConfig;->setEqList(Ljava/util/List;)V

    .line 81
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v1

    invoke-interface {v1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->isAef2EchoEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/loostone/libtuning/data/config/DefaultConfig;->setAef2EchoEnable(I)V

    .line 82
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v1

    invoke-interface {v1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EchoGain()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/loostone/libtuning/data/config/DefaultConfig;->setAef2EchoGain(I)V

    .line 83
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v1

    invoke-interface {v1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EchoType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/loostone/libtuning/data/config/DefaultConfig;->setAef2EchoType(I)V

    .line 84
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v1

    invoke-interface {v1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EchoTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/loostone/libtuning/data/config/DefaultConfig;->setAef2EchoTime(I)V

    .line 85
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v1

    invoke-interface {v1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2EchoFeedBack()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/loostone/libtuning/data/config/DefaultConfig;->setAef2EchoFeedback(I)V

    .line 87
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v1

    invoke-interface {v1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->isAef2ReverbEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/loostone/libtuning/data/config/DefaultConfig;->setAef2ReverbEnable(I)V

    .line 88
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v1

    invoke-interface {v1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2ReverbMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/loostone/libtuning/data/config/DefaultConfig;->setAef2ReverbType(I)V

    .line 89
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v1

    invoke-interface {v1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2ReverbVolume()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/loostone/libtuning/data/config/DefaultConfig;->setAef2ReverbVolume(I)V

    .line 90
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v1

    invoke-interface {v1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2ReverbTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/loostone/libtuning/data/config/DefaultConfig;->setAef2ReverbTime(I)V

    .line 92
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v1

    invoke-interface {v1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2VoiceMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/loostone/libtuning/data/config/DefaultConfig;->setAef2VoiceMode(I)V

    .line 93
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v1

    invoke-interface {v1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->isAef2CompressorEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/loostone/libtuning/data/config/DefaultConfig;->setAef2CompressorEnable(I)V

    .line 94
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v1

    invoke-interface {v1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2CompressorThreshold()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/loostone/libtuning/data/config/DefaultConfig;->setAef2CompressorThreshold(I)V

    .line 95
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v1

    invoke-interface {v1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2CompressorRatio()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/loostone/libtuning/data/config/DefaultConfig;->setAef2CompressorRatio(I)V

    .line 96
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v1

    invoke-interface {v1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2CompressorAttack()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/loostone/libtuning/data/config/DefaultConfig;->setAef2CompressorAttack(I)V

    .line 97
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v1

    invoke-interface {v1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2CompressorRelease()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/loostone/libtuning/data/config/DefaultConfig;->setAef2CompressorRelease(I)V

    .line 98
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v1

    invoke-interface {v1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef2CompressorPregain()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/loostone/libtuning/data/config/DefaultConfig;->setAef2CompressorPregain(I)V

    .line 102
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Gson().toJson(config)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

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
    .locals 2
    .param p1    # LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cachedDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v0, "AdjustMgr"

    const-string v1, "\u8bbe\u5907\u9a8c\u8bc1\u901a\u8fc7, \u6253\u5f00so\u6216\u8005ko"

    invoke-virtual {p1, v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

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

    const-string v1, "AdjustMgr"

    const-string v2, "\u8bbe\u5907\u79fb\u9664 "

    .line 2
    iget-object p1, p1, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;->OooO0oO:Ljava/lang/String;

    .line 3
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0Oo(Ljava/lang/String;Ljava/lang/String;)V

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

    const-string v1, "\u6743\u9650\u7533\u8bf7\u6210\u529f "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "AdjustMgr"

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

    const-string v1, "\u8bbe\u5907\u6570\u91cf "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "AdjustMgr"

    invoke-virtual {v0, v1, p1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError()V
    .locals 0

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

    const-string p2, "AdjustMgr"

    const-string v0, "\u7535\u6e90\u6309\u4e0b"

    invoke-virtual {p1, p2, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string p2, "AdjustMgr"

    const-string v0, "\u7535\u6e90\u5f39\u8d77"

    invoke-virtual {p1, p2, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/loostone/libtuning/channel/adjust/AdjustAMgr;->onSuccess(Z)V

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

    const-string p2, "AdjustMgr"

    const-string v0, "TV\u6309\u4e0b"

    invoke-virtual {p1, p2, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string p2, "AdjustMgr"

    const-string v0, "TV\u5f39\u8d77"

    invoke-virtual {p1, p2, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onVoice(IZ)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 1
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string p2, "AdjustMgr"

    const-string v0, "\u8bed\u97f3\u6309\u4e0b"

    invoke-virtual {p1, p2, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string p2, "AdjustMgr"

    const-string v0, "\u8bed\u97f3\u5f39\u8d77"

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

    const-string p2, "AdjustMgr"

    const-string v0, "\u97f3\u91cf\u51cf\u6309\u4e0b"

    invoke-virtual {p1, p2, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string p2, "AdjustMgr"

    const-string v0, "\u97f3\u91cf\u51cf\u5f39\u8d77"

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

    const-string p2, "AdjustMgr"

    const-string v0, "\u97f3\u91cf\u52a0\u6309\u4e0b"

    invoke-virtual {p1, p2, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string p2, "AdjustMgr"

    const-string v0, "\u97f3\u91cf\u52a0\u5f39\u8d77"

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

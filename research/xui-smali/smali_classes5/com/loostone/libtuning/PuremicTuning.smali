.class public final Lcom/loostone/libtuning/PuremicTuning;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loostone/libtuning/PuremicTuning$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\t\u0018\u0000 !2\u00020\u0001:\u0001!B\t\u0008\u0002\u00a2\u0006\u0004\u0008 \u0010\u0018J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0015\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ%\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0008\u0010\u000fJ\r\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\r\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\r\u0010\u0016\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0004J\r\u0010\u0017\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u001a\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u001d\u0010\u001f\u001a\u00020\u00028B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u0004\u00a8\u0006\""
    }
    d2 = {
        "Lcom/loostone/libtuning/PuremicTuning;",
        "",
        "Lcom/loostone/libtuning/channel/BaseChannelMgr;",
        "createChannelMgr",
        "()Lcom/loostone/libtuning/channel/BaseChannelMgr;",
        "Landroid/app/Application;",
        "context",
        "",
        "init",
        "(Landroid/app/Application;)V",
        "Landroid/content/Context;",
        "",
        "channel",
        "",
        "model",
        "(Landroid/content/Context;JI)V",
        "Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;",
        "getVolumeAdjustment",
        "()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;",
        "Lcom/loostone/libtuning/process/dongle/LocalDongleManager;",
        "getDongleManager",
        "()Lcom/loostone/libtuning/process/dongle/LocalDongleManager;",
        "getChannelMgr",
        "release",
        "()V",
        "",
        "isInit",
        "Z",
        "fullSceneSpeakMgr$delegate",
        "Lkotlin/Lazy;",
        "getFullSceneSpeakMgr",
        "fullSceneSpeakMgr",
        "<init>",
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
.field public static final Companion:Lcom/loostone/libtuning/PuremicTuning$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PuremicTuning"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final instance:Lcom/loostone/libtuning/PuremicTuning;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final fullSceneSpeakMgr$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isInit:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/loostone/libtuning/PuremicTuning$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/loostone/libtuning/PuremicTuning$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/loostone/libtuning/PuremicTuning;->Companion:Lcom/loostone/libtuning/PuremicTuning$Companion;

    .line 2
    new-instance v0, Lcom/loostone/libtuning/PuremicTuning;

    invoke-direct {v0}, Lcom/loostone/libtuning/PuremicTuning;-><init>()V

    sput-object v0, Lcom/loostone/libtuning/PuremicTuning;->instance:Lcom/loostone/libtuning/PuremicTuning;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/loostone/libtuning/PuremicTuning$OooO00o;

    invoke-direct {v0, p0}, Lcom/loostone/libtuning/PuremicTuning$OooO00o;-><init>(Lcom/loostone/libtuning/PuremicTuning;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/loostone/libtuning/PuremicTuning;->fullSceneSpeakMgr$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$createChannelMgr(Lcom/loostone/libtuning/PuremicTuning;)Lcom/loostone/libtuning/channel/BaseChannelMgr;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/loostone/libtuning/PuremicTuning;->createChannelMgr()Lcom/loostone/libtuning/channel/BaseChannelMgr;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getFullSceneSpeakMgr(Lcom/loostone/libtuning/PuremicTuning;)Lcom/loostone/libtuning/channel/BaseChannelMgr;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/loostone/libtuning/PuremicTuning;->getFullSceneSpeakMgr()Lcom/loostone/libtuning/channel/BaseChannelMgr;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getInstance$cp()Lcom/loostone/libtuning/PuremicTuning;
    .locals 1

    .line 1
    sget-object v0, Lcom/loostone/libtuning/PuremicTuning;->instance:Lcom/loostone/libtuning/PuremicTuning;

    return-object v0
.end method

.method private final createChannelMgr()Lcom/loostone/libtuning/channel/BaseChannelMgr;
    .locals 7

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooO0O0()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/32 v5, 0x186a1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 3
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v3, "PuremicTuning"

    const-string v4, "HuaWei B"

    invoke-virtual {v0, v3, v4}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/loostone/libtuning/channel/huawei/HuaWeiBMgr;

    invoke-direct {v0, v2, v1, v2}, Lcom/loostone/libtuning/channel/huawei/HuaWeiBMgr;-><init>(Landroid/content/Context;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_8

    :cond_1
    :goto_0
    const-wide/32 v3, 0x30d40

    if-nez v0, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-nez v3, :cond_3

    .line 9
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v3, "PuremicTuning"

    const-string v4, "SKYWORTH A"

    invoke-virtual {v0, v3, v4}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance v0, Lcom/loostone/libtuning/channel/skyworth/SkyworthAMgr;

    invoke-direct {v0, v2, v1, v2}, Lcom/loostone/libtuning/channel/skyworth/SkyworthAMgr;-><init>(Landroid/content/Context;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_8

    :cond_3
    :goto_1
    const-wide/32 v3, 0x30d41

    if-nez v0, :cond_4

    goto :goto_2

    .line 14
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-nez v3, :cond_5

    .line 15
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v3, "PuremicTuning"

    const-string v4, "SKYWORTH B"

    invoke-virtual {v0, v3, v4}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/loostone/libtuning/channel/skyworth/SkyworthBMgr;

    invoke-direct {v0, v2, v1, v2}, Lcom/loostone/libtuning/channel/skyworth/SkyworthBMgr;-><init>(Landroid/content/Context;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_8

    :cond_5
    :goto_2
    const-wide/32 v3, 0x30d42

    if-nez v0, :cond_6

    goto :goto_3

    .line 20
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-nez v3, :cond_7

    .line 21
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v3, "PuremicTuning"

    const-string v4, "SKYWORTH C"

    invoke-virtual {v0, v3, v4}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/loostone/libtuning/channel/skyworth/SkyworthCMgr;

    invoke-direct {v0, v2, v1, v2}, Lcom/loostone/libtuning/channel/skyworth/SkyworthCMgr;-><init>(Landroid/content/Context;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_8

    :cond_7
    :goto_3
    const-wide/16 v3, 0x1

    if-nez v0, :cond_8

    goto :goto_4

    .line 26
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-nez v3, :cond_9

    .line 27
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v3, "PuremicTuning"

    const-string v4, "ADJUST A"

    invoke-virtual {v0, v3, v4}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/loostone/libtuning/channel/adjust/AdjustAMgr;

    invoke-direct {v0, v2, v1, v2}, Lcom/loostone/libtuning/channel/adjust/AdjustAMgr;-><init>(Landroid/content/Context;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_8

    :cond_9
    :goto_4
    const-wide/32 v3, 0x493e0

    if-nez v0, :cond_a

    goto :goto_5

    .line 32
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-nez v3, :cond_b

    .line 33
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v3, "PuremicTuning"

    const-string v4, "BaiDu A"

    invoke-virtual {v0, v3, v4}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/loostone/libtuning/channel/baidu/BaiDuAMgr;

    invoke-direct {v0, v2, v1, v2}, Lcom/loostone/libtuning/channel/baidu/BaiDuAMgr;-><init>(Landroid/content/Context;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_8

    :cond_b
    :goto_5
    const-wide/32 v3, 0x61a80

    if-nez v0, :cond_c

    goto :goto_6

    .line 38
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-nez v3, :cond_d

    .line 39
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v3, "PuremicTuning"

    const-string v4, "BYD A"

    invoke-virtual {v0, v3, v4}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/loostone/libtuning/channel/byd/BiYaDiAMgr;

    invoke-direct {v0, v2, v1, v2}, Lcom/loostone/libtuning/channel/byd/BiYaDiAMgr;-><init>(Landroid/content/Context;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_8

    :cond_d
    :goto_6
    const-wide/32 v3, 0x7a120

    if-nez v0, :cond_e

    goto :goto_7

    .line 44
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-nez v0, :cond_f

    .line 45
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v3, "PuremicTuning"

    const-string v4, "OPPO A"

    invoke-virtual {v0, v3, v4}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lcom/loostone/libtuning/channel/oppo/OPPOAMgr;

    invoke-direct {v0, v2, v1, v2}, Lcom/loostone/libtuning/channel/oppo/OPPOAMgr;-><init>(Landroid/content/Context;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_8

    .line 51
    :cond_f
    :goto_7
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v3, "PuremicTuning"

    const-string v4, "Common"

    invoke-virtual {v0, v3, v4}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/loostone/libtuning/channel/FullSceneSpeakMgr;

    invoke-direct {v0, v2, v1, v2}, Lcom/loostone/libtuning/channel/FullSceneSpeakMgr;-><init>(Landroid/content/Context;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_8
    return-object v0
.end method

.method private final getFullSceneSpeakMgr()Lcom/loostone/libtuning/channel/BaseChannelMgr;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/PuremicTuning;->fullSceneSpeakMgr$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loostone/libtuning/channel/BaseChannelMgr;

    return-object v0
.end method


# virtual methods
.method public final getChannelMgr()Lcom/loostone/libtuning/channel/BaseChannelMgr;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/loostone/libtuning/PuremicTuning;->getFullSceneSpeakMgr()Lcom/loostone/libtuning/channel/BaseChannelMgr;

    move-result-object v0

    return-object v0
.end method

.method public final getDongleManager()Lcom/loostone/libtuning/process/dongle/LocalDongleManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/loostone/libtuning/PuremicTuning;->getFullSceneSpeakMgr()Lcom/loostone/libtuning/channel/BaseChannelMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getLocalDongleManager()Lcom/loostone/libtuning/process/dongle/LocalDongleManager;

    move-result-object v0

    return-object v0
.end method

.method public final getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/loostone/libtuning/PuremicTuning;->getFullSceneSpeakMgr()Lcom/loostone/libtuning/channel/BaseChannelMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v0

    return-object v0
.end method

.method public final init(Landroid/app/Application;)V
    .locals 3
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/loostone/libtuning/PuremicTuning;->init(Landroid/content/Context;JI)V

    return-void
.end method

.method public final init(Landroid/content/Context;JI)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/loostone/libtuning/PuremicTuning;->isInit:Z

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "PuremicTuning"

    const-string v2, "SDK VERSION 3.1.21 2024-07-31 18:15:56, CommitID:28506df1"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "<set-?>"

    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sput-object p1, LOooO00o/OooO0O0/OooO0O0/OooO00o;->OooO0O0:Landroid/content/Context;

    .line 21
    sget-object p1, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;

    invoke-virtual {p1}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooO0O0()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o(Ljava/lang/Object;)V

    .line 22
    sget-object p1, Lcom/loostone/libserver/version1/util/JniCall;->OooO00o:Lcom/loostone/libserver/version1/util/JniCall;

    invoke-virtual {p1}, Lcom/loostone/libserver/version1/util/JniCall;->initNetConfig()V

    .line 24
    new-instance v1, Lcom/loostone/libtuning/PuremicTuning$OooO0O0;

    invoke-direct {v1, p2, p3, p4, p0}, Lcom/loostone/libtuning/PuremicTuning$OooO0O0;-><init>(JILcom/loostone/libtuning/PuremicTuning;)V

    const/4 p1, -0x1

    .line 25
    invoke-static {p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO;->OooO00o(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 26
    invoke-static/range {v0 .. v6}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO;->OooO00o(Ljava/util/concurrent/ExecutorService;LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;JJLjava/util/concurrent/TimeUnit;)V

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/loostone/libtuning/PuremicTuning;->isInit:Z

    return-void
.end method

.method public final release()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loostone/libtuning/PuremicTuning;->isInit:Z

    .line 2
    invoke-direct {p0}, Lcom/loostone/libtuning/PuremicTuning;->getFullSceneSpeakMgr()Lcom/loostone/libtuning/channel/BaseChannelMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->release()V

    .line 4
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0O0/oo0OOoo;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0O0/oo0OOoo;

    .line 5
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0O0/oo0OOoo;->OooO0O0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

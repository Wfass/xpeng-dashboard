.class public abstract Lcom/loostone/libtuning/channel/BaseChannelMgr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/loostone/libtuning/inf/extern/IChannelInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loostone/libtuning/channel/BaseChannelMgr$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u007f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u00018\u0008&\u0018\u0000 R2\u00020\u0001:\u0001RB\u0011\u0012\u0008\u0008\u0002\u0010N\u001a\u00020M\u00a2\u0006\u0004\u0008P\u0010QJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u0017\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u0004J\u000f\u0010\u000c\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u0004J\u000f\u0010\r\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u0004J\u000f\u0010\u000f\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0011\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u001d\u0010 \u001a\u00020\u001b8D@\u0004X\u0084\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR\u001d\u0010#\u001a\u00020\u00128D@\u0004X\u0084\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\u001d\u001a\u0004\u0008\"\u0010\u0014R\u001d\u0010(\u001a\u00020$8D@\u0004X\u0084\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010\u001d\u001a\u0004\u0008&\u0010\'R\u0016\u0010*\u001a\u00020)8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u001d\u00100\u001a\u00020,8F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008-\u0010\u001d\u001a\u0004\u0008.\u0010/R\u001d\u00105\u001a\u0002018B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00082\u0010\u001d\u001a\u0004\u00083\u00104R\u0016\u00106\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u0016\u00109\u001a\u0002088\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\u0016\u0010;\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008;\u00107R\u001d\u0010@\u001a\u00020<8F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008=\u0010\u001d\u001a\u0004\u0008>\u0010?R\u001d\u0010E\u001a\u00020A8D@\u0004X\u0084\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008B\u0010\u001d\u001a\u0004\u0008C\u0010DR$\u0010G\u001a\u0004\u0018\u00010F8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008G\u0010H\u001a\u0004\u0008I\u0010J\"\u0004\u0008K\u0010LR\u0016\u0010N\u001a\u00020M8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008N\u0010O\u00a8\u0006S"
    }
    d2 = {
        "Lcom/loostone/libtuning/channel/BaseChannelMgr;",
        "Lcom/loostone/libtuning/inf/extern/IChannelInfo;",
        "",
        "registerReceiver",
        "()V",
        "unRegisterReceiver",
        "",
        "status",
        "sendDongleInfo",
        "(I)V",
        "init",
        "startKaraoke",
        "stopKaraoke",
        "resetKaraoke",
        "release",
        "getPowerStatus",
        "()I",
        "getVerifyStatus",
        "Lcom/loostone/libtuning/inf/extern/IBaseKeyService;",
        "getMicService",
        "()Lcom/loostone/libtuning/inf/extern/IBaseKeyService;",
        "Lcom/loostone/libtuning/inf/extern/IMicControl;",
        "getMicControlService",
        "()Lcom/loostone/libtuning/inf/extern/IMicControl;",
        "",
        "hasDongle",
        "()Z",
        "LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO00o;",
        "fullSceneMode$delegate",
        "Lkotlin/Lazy;",
        "getFullSceneMode",
        "()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO00o;",
        "fullSceneMode",
        "keyService$delegate",
        "getKeyService",
        "keyService",
        "LOooO00o/OooO0O0/OooO0Oo/OooO00o;",
        "networkMgr$delegate",
        "getNetworkMgr",
        "()LOooO00o/OooO0O0/OooO0Oo/OooO00o;",
        "networkMgr",
        "Lcom/loostone/libtuning/inf/extern/IKeyListener;",
        "keyListener",
        "Lcom/loostone/libtuning/inf/extern/IKeyListener;",
        "Lcom/loostone/libtuning/process/dongle/LocalDongleManager;",
        "localDongleManager$delegate",
        "getLocalDongleManager",
        "()Lcom/loostone/libtuning/process/dongle/LocalDongleManager;",
        "localDongleManager",
        "Landroid/media/AudioManager;",
        "audioManager$delegate",
        "getAudioManager",
        "()Landroid/media/AudioManager;",
        "audioManager",
        "micStatus",
        "I",
        "com/loostone/libtuning/channel/BaseChannelMgr$dongleCallback$1",
        "dongleCallback",
        "Lcom/loostone/libtuning/channel/BaseChannelMgr$dongleCallback$1;",
        "verifyStatus",
        "Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;",
        "volumeAdjustment$delegate",
        "getVolumeAdjustment",
        "()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;",
        "volumeAdjustment",
        "LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;",
        "infoReceiver$delegate",
        "getInfoReceiver",
        "()LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;",
        "infoReceiver",
        "LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0OO;",
        "micPowerListener",
        "LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0OO;",
        "getMicPowerListener",
        "()LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0OO;",
        "setMicPowerListener",
        "(LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0OO;)V",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Context;",
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
.field public static final Companion:Lcom/loostone/libtuning/channel/BaseChannelMgr$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "BaseChannelMgr"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final audioManager$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dongleCallback:Lcom/loostone/libtuning/channel/BaseChannelMgr$dongleCallback$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fullSceneMode$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final infoReceiver$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final keyListener:Lcom/loostone/libtuning/inf/extern/IKeyListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final keyService$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final localDongleManager$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private micPowerListener:LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0OO;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private micStatus:I

.field private final networkMgr$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private verifyStatus:I

.field private final volumeAdjustment$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/loostone/libtuning/channel/BaseChannelMgr$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/loostone/libtuning/channel/BaseChannelMgr$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/loostone/libtuning/channel/BaseChannelMgr;->Companion:Lcom/loostone/libtuning/channel/BaseChannelMgr$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;-><init>(Landroid/content/Context;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr;->context:Landroid/content/Context;

    .line 14
    const/4 p1, 0x4

    iput p1, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr;->micStatus:I

    .line 19
    new-instance p1, Lcom/loostone/libtuning/channel/BaseChannelMgr$localDongleManager$2;

    invoke-direct {p1, p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr$localDongleManager$2;-><init>(Lcom/loostone/libtuning/channel/BaseChannelMgr;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr;->localDongleManager$delegate:Lkotlin/Lazy;

    .line 24
    sget-object p1, Lcom/loostone/libtuning/channel/BaseChannelMgr$fullSceneMode$2;->INSTANCE:Lcom/loostone/libtuning/channel/BaseChannelMgr$fullSceneMode$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr;->fullSceneMode$delegate:Lkotlin/Lazy;

    .line 45
    new-instance p1, Lcom/loostone/libtuning/channel/BaseChannelMgr$volumeAdjustment$2;

    invoke-direct {p1, p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr$volumeAdjustment$2;-><init>(Lcom/loostone/libtuning/channel/BaseChannelMgr;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr;->volumeAdjustment$delegate:Lkotlin/Lazy;

    .line 50
    sget-object p1, Lcom/loostone/libtuning/channel/BaseChannelMgr$keyService$2;->INSTANCE:Lcom/loostone/libtuning/channel/BaseChannelMgr$keyService$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr;->keyService$delegate:Lkotlin/Lazy;

    .line 63
    sget-object p1, Lcom/loostone/libtuning/channel/BaseChannelMgr$networkMgr$2;->INSTANCE:Lcom/loostone/libtuning/channel/BaseChannelMgr$networkMgr$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr;->networkMgr$delegate:Lkotlin/Lazy;

    .line 68
    new-instance p1, Lcom/loostone/libtuning/channel/BaseChannelMgr$audioManager$2;

    invoke-direct {p1, p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr$audioManager$2;-><init>(Lcom/loostone/libtuning/channel/BaseChannelMgr;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr;->audioManager$delegate:Lkotlin/Lazy;

    .line 142
    sget-object p1, Lcom/loostone/libtuning/channel/BaseChannelMgr$infoReceiver$2;->INSTANCE:Lcom/loostone/libtuning/channel/BaseChannelMgr$infoReceiver$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr;->infoReceiver$delegate:Lkotlin/Lazy;

    .line 157
    new-instance p1, Lcom/loostone/libtuning/channel/BaseChannelMgr$keyListener$1;

    invoke-direct {p1, p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr$keyListener$1;-><init>(Lcom/loostone/libtuning/channel/BaseChannelMgr;)V

    iput-object p1, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr;->keyListener:Lcom/loostone/libtuning/inf/extern/IKeyListener;

    .line 195
    new-instance p1, Lcom/loostone/libtuning/channel/BaseChannelMgr$dongleCallback$1;

    invoke-direct {p1, p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr$dongleCallback$1;-><init>(Lcom/loostone/libtuning/channel/BaseChannelMgr;)V

    iput-object p1, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr;->dongleCallback:Lcom/loostone/libtuning/channel/BaseChannelMgr$dongleCallback$1;

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
    invoke-direct {p0, p1}, Lcom/loostone/libtuning/channel/BaseChannelMgr;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getAudioManager(Lcom/loostone/libtuning/channel/BaseChannelMgr;)Landroid/media/AudioManager;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getAudioManager()Landroid/media/AudioManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/loostone/libtuning/channel/BaseChannelMgr;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$sendDongleInfo(Lcom/loostone/libtuning/channel/BaseChannelMgr;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->sendDongleInfo(I)V

    return-void
.end method

.method public static final synthetic access$setMicStatus$p(Lcom/loostone/libtuning/channel/BaseChannelMgr;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr;->micStatus:I

    return-void
.end method

.method public static final synthetic access$setVerifyStatus$p(Lcom/loostone/libtuning/channel/BaseChannelMgr;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr;->verifyStatus:I

    return-void
.end method

.method private final getAudioManager()Landroid/media/AudioManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr;->audioManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method

.method private final registerReceiver()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getInfoReceiver()LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    .line 71
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.media.STREAM_MUTE_CHANGED_ACTION"

    .line 72
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.media.MASTER_MUTE_CHANGED_ACTION"

    .line 73
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.media.MASTER_VOLUME_CHANGED_ACTION"

    .line 74
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.media.EXTRA_MASTER_VOLUME_VALUE"

    .line 75
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    .line 76
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_ON"

    .line 79
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    .line 80
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.android.sky.SendHotKey"

    .line 83
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 87
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    iget-object v2, v0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;->OooO00o:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;->OooO0OO()V

    return-void
.end method

.method private final sendDongleInfo(I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.loostone.tuning.BROAD.ACTION.DONGLE_INFO"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "dongleStatus"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    iget-object p1, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private final unRegisterReceiver()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getInfoReceiver()LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    :try_start_0
    iget-object v1, v0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;->OooO00o:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 99
    sget-object v2, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "unRegister()"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "InfoReceiver"

    invoke-virtual {v2, v3, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_0
    iget-object v0, v0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;->OooO0o0:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getFullSceneMode()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO00o;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr;->fullSceneMode$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO00o;

    return-object v0
.end method

.method public final getInfoReceiver()LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr;->infoReceiver$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0OO;

    return-object v0
.end method

.method public final getKeyService()Lcom/loostone/libtuning/inf/extern/IBaseKeyService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr;->keyService$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loostone/libtuning/inf/extern/IBaseKeyService;

    return-object v0
.end method

.method public final getLocalDongleManager()Lcom/loostone/libtuning/process/dongle/LocalDongleManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr;->localDongleManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loostone/libtuning/process/dongle/LocalDongleManager;

    return-object v0
.end method

.method public getMicControlService()Lcom/loostone/libtuning/inf/extern/IMicControl;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getKeyService()Lcom/loostone/libtuning/inf/extern/IBaseKeyService;

    move-result-object v0

    invoke-interface {v0}, Lcom/loostone/libtuning/inf/extern/IBaseKeyService;->getMicControl()Lcom/loostone/libtuning/inf/extern/IMicControl;

    move-result-object v0

    return-object v0
.end method

.method public final getMicPowerListener()LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0OO;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr;->micPowerListener:LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0OO;

    return-object v0
.end method

.method public getMicService()Lcom/loostone/libtuning/inf/extern/IBaseKeyService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getKeyService()Lcom/loostone/libtuning/inf/extern/IBaseKeyService;

    move-result-object v0

    return-object v0
.end method

.method public final getNetworkMgr()LOooO00o/OooO0O0/OooO0Oo/OooO00o;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr;->networkMgr$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO0O0/OooO0Oo/OooO00o;

    return-object v0
.end method

.method public getPowerStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr;->micStatus:I

    return v0
.end method

.method public getVerifyStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr;->verifyStatus:I

    return v0
.end method

.method public final getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr;->volumeAdjustment$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    return-object v0
.end method

.method public hasDongle()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getLocalDongleManager()Lcom/loostone/libtuning/process/dongle/LocalDongleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loostone/libtuning/process/dongle/LocalDongleManager;->getMEventManager()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO0O0()Landroid/hardware/usb/UsbManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 5
    sget-object v2, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO00o;

    const-string v3, "usbDevice"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO00o;->OooO00o(Landroid/hardware/usb/UsbDevice;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    .line 2
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 5
    :goto_1
    return v0
.end method

.method public init()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getLocalDongleManager()Lcom/loostone/libtuning/process/dongle/LocalDongleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loostone/libtuning/process/dongle/LocalDongleManager;->init()V

    .line 3
    invoke-direct {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->registerReceiver()V

    .line 5
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getLocalDongleManager()Lcom/loostone/libtuning/process/dongle/LocalDongleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loostone/libtuning/process/dongle/LocalDongleManager;->getMEventManager()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v0

    iget-object v1, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr;->dongleCallback:Lcom/loostone/libtuning/channel/BaseChannelMgr$dongleCallback$1;

    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO00o(LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0O0;)V

    .line 6
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getKeyService()Lcom/loostone/libtuning/inf/extern/IBaseKeyService;

    move-result-object v0

    iget-object v1, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr;->keyListener:Lcom/loostone/libtuning/inf/extern/IKeyListener;

    invoke-interface {v0, v1}, Lcom/loostone/libtuning/inf/extern/IBaseKeyService;->registerKeyListener(Lcom/loostone/libtuning/inf/extern/IKeyListener;)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getLocalDongleManager()Lcom/loostone/libtuning/process/dongle/LocalDongleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loostone/libtuning/process/dongle/LocalDongleManager;->release()V

    .line 3
    invoke-direct {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->unRegisterReceiver()V

    .line 4
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getFullSceneMode()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO00o;->OooO0OO()V

    .line 6
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getLocalDongleManager()Lcom/loostone/libtuning/process/dongle/LocalDongleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loostone/libtuning/process/dongle/LocalDongleManager;->getMEventManager()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v0

    iget-object v1, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr;->dongleCallback:Lcom/loostone/libtuning/channel/BaseChannelMgr$dongleCallback$1;

    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO0O0(LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0O0;)V

    .line 7
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getKeyService()Lcom/loostone/libtuning/inf/extern/IBaseKeyService;

    move-result-object v0

    iget-object v1, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr;->keyListener:Lcom/loostone/libtuning/inf/extern/IKeyListener;

    invoke-interface {v0, v1}, Lcom/loostone/libtuning/inf/extern/IBaseKeyService;->unRegisterKeyListener(Lcom/loostone/libtuning/inf/extern/IKeyListener;)V

    return-void
.end method

.method public resetKaraoke()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getFullSceneMode()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO00o;->OooO00o()V

    return-void
.end method

.method public final setMicPowerListener(LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0OO;)V
    .locals 0
    .param p1    # LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0OO;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr;->micPowerListener:LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0OO;

    return-void
.end method

.method public startKaraoke()V
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    iget v1, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr;->verifyStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "startKaraoke, verifyStatus = "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseChannelMgr"

    invoke-virtual {v0, v2, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr;->verifyStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getFullSceneMode()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO00o;->OooO0O0()V

    :cond_0
    return-void
.end method

.method public stopKaraoke()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getFullSceneMode()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/a2/OooO00o;->OooO0OO()V

    return-void
.end method

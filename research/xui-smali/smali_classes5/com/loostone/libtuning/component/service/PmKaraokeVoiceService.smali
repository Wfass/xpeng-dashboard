.class public final Lcom/loostone/libtuning/component/service/PmKaraokeVoiceService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000-\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0008\u0006*\u0001\u0011\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0015\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u0004R\u001d\u0010\u0010\u001a\u00020\u000b8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/loostone/libtuning/component/service/PmKaraokeVoiceService;",
        "Landroid/app/Service;",
        "",
        "onCreate",
        "()V",
        "Landroid/content/Intent;",
        "intent",
        "Landroid/os/IBinder;",
        "onBind",
        "(Landroid/content/Intent;)Landroid/os/IBinder;",
        "onDestroy",
        "Lcom/loostone/libtuning/channel/BaseChannelMgr;",
        "OooO00o",
        "Lkotlin/Lazy;",
        "getFullSceneSpeakMgr",
        "()Lcom/loostone/libtuning/channel/BaseChannelMgr;",
        "fullSceneSpeakMgr",
        "com/loostone/libtuning/component/service/PmKaraokeVoiceService$OooO00o",
        "OooO0O0",
        "Lcom/loostone/libtuning/component/service/PmKaraokeVoiceService$OooO00o;",
        "binder",
        "<init>",
        "libTuning_CAR_XIAOPENGRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public final OooO00o:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final OooO0O0:Lcom/loostone/libtuning/component/service/PmKaraokeVoiceService$OooO00o;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 6
    sget-object v0, Lcom/loostone/libtuning/component/service/PmKaraokeVoiceService$OooO0O0;->OooO00o:Lcom/loostone/libtuning/component/service/PmKaraokeVoiceService$OooO0O0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/loostone/libtuning/component/service/PmKaraokeVoiceService;->OooO00o:Lkotlin/Lazy;

    .line 10
    new-instance v0, Lcom/loostone/libtuning/component/service/PmKaraokeVoiceService$OooO00o;

    invoke-direct {v0, p0}, Lcom/loostone/libtuning/component/service/PmKaraokeVoiceService$OooO00o;-><init>(Lcom/loostone/libtuning/component/service/PmKaraokeVoiceService;)V

    iput-object v0, p0, Lcom/loostone/libtuning/component/service/PmKaraokeVoiceService;->OooO0O0:Lcom/loostone/libtuning/component/service/PmKaraokeVoiceService$OooO00o;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v0, "PmKaraokeVoiceService"

    const-string v1, "  onBind"

    invoke-virtual {p1, v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/loostone/libtuning/component/service/PmKaraokeVoiceService;->OooO0O0:Lcom/loostone/libtuning/component/service/PmKaraokeVoiceService$OooO00o;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 3
    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->getInstance()Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->create(Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->getInstance()Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->destroy()V

    return-void
.end method

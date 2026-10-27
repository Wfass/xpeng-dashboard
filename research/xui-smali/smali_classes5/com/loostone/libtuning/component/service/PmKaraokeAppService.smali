.class public final Lcom/loostone/libtuning/component/service/PmKaraokeAppService;
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
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0014\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0019\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0013\u001a\u00020\u00078\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/loostone/libtuning/component/service/PmKaraokeAppService;",
        "Landroid/app/Service;",
        "",
        "onCreate",
        "()V",
        "Landroid/content/Intent;",
        "intent",
        "Landroid/os/IBinder;",
        "onBind",
        "(Landroid/content/Intent;)Landroid/os/IBinder;",
        "",
        "onUnbind",
        "(Landroid/content/Intent;)Z",
        "Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;",
        "OooO00o",
        "Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;",
        "mAiControl",
        "OooO0O0",
        "Landroid/os/IBinder;",
        "mBinder",
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
.field public OooO00o:Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final OooO0O0:Landroid/os/IBinder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 8
    new-instance v0, Lcom/loostone/libtuning/component/service/PmKaraokeAppService$OooO00o;

    invoke-direct {v0, p0}, Lcom/loostone/libtuning/component/service/PmKaraokeAppService$OooO00o;-><init>(Lcom/loostone/libtuning/component/service/PmKaraokeAppService;)V

    iput-object v0, p0, Lcom/loostone/libtuning/component/service/PmKaraokeAppService;->OooO0O0:Landroid/os/IBinder;

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

    const-string v0, "PmKaraokeAppService"

    const-string v1, "onBind"

    invoke-virtual {p1, v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/loostone/libtuning/component/service/PmKaraokeAppService;->OooO0O0:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "PmKaraokeAppService"

    const-string v2, "onCreate"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlFactory;->getAiControl()Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;

    move-result-object v0

    iput-object v0, p0, Lcom/loostone/libtuning/component/service/PmKaraokeAppService;->OooO00o:Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "PmKaraokeAppService"

    const-string v2, "onUnbind"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/loostone/libtuning/component/service/PmKaraokeAppService;->OooO00o:Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;->exitKaraokeApp()V

    .line 5
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

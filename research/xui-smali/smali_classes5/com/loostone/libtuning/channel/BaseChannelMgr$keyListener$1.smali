.class public final Lcom/loostone/libtuning/channel/BaseChannelMgr$keyListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/loostone/libtuning/inf/extern/IKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loostone/libtuning/channel/BaseChannelMgr;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001f\u0010\t\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0008J\u001f\u0010\n\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u0008J\u001f\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u0008J\u001f\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "com/loostone/libtuning/channel/BaseChannelMgr$keyListener$1",
        "Lcom/loostone/libtuning/inf/extern/IKeyListener;",
        "",
        "mic",
        "",
        "actionDown",
        "",
        "onPower",
        "(IZ)V",
        "onVoice",
        "onVolumeUp",
        "onVolumeDown",
        "onTVPhoneSwitch",
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
.field public final synthetic this$0:Lcom/loostone/libtuning/channel/BaseChannelMgr;


# direct methods
.method public constructor <init>(Lcom/loostone/libtuning/channel/BaseChannelMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr$keyListener$1;->this$0:Lcom/loostone/libtuning/channel/BaseChannelMgr;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPower(IZ)V
    .locals 3

    if-eqz p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr$keyListener$1;->this$0:Lcom/loostone/libtuning/channel/BaseChannelMgr;

    const/4 v0, 0x4

    const/4 v1, 0x3

    if-eqz p2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-static {p1, v2}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->access$sendDongleInfo(Lcom/loostone/libtuning/channel/BaseChannelMgr;I)V

    .line 3
    iget-object p1, p0, Lcom/loostone/libtuning/channel/BaseChannelMgr$keyListener$1;->this$0:Lcom/loostone/libtuning/channel/BaseChannelMgr;

    if-eqz p2, :cond_2

    .line 5
    invoke-static {p1}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->access$getAudioManager(Lcom/loostone/libtuning/channel/BaseChannelMgr;)Landroid/media/AudioManager;

    move-result-object p2

    const-string v0, "GlobalMicLowLatency=enable"

    invoke-virtual {p2, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 6
    sget-object p2, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v0, "BaseChannelMgr"

    const-string v2, "\u4f4e\u5ef6\u8fdf\u5f00\u542f ------> GlobalMicLowLatency=enable"

    invoke-virtual {p2, v0, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    move v0, v1

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {p1}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->access$getAudioManager(Lcom/loostone/libtuning/channel/BaseChannelMgr;)Landroid/media/AudioManager;

    move-result-object p2

    const-string v1, "GlobalMicLowLatency=disable"

    invoke-virtual {p2, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 12
    sget-object p2, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "BaseChannelMgr"

    const-string v2, "\u4f4e\u5ef6\u8fdf\u5173\u95ed ------> GlobalMicLowLatency=disable"

    invoke-virtual {p2, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :goto_1
    invoke-static {p1, v0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->access$setMicStatus$p(Lcom/loostone/libtuning/channel/BaseChannelMgr;I)V

    return-void
.end method

.method public onTVPhoneSwitch(IZ)V
    .locals 0

    return-void
.end method

.method public onVoice(IZ)V
    .locals 0

    return-void
.end method

.method public onVolumeDown(IZ)V
    .locals 0

    return-void
.end method

.method public onVolumeUp(IZ)V
    .locals 0

    return-void
.end method

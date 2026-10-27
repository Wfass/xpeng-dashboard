.class public Lcom/loostone/libtuning/channel/byd/old/PuremicTuning$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/loostone/libtuning/inf/extern/IDongleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;


# direct methods
.method public constructor <init>(Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning$1;->this$0:Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDongleAttach()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning$1;->this$0:Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;

    invoke-static {v0}, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;->access$000(Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;)Lcom/loostone/libtuning/channel/byd/old/IDongleListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning$1;->this$0:Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;

    invoke-static {v0}, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;->access$000(Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;)Lcom/loostone/libtuning/channel/byd/old/IDongleListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/loostone/libtuning/channel/byd/old/IDongleListener;->attach()V

    :cond_0
    return-void
.end method

.method public onDongleDetach()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning$1;->this$0:Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;

    invoke-virtual {v0}, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;->getMusicAudioFFTControl()Lcom/loostone/libtuning/inf/extern/IAudioFFTProcess;

    move-result-object v0

    invoke-interface {v0}, Lcom/loostone/libtuning/inf/extern/IAudioFFTProcess;->stop()V

    .line 2
    iget-object v0, p0, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning$1;->this$0:Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;

    invoke-virtual {v0}, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;->getMusicAudioTempoControl()Lcom/loostone/libtuning/inf/extern/IAudioTempoProcess;

    move-result-object v0

    invoke-interface {v0}, Lcom/loostone/libtuning/inf/extern/IAudioTempoProcess;->deinit()V

    .line 3
    iget-object v0, p0, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning$1;->this$0:Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;

    invoke-static {v0}, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;->access$000(Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;)Lcom/loostone/libtuning/channel/byd/old/IDongleListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning$1;->this$0:Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;

    invoke-static {v0}, Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;->access$000(Lcom/loostone/libtuning/channel/byd/old/PuremicTuning;)Lcom/loostone/libtuning/channel/byd/old/IDongleListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/loostone/libtuning/channel/byd/old/IDongleListener;->detach()V

    :cond_0
    return-void
.end method

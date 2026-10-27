.class public Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;->setListener(Lcom/loostone/libtuning/inf/extern/ITempoCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;

.field public final synthetic val$callBack:Lcom/loostone/libtuning/inf/extern/ITempoCallBack;


# direct methods
.method public constructor <init>(Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;Lcom/loostone/libtuning/inf/extern/ITempoCallBack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess$1;->this$0:Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;

    iput-object p2, p0, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess$1;->val$callBack:Lcom/loostone/libtuning/inf/extern/ITempoCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess$1;->this$0:Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;

    invoke-static {v0}, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;->access$000(Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess$1;->val$callBack:Lcom/loostone/libtuning/inf/extern/ITempoCallBack;

    if-eqz v0, :cond_0

    .line 3
    iget-object v2, p0, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess$1;->this$0:Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;

    invoke-virtual {v2}, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;->getBrightness()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/loostone/libtuning/inf/extern/ITempoCallBack;->setBrightness(I)V

    .line 4
    iget-object v0, p0, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess$1;->val$callBack:Lcom/loostone/libtuning/inf/extern/ITempoCallBack;

    iget-object v2, p0, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess$1;->this$0:Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;

    invoke-virtual {v2}, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;->getColor()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/loostone/libtuning/inf/extern/ITempoCallBack;->setColor(I)V

    .line 5
    iget-object v0, p0, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess$1;->this$0:Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;

    invoke-virtual {v0}, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;->getColorChangeOrNot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess$1;->val$callBack:Lcom/loostone/libtuning/inf/extern/ITempoCallBack;

    invoke-interface {v0}, Lcom/loostone/libtuning/inf/extern/ITempoCallBack;->colorChange()V

    :cond_0
    const-wide/16 v2, 0x64

    .line 10
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    iget-object v2, p0, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess$1;->this$0:Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;

    invoke-static {v2, v1}, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;->access$002(Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;Z)Z

    .line 13
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess$1;->this$0:Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;

    invoke-static {v0, v1}, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;->access$002(Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;Z)Z

    return-void
.end method

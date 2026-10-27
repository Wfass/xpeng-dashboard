.class Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController$1;
.super Landroid/os/Handler;
.source "SDVisualizerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 82
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 86
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController$VisualizerParams;

    .line 89
    .local v0, "params":Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController$VisualizerParams;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;

    iget v2, v0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController$VisualizerParams;->mSessionId:I

    iget v3, v0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController$VisualizerParams;->mUsageType:I

    iget-object v4, v0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController$VisualizerParams;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->vendorStartAudioSession(IILjava/lang/String;)V

    .line 90
    nop

    .line 93
    .end local v0    # "params":Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController$VisualizerParams;
    :goto_0
    return-void
.end method

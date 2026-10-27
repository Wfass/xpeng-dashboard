.class Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$7;
.super Ljava/lang/Object;
.source "MediaCenterHalService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$BTStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    .line 719
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$7;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBtStatusChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .line 722
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$7;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->access$1000(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->isBluetoothStreamActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    invoke-static {}, Lcom/xiaopeng/xuiservice/base/event/EventCenter;->getInstance()Lcom/xiaopeng/xuiservice/base/event/EventCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/base/event/EventCenter;->notifyNewMediaStream()V

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$7;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->access$400(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 726
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$7;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->access$400(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalListener;->onBtStatusChanged(I)V

    .line 728
    :cond_1
    return-void
.end method

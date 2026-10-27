.class Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$6;
.super Ljava/lang/Object;
.source "MediaCenterHalService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$EventListener;


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

    .line 696
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$6;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewAudioSession(ILjava/lang/String;)V
    .locals 1
    .param p1, "usage"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 699
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$6;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->access$800(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    invoke-static {}, Lcom/xiaopeng/xuiservice/base/event/EventCenter;->getInstance()Lcom/xiaopeng/xuiservice/base/event/EventCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/base/event/EventCenter;->notifyNewMediaStream()V

    .line 701
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$6;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-static {v0, p2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->access$900(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;Ljava/lang/String;)V

    .line 703
    :cond_0
    return-void
.end method

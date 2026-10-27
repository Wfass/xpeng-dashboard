.class Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$1;
.super Ljava/lang/Object;
.source "MediaCenterManager.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)V
    .locals 0

    .line 1017
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$1;->this$0:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnFftDataCapture([BI)V
    .locals 2

    .line 1021
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$1;->this$0:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->access$1800(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)Lcom/xiaopeng/xuimanager/mediacenter/visualizer/VisualCaptureObjectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$1;->this$0:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->access$1800(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)Lcom/xiaopeng/xuimanager/mediacenter/visualizer/VisualCaptureObjectListener;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/VisualizerData;

    invoke-direct {v1, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/VisualizerData;-><init>([BI)V

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/VisualCaptureObjectListener;->OnFftDataCapture(Lcom/xiaopeng/xuimanager/mediacenter/visualizer/VisualizerData;)V

    :cond_0
    return-void
.end method

.method public OnRatioData(FF)V
    .locals 0

    return-void
.end method

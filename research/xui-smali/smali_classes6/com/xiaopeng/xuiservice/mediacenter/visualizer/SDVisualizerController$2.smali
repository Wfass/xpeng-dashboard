.class Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController$2;
.super Ljava/lang/Object;
.source "SDVisualizerController.java"

# interfaces
.implements Landroid/media/audiofx/Visualizer$OnDataCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;

    .line 356
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFftDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 1
    .param p1, "visualizer"    # Landroid/media/audiofx/Visualizer;
    .param p2, "bytes"    # [B
    .param p3, "i"    # I

    .line 365
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;

    invoke-static {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->access$000(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;Landroid/media/audiofx/Visualizer;[BI)V

    .line 366
    return-void
.end method

.method public onWaveFormDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 0
    .param p1, "visualizer"    # Landroid/media/audiofx/Visualizer;
    .param p2, "bytes"    # [B
    .param p3, "i"    # I

    .line 361
    return-void
.end method

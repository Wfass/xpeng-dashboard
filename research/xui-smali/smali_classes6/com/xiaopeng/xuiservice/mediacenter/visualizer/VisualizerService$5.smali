.class Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$5;
.super Ljava/lang/Object;
.source "VisualizerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->karaokeFftCapture([BI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

.field final synthetic val$fft:[B

.field final synthetic val$samplingRate:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;[BI)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    .line 284
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$5;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$5;->val$fft:[B

    iput p3, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$5;->val$samplingRate:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$5;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->access$200(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;)[Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$5;->val$fft:[B

    iget v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$5;->val$samplingRate:I

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDVisualizerController;->karaokeFftCapture([BI)V

    .line 288
    return-void
.end method

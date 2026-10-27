.class Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$4;
.super Ljava/lang/Object;
.source "VisualizerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->vendorStopAudioSession(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

.field final synthetic val$audioSession:I

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    .line 262
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$4;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    iput p2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$4;->val$audioSession:I

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$4;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$4;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    iget v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$4;->val$audioSession:I

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$4;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->access$500(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;ILjava/lang/String;)V

    .line 266
    return-void
.end method

.class Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$3;
.super Ljava/lang/Object;
.source "VisualizerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->vendorStartAudioSession(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

.field final synthetic val$audioSession:I

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$usage:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;IILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    .line 221
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$3;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    iput p2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$3;->val$audioSession:I

    iput p3, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$3;->val$usage:I

    iput-object p4, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$3;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$3;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    iget v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$3;->val$audioSession:I

    iget v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$3;->val$usage:I

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$3;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->access$400(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;IILjava/lang/String;)V

    .line 225
    return-void
.end method

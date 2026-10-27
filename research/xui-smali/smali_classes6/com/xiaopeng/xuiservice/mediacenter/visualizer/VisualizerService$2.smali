.class Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$2;
.super Ljava/lang/Object;
.source "VisualizerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->loadSpectrumParams()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    .line 111
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->access$300(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;)Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;->load()V

    .line 115
    return-void
.end method

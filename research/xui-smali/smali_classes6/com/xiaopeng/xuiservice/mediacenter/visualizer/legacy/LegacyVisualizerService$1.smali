.class Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$1;
.super Ljava/lang/Object;
.source "LegacyVisualizerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->loadSpectrumParams()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;

    .line 82
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;->access$200(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/legacy/LegacyVisualizerService;)Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;->load()V

    .line 86
    return-void
.end method

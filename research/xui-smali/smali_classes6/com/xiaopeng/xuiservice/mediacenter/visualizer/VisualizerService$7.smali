.class Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$7;
.super Ljava/lang/Object;
.source "VisualizerService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;
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

    .line 325
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$7;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFftDataCapture(ILjava/lang/String;[BI)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "fft"    # [B
    .param p4, "samplingRate"    # I

    .line 328
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$7;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->access$600(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$7;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->access$600(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$7;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->access$600(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;

    .line 330
    .local v1, "listener":Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;->onFftDataCapture(ILjava/lang/String;[BI)V

    .line 331
    .end local v1    # "listener":Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;
    goto :goto_0

    .line 333
    :cond_0
    return-void
.end method

.method public onRatioData(ILjava/lang/String;FF)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "ratio"    # F
    .param p4, "minRatio"    # F

    .line 337
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$7;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->access$600(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$7;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->access$600(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$7;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->access$600(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;

    .line 339
    .local v1, "listener":Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;->onRatioData(ILjava/lang/String;FF)V

    .line 340
    .end local v1    # "listener":Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;
    goto :goto_0

    .line 342
    :cond_0
    return-void
.end method

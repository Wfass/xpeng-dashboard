.class Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$SDFftDataListenerRecord;
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
    name = "SDFftDataListenerRecord"
.end annotation


# instance fields
.field public mDisplayIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mListener:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;

.field public mPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;)V
    .locals 1
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;
    .param p2, "listener"    # Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;

    .line 387
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$SDFftDataListenerRecord;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$SDFftDataListenerRecord;->mDisplayIds:Ljava/util/List;

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$SDFftDataListenerRecord;->mPackages:Ljava/util/List;

    .line 390
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$SDFftDataListenerRecord;->mListener:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;

    .line 391
    return-void
.end method


# virtual methods
.method public onFftDataCapture(ILjava/lang/String;[BI)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "fft"    # [B
    .param p4, "samplingRate"    # I

    .line 420
    return-void
.end method

.method public onRatioData(ILjava/lang/String;FF)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "ratio"    # F
    .param p4, "minRatio"    # F

    .line 425
    return-void
.end method

.method public registerDisplayId(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 394
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$SDFftDataListenerRecord;->mDisplayIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$SDFftDataListenerRecord;->mDisplayIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    :cond_0
    return-void
.end method

.method public registerPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 406
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$SDFftDataListenerRecord;->mPackages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$SDFftDataListenerRecord;->mPackages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    :cond_0
    return-void
.end method

.method public unregisterDisplayId(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 400
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$SDFftDataListenerRecord;->mDisplayIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$SDFftDataListenerRecord;->mDisplayIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    :cond_0
    return-void
.end method

.method public unregisterPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 412
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$SDFftDataListenerRecord;->mPackages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService$SDFftDataListenerRecord;->mPackages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 415
    :cond_0
    return-void
.end method

.class Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$5;
.super Ljava/lang/Object;
.source "MediaCenterHalService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;


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

    .line 680
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$5;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFftDataCapture(ILjava/lang/String;[BI)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "fft"    # [B
    .param p4, "samplingRate"    # I

    .line 683
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$5;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->access$400(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$5;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->access$400(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalListener;->onFftDataCapture(ILjava/lang/String;[BI)V

    .line 686
    :cond_0
    return-void
.end method

.method public onRatioData(ILjava/lang/String;FF)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "ratio"    # F
    .param p4, "minRatio"    # F

    .line 690
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$5;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->access$400(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$5;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->access$400(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService$MediaCenterHalListener;->onRatioData(ILjava/lang/String;FF)V

    .line 693
    :cond_0
    return-void
.end method

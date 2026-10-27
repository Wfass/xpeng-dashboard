.class Lcom/xiaopeng/xuiservice/smart/SmartLampService$7;
.super Ljava/lang/Object;
.source "SmartLampService.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartLampService;->initXUIManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartLampService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartLampService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartLampService;

    .line 405
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService$7;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLampService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnFftDataCapture([BI)V
    .locals 0
    .param p1, "bytes"    # [B
    .param p2, "i"    # I

    .line 408
    return-void
.end method

.method public OnRatioData(FF)V
    .locals 3
    .param p1, "ratio"    # F
    .param p2, "minRatio"    # F

    .line 412
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    const-string v0, "SmartLampService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRatio "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService$7;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLampService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$300(Lcom/xiaopeng/xuiservice/smart/SmartLampService;)Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->playRhythmEffect(F)Z

    .line 419
    :cond_0
    return-void
.end method

.class Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$6;
.super Ljava/lang/Object;
.source "SmartAmbientLightService.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->initXUIManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    .line 598
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnFftDataCapture([BI)V
    .locals 0
    .param p1, "bytes"    # [B
    .param p2, "i"    # I

    .line 601
    return-void
.end method

.method public OnRatioData(FF)V
    .locals 4
    .param p1, "ratio"    # F
    .param p2, "minRatio"    # F

    .line 605
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->access$1100(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->access$1200(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->access$1300(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->access$1300(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->getMusicSpectrumEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->access$1400(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;F)F

    move-result p1

    .line 607
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->access$1300(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->access$1500()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->access$1500()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x64

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-byte v1, v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->access$1600(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;)I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setMusicSpectrum(BB)V

    .line 609
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->access$1300(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->access$1700()I

    move-result v1

    int-to-byte v1, v1

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->access$1800()F

    move-result v2

    float-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;->setMusicSpectrum(BB)V

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    const/16 v1, 0xa

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->access$1500()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->access$1500()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x64

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-byte v2, v2

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->access$1600(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;)I

    move-result v3

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->access$1900(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;BBB)V

    .line 613
    return-void
.end method

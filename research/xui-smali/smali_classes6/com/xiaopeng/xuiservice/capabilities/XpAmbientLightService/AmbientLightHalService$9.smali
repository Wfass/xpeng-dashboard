.class Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$9;
.super Ljava/lang/Object;
.source "AmbientLightHalService.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->initXUIManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    .line 635
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$9;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnFftDataCapture([BI)V
    .locals 0
    .param p1, "bytes"    # [B
    .param p2, "i"    # I

    .line 638
    return-void
.end method

.method public OnRatioData(FF)V
    .locals 4
    .param p1, "ratio"    # F
    .param p2, "minRatio"    # F

    .line 642
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$9;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$1600(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$9;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$600(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$9;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$000(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 643
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$9;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$9;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$200(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$9;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$300(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$9;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$400(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)I

    move-result v1

    :goto_0
    int-to-byte v1, v1

    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$2900()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$2900()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x64

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-byte v2, v2

    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$3000()I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->setMusicSpectrum(BBB)V

    .line 645
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$9;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    const/16 v1, 0xa

    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$2900()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$2900()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x64

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-byte v2, v2

    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$3000()I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->setSpeechSpectrum(BBB)V

    .line 646
    return-void
.end method

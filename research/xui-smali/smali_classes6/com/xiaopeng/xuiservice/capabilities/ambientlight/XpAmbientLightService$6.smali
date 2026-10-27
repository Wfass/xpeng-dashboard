.class Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$6;
.super Ljava/lang/Object;
.source "XpAmbientLightService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 2628
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$6;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFftDataCapture(ILjava/lang/String;[BI)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "pgkName"    # Ljava/lang/String;
    .param p3, "fft"    # [B
    .param p4, "samplingRate"    # I

    .line 2631
    return-void
.end method

.method public onRatioData(ILjava/lang/String;FF)V
    .locals 8
    .param p1, "displayId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "ratio"    # F
    .param p4, "minRatio"    # F

    .line 2635
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2636
    .local v0, "time":J
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$6;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$9100(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)J

    move-result-wide v2

    sub-long v2, v0, v2

    long-to-int v2, v2

    .line 2637
    .local v2, "elapsed":I
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$6;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1300(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I

    move-result v3

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$6;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$3800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I

    move-result v4

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x64

    .line 2638
    .local v3, "fade":I
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$6;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$9200(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3c23d70a    # 0.01f

    mul-float/2addr v4, v5

    .line 2640
    .local v4, "threshold":F
    cmpl-float v5, p3, v4

    if-lez v5, :cond_0

    sub-float v5, p3, v4

    iget-object v6, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$6;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v6}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$9300(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)F

    move-result v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_1

    :cond_0
    if-le v2, v3, :cond_3

    .line 2641
    :cond_1
    const/16 v5, 0xa

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v6, p3

    float-to-int v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2643
    .local v5, "bright":I
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$6;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-object v7, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$6;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v7}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1300(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I

    move-result v7

    if-eq v7, v5, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v5, v5, -0x1

    .end local v5    # "bright":I
    :goto_0
    invoke-static {v6, v5}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1302(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)I

    .line 2644
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$6;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$3602(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Z)Z

    .line 2645
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$6;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v5, v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$9102(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;J)J

    .line 2648
    :cond_3
    const-string v5, "XpAmbientLightService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onRatioData, ratio="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", prev ratio="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$6;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 2649
    invoke-static {v7}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$9300(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", mRhythmBright="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$6;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v7}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1300(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2648
    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2652
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$6;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v5, p3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$9302(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;F)F

    .line 2653
    return-void
.end method

.class Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$4;
.super Ljava/lang/Object;
.source "XpAmbientLightService.java"

# interfaces
.implements Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->addVcuManagerCallback()V
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

    .line 1266
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$4;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 5
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 1269
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21601225

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$4;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 1270
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$6400(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$4;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$7100(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$4;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$2600(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1272
    :cond_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1273
    .local v0, "speed":F
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$4;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$8200(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;F)I

    move-result v1

    .line 1275
    .local v1, "current":I
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$4;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1400(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I

    move-result v2

    const/4 v3, 0x0

    if-eq v2, v1, :cond_1

    .line 1276
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$4;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v2, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1402(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)I

    .line 1277
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$4;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$3702(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Z)Z

    .line 1279
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$4;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    const/high16 v4, 0x40400000    # 3.0f

    cmpl-float v4, v0, v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$4;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$7100(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$4;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$2600(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x3

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    nop

    :cond_3
    :goto_0
    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1102(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)I

    .line 1281
    const-string v2, "XpAmbientLightService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onChangeSpeed, speed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", mGroup="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$4;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 1282
    invoke-static {v4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1100(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", bright="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$4;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1400(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1281
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    .end local v0    # "speed":F
    .end local v1    # "current":I
    :cond_4
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 1289
    return-void
.end method

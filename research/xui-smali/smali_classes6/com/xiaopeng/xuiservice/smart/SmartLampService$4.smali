.class Lcom/xiaopeng/xuiservice/smart/SmartLampService$4;
.super Ljava/lang/Object;
.source "SmartLampService.java"

# interfaces
.implements Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartLampService;->addEspManagerCallback()V
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

    .line 211
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService$4;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLampService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 5
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 214
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$900()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21402403

    if-ne v0, v1, :cond_3

    .line 215
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 217
    .local v0, "enable":Z
    :goto_0
    const-string v2, "SmartLampService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAvhStatus event, value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$1000()Z

    move-result v2

    if-eq v0, v2, :cond_3

    .line 220
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$1100()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 221
    const-string v1, "SmartLampService"

    const-string v2, "onAvhStatus active, play SayhiEffect"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService$4;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLampService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$300(Lcom/xiaopeng/xuiservice/smart/SmartLampService;)Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->playSayhiEffect()Z

    goto :goto_1

    .line 224
    :cond_1
    if-nez v0, :cond_2

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$1200()Z

    move-result v1

    if-nez v1, :cond_2

    .line 225
    const-string v1, "SmartLampService"

    const-string v2, "onAvhStatus inactive, stop SayhiEffect"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService$4;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLampService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$300(Lcom/xiaopeng/xuiservice/smart/SmartLampService;)Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->stopSayhiEffect()V

    .line 229
    :cond_2
    :goto_1
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$1002(Z)Z

    .line 232
    .end local v0    # "enable":Z
    :cond_3
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 236
    return-void
.end method

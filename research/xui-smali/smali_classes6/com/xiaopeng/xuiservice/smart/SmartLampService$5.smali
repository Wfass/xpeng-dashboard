.class Lcom/xiaopeng/xuiservice/smart/SmartLampService$5;
.super Ljava/lang/Object;
.source "SmartLampService.java"

# interfaces
.implements Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartLampService;->addVcuManagerCallback()V
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

    .line 243
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService$5;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLampService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 5
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 246
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401205

    if-ne v0, v1, :cond_4

    .line 247
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$1102(I)I

    .line 248
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$1100()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 249
    .local v0, "enable":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter P"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$900()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ", play SayhiEffect"

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "playMessage":Ljava/lang/String;
    const-string v2, "SmartLampService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onVcuGearLevel event, value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$1100()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$1200()Z

    move-result v2

    if-eq v0, v2, :cond_4

    .line 254
    const-string v2, "SmartLampService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onVcuGearLevel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    move-object v4, v1

    goto :goto_2

    :cond_2
    const-string v4, "leave P, stop Effect"

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$900()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 257
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService$5;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLampService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$300(Lcom/xiaopeng/xuiservice/smart/SmartLampService;)Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->playSayhiEffect()Z

    goto :goto_3

    .line 259
    :cond_3
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService$5;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLampService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$300(Lcom/xiaopeng/xuiservice/smart/SmartLampService;)Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->stopEffect()V

    .line 261
    :goto_3
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$1202(Z)Z

    .line 264
    .end local v0    # "enable":Z
    .end local v1    # "playMessage":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 268
    return-void
.end method

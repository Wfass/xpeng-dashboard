.class Lcom/xiaopeng/xuiservice/smart/SmartLampService$3;
.super Ljava/lang/Object;
.source "SmartLampService.java"

# interfaces
.implements Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartLampService;->addBcmManagerCallback()V
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

    .line 141
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLampService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 5
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 146
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$200()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 148
    :cond_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401c02

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_b

    const v1, 0x21401c28

    if-eq v0, v1, :cond_9

    const v1, 0x21401d21

    if-eq v0, v1, :cond_5

    const v1, 0x21411cc0

    if-eq v0, v1, :cond_1

    goto/16 :goto_4

    .line 162
    :cond_1
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 163
    .local v0, "data":[Ljava/lang/Integer;
    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v3, :cond_2

    aget-object v1, v0, v3

    .line 164
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v3, :cond_2

    move v2, v3

    nop

    :cond_2
    move v1, v2

    .line 166
    .local v1, "disable":Z
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$600()Z

    move-result v2

    if-eq v1, v2, :cond_f

    .line 167
    const-string v2, "SmartLampService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "turnLamp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_3

    const-string v4, "OFF"

    goto :goto_0

    :cond_3
    const-string v4, "ON, stopEffect"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    if-nez v1, :cond_4

    .line 170
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLampService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$300(Lcom/xiaopeng/xuiservice/smart/SmartLampService;)Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->stopEffect()V

    .line 172
    :cond_4
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$602(Z)Z

    goto/16 :goto_4

    .line 188
    .end local v0    # "data":[Ljava/lang/Integer;
    .end local v1    # "disable":Z
    :cond_5
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_6

    move v2, v3

    nop

    :cond_6
    move v0, v2

    .line 190
    .local v0, "disable":Z
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$800()Z

    move-result v1

    if-eq v0, v1, :cond_f

    .line 191
    const-string v1, "SmartLampService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "temporaryLock "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_7

    const-string v3, "OFF"

    goto :goto_1

    :cond_7
    const-string v3, "ON, stopEffect"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    if-nez v0, :cond_8

    .line 194
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLampService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$300(Lcom/xiaopeng/xuiservice/smart/SmartLampService;)Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->stopEffect()V

    .line 196
    :cond_8
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$802(Z)Z

    .end local v0    # "disable":Z
    goto/16 :goto_4

    .line 150
    :cond_9
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$500()Z

    move-result v0

    if-nez v0, :cond_f

    .line 151
    nop

    .line 152
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_a

    .line 151
    move v2, v3

    goto :goto_2

    .line 152
    :cond_a
    nop

    .line 151
    :goto_2
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$002(Z)Z

    .line 154
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$000()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLampService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$300(Lcom/xiaopeng/xuiservice/smart/SmartLampService;)Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->getRunningEffect()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 155
    const-string v0, "SmartLampService"

    const-string v1, "headLight ON, suspendEffect"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLampService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$300(Lcom/xiaopeng/xuiservice/smart/SmartLampService;)Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->suspendEffect()V

    goto :goto_4

    .line 176
    :cond_b
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_c

    move v2, v3

    nop

    :cond_c
    move v0, v2

    .line 178
    .restart local v0    # "disable":Z
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$700()Z

    move-result v1

    if-eq v0, v1, :cond_f

    .line 179
    const-string v1, "SmartLampService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rearFogLamp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_d

    const-string v3, "OFF"

    goto :goto_3

    :cond_d
    const-string v3, "ON, stopEffect"

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    if-nez v0, :cond_e

    .line 182
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLampService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLampService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$300(Lcom/xiaopeng/xuiservice/smart/SmartLampService;)Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->stopEffect()V

    .line 184
    :cond_e
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLampService;->access$702(Z)Z

    .line 200
    .end local v0    # "disable":Z
    :cond_f
    :goto_4
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 204
    return-void
.end method

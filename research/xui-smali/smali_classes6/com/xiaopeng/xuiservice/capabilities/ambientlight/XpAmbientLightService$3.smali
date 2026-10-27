.class Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$3;
.super Ljava/lang/Object;
.source "XpAmbientLightService.java"

# interfaces
.implements Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->addMcuManagerCallback()V
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

    .line 1207
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 8
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 1210
    const-string v0, "XpAmbientLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangeEvent(mcu) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", hasEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$4700(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401409

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_8

    const v1, 0x2140143e

    if-eq v0, v1, :cond_0

    goto/16 :goto_6

    .line 1233
    :cond_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1235
    .local v0, "val":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1600(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$7900(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_3

    .line 1237
    :cond_1
    const/4 v1, 0x3

    if-eq v0, v3, :cond_2

    if-eq v0, v1, :cond_2

    .end local v0    # "val":I
    goto/16 :goto_6

    .line 1240
    .restart local v0    # "val":I
    :cond_2
    if-eq v0, v1, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v2

    .line 1242
    .local v1, "status":Z
    :goto_0
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$8000(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z

    move-result v4

    if-ne v1, v4, :cond_4

    return-void

    .line 1244
    :cond_4
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v4, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$8002(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Z)Z

    .line 1245
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$8100(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1246
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v4

    .line 1248
    .local v4, "owner":Ljava/lang/String;
    const-string v5, "XpAmbientLightService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onChangeEvent, hasMcuOn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    if-eqz v1, :cond_5

    const-string v7, "interrupt"

    goto :goto_1

    :cond_5
    const-string v7, "recovery"

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " Ambient"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1248
    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    new-instance v6, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;

    if-nez v1, :cond_6

    move v7, v3

    goto :goto_2

    :cond_6
    move v7, v2

    :goto_2
    invoke-direct {v6, v7, v2, v4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;-><init>(ZZLjava/lang/String;)V

    invoke-static {v5, v3, v6}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$7800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;ILcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;)I

    .end local v0    # "val":I
    .end local v1    # "status":Z
    .end local v4    # "owner":Ljava/lang/String;
    goto :goto_6

    .line 1235
    .restart local v0    # "val":I
    :cond_7
    :goto_3
    return-void

    .line 1214
    .end local v0    # "val":I
    :cond_8
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_9

    move v0, v3

    goto :goto_4

    :cond_9
    move v0, v2

    .line 1217
    .local v0, "status":Z
    :goto_4
    if-eqz v0, :cond_a

    .line 1218
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$7400(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z

    move-result v4

    invoke-static {v1, v4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$7500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Z)V

    .line 1221
    :cond_a
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$7600(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z

    move-result v1

    if-ne v0, v1, :cond_b

    return-void

    .line 1223
    :cond_b
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$7700(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1224
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 1226
    .local v1, "owner":Ljava/lang/String;
    const-string v4, "XpAmbientLightService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onChangeEvent, hasIgOn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    if-eqz v0, :cond_c

    const-string v6, "recovery"

    goto :goto_5

    :cond_c
    const-string v6, "interrupt"

    :goto_5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Ambient"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1226
    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    new-instance v5, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;

    invoke-direct {v5, v0, v2, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;-><init>(ZZLjava/lang/String;)V

    invoke-static {v4, v3, v5}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$7800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;ILcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;)I

    .line 1230
    .end local v1    # "owner":Ljava/lang/String;
    nop

    .line 1257
    .end local v0    # "status":Z
    :cond_d
    :goto_6
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 1261
    return-void
.end method

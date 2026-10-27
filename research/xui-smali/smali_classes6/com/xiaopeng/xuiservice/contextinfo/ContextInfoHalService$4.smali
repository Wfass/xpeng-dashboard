.class Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$4;
.super Ljava/lang/Object;
.source "ContextInfoHalService.java"

# interfaces
.implements Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->initCarListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    .line 227
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$4;->this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 231
    :try_start_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401205

    if-ne v0, v1, :cond_1

    .line 232
    const-string v0, "ContextInfoHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarVcuEventCallback onChangeEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 234
    .local v0, "gear":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$4;->this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->access$400(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$4;->this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->access$402(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;I)I

    .line 236
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$4;->this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->access$200(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$4;->this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->access$200(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$4;->this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->access$400(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;->onGearChanged(I)V

    .line 240
    .end local v0    # "gear":I
    :cond_0
    goto :goto_0

    .line 248
    :cond_1
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401228

    if-ne v0, v1, :cond_2

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$4;->this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->access$200(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$4;->this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->access$200(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;->onChargingGunStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :cond_2
    :goto_0
    goto :goto_1

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 264
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 268
    return-void
.end method

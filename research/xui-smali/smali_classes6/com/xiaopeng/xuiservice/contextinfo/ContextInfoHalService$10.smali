.class Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$10;
.super Ljava/lang/Object;
.source "ContextInfoHalService.java"

# interfaces
.implements Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;


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

    .line 411
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$10;->this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 414
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401c0c

    if-ne v0, v1, :cond_2

    .line 416
    const-string v0, "ContextInfoHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarSrsManager.CarSrsEventCallback onChangeEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 419
    .local v0, "srsStatus":I
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 420
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$10;->this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-static {v2, v1}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->access$702(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;Z)Z

    goto :goto_0

    .line 421
    :cond_0
    if-ne v0, v1, :cond_1

    .line 422
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$10;->this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->access$702(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;Z)Z

    .line 424
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$10;->this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->access$200(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 425
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$10;->this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->access$200(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;->onBeltStatus(I)V

    .line 428
    .end local v0    # "srsStatus":I
    :cond_2
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 432
    return-void
.end method

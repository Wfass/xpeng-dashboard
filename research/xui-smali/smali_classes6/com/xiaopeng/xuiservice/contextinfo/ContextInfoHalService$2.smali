.class Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$2;
.super Ljava/lang/Object;
.source "ContextInfoHalService.java"

# interfaces
.implements Landroid/car/hardware/ciu/CarCiuManager$CarCiuEventCallback;


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

    .line 177
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$2;->this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 180
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x2140281c

    if-ne v0, v1, :cond_0

    .line 182
    const-string v0, "ContextInfoHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarCiuManager.CarCiuEventCallback onChangeEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$2;->this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->access$200(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$2;->this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->access$200(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;->onAutoBrightness(II)V

    .line 188
    :cond_0
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 192
    return-void
.end method

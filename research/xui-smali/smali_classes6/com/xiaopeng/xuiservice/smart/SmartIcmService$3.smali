.class Lcom/xiaopeng/xuiservice/smart/SmartIcmService$3;
.super Ljava/lang/Object;
.source "SmartIcmService.java"

# interfaces
.implements Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->initCarListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    .line 180
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onChangeEvent$0(Lcom/xiaopeng/xuiservice/smart/SmartIcmService$3;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->access$800(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;)V

    .line 193
    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3
    .param p1, "val"    # Landroid/car/hardware/CarPropertyValue;

    .line 183
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401409

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarMcuManager.CarMcuEventCallback onChangeEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->access$200(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;)V

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->access$700(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;)V

    .line 191
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartIcmService$3$b9JlXEIsNfRJ4ZJtxCzOfFmb1As;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartIcmService$3$b9JlXEIsNfRJ4ZJtxCzOfFmb1As;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartIcmService$3;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->access$600(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;)Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->access$600(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;)Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->handleIGON()V

    .line 204
    :cond_1
    :goto_0
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 2
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->TAG:Ljava/lang/String;

    const-string v1, "CarMcuManager.CarMcuEventCallback onErrorEvent"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method

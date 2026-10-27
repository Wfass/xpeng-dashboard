.class Lcom/xiaopeng/xuiservice/smart/SmartIcmService$2;
.super Ljava/lang/Object;
.source "SmartIcmService.java"

# interfaces
.implements Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;


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

    .line 139
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 4
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 142
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21101611

    if-eq v0, v1, :cond_1

    const v1, 0x2140160e

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XUIService CarIcmEventCallback ID_ICM_CONNECTED value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->access$200(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;)V

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->access$300(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;)V

    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    .local v0, "signal":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XUIService CarIcmEventCallback ID_ICM_SYNC_SIGNAL value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    if-eqz v0, :cond_2

    const-string v1, "SysReady"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 158
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->access$200(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;)V

    .line 159
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->access$300(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;)V

    .line 161
    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "CancelList"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 162
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->access$400(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;Ljava/lang/String;)V

    .line 164
    :cond_3
    if-eqz v0, :cond_4

    const-string v1, "ChangeKeyMode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 165
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->access$500(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;Ljava/lang/String;)V

    .line 171
    .end local v0    # "signal":Ljava/lang/String;
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->access$600(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;)Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->access$600(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;)Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->sendEventMsg(Landroid/car/hardware/CarPropertyValue;)V

    .line 174
    :cond_5
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 178
    return-void
.end method

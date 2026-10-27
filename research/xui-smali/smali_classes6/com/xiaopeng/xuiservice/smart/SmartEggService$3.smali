.class Lcom/xiaopeng/xuiservice/smart/SmartEggService$3;
.super Ljava/lang/Object;
.source "SmartEggService.java"

# interfaces
.implements Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartEggService;->initCarListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartEggService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartEggService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    .line 161
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 164
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401c0c

    if-ne v0, v1, :cond_1

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->TAG:Ljava/lang/String;

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

    .line 168
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->access$702(Lcom/xiaopeng/xuiservice/smart/SmartEggService;Z)Z

    goto :goto_0

    .line 170
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->access$702(Lcom/xiaopeng/xuiservice/smart/SmartEggService;Z)Z

    .line 174
    :cond_1
    :goto_0
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 178
    return-void
.end method

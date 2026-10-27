.class Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$2;
.super Ljava/lang/Object;
.source "XpAutoManager.java"

# interfaces
.implements Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->initCarListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    .line 91
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onChangeEvent$0(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$2;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$700(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->connect()Z

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 94
    const-string v0, "XpAutoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCarVcuEventCallback value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401228

    if-ne v0, v1, :cond_2

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$302(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;I)I

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$400(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)V

    .line 104
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->setUserInterfere(Z)V

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$500(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/-$$Lambda$XpAutoManager$2$vkHWgjIfId5lBXorC0O_m6qYd4g;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/-$$Lambda$XpAutoManager$2$vkHWgjIfId5lBXorC0O_m6qYd4g;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$2;)V

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$600(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$500(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 115
    :cond_2
    :goto_0
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 119
    return-void
.end method

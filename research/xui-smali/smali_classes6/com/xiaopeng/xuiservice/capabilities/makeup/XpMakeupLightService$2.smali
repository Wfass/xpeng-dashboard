.class Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$2;
.super Ljava/lang/Object;
.source "XpMakeupLightService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    .line 637
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectedCar()V
    .locals 4

    .line 641
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->access$300()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    .line 643
    .local v0, "bcm":Landroid/car/hardware/bcm/CarBcmManager;
    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getCoverPlateStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->access$102(Z)Z

    .line 645
    const-string v1, "XpMakeupLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConnectedCar, makeupLight "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->access$100()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "open"

    goto :goto_1

    :cond_1
    const-string v3, "close"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->access$100()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->access$200(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    .end local v0    # "bcm":Landroid/car/hardware/bcm/CarBcmManager;
    goto :goto_2

    .line 648
    :catch_0
    move-exception v0

    .line 650
    :goto_2
    return-void
.end method

.method public onDisconnectCar()V
    .locals 1

    .line 654
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->access$102(Z)Z

    .line 655
    return-void
.end method

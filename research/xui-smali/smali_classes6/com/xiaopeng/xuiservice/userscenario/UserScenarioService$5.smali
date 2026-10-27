.class Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$5;
.super Ljava/lang/Object;
.source "UserScenarioService.java"

# interfaces
.implements Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    .line 225
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$5;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 4
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 228
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21411c19

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 233
    .local v0, "array":[Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 235
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$000()Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$400(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;[Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .end local v0    # "array":[Ljava/lang/Integer;
    :cond_1
    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "UserScenarioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bcm onChangeEvent,e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .end local v0    # "e":Ljava/lang/Exception;
    nop

    .line 244
    :goto_0
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 248
    return-void
.end method

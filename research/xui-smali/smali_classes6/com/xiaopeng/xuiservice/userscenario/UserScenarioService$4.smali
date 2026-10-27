.class Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$4;
.super Ljava/lang/Object;
.source "UserScenarioService.java"

# interfaces
.implements Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;


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

    .line 202
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$4;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 4
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 205
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401205

    if-ne v0, v1, :cond_0

    .line 206
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 207
    .local v0, "gear":I
    const-string v1, "UserScenarioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gear changed to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$000()Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$300(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;I)V

    .line 210
    .end local v0    # "gear":I
    :cond_0
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 214
    return-void
.end method

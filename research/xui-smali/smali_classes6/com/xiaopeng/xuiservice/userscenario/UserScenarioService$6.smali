.class Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$6;
.super Ljava/lang/Object;
.source "UserScenarioService.java"

# interfaces
.implements Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;


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

    .line 252
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$6;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 1
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$6;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$500(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;Landroid/car/hardware/CarPropertyValue;)V

    .line 256
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 260
    return-void
.end method

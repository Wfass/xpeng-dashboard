.class Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$3;
.super Landroid/content/BroadcastReceiver;
.source "UserScenarioService.java"


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

    .line 194
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$3;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$3;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    invoke-static {v0, p2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->access$200(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;Landroid/content/Intent;)V

    .line 198
    return-void
.end method

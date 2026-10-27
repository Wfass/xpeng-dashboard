.class Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$RestoreTaskCheckRunnable;
.super Ljava/lang/Object;
.source "UserScenarioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreTaskCheckRunnable"
.end annotation


# instance fields
.field private configer:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;)V
    .locals 0

    .line 1212
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$RestoreTaskCheckRunnable;->this$0:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$1;

    .line 1212
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$RestoreTaskCheckRunnable;-><init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1219
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$RestoreTaskCheckRunnable;->configer:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->restoreTaskCheck(ZZ)V

    .line 1220
    const-string v0, "UserScenarioService"

    const-string v1, "RestoreTaskCheckRunnable,RestoreTaskCheck"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    return-void
.end method

.method public setConfiger(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)V
    .locals 0
    .param p1, "configer"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 1215
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService$RestoreTaskCheckRunnable;->configer:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 1216
    return-void
.end method

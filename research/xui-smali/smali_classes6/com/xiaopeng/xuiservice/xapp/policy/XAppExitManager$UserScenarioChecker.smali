.class Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$UserScenarioChecker;
.super Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$Checker;
.source "XAppExitManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserScenarioChecker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;

    .line 100
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$UserScenarioChecker;->this$0:Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;

    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$Checker;-><init>(Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;)V

    return-void
.end method


# virtual methods
.method public check(ILjava/lang/String;)Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$ExitCheckResult;
    .locals 8
    .param p1, "screenId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 104
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$ExitCheckResult;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$ExitCheckResult;-><init>()V

    .line 105
    .local v0, "checkResult":Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$ExitCheckResult;
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getInstance()Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getCurrentUserScenarios()[Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "scenarioNames":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 107
    .local v4, "scenario":Ljava/lang/String;
    const-string v5, "XAppCheckPolicyExit"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCurrentUserScenario:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "normal_mode"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 109
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getInstance()Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    move-result-object v5

    invoke-virtual {v5, v4, p1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->isScreenIdMatch(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 110
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getInstance()Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->canAppExit(ILjava/lang/String;)I

    move-result v5

    .line 111
    .local v5, "checkRet":I
    packed-switch v5, :pswitch_data_0

    .line 121
    goto :goto_1

    .line 117
    :pswitch_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;->access$300()I

    move-result v2

    iput v2, v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$ExitCheckResult;->result:I

    .line 118
    iput-object v4, v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$ExitCheckResult;->scenarioName:Ljava/lang/String;

    .line 119
    return-object v0

    .line 113
    :pswitch_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;->access$200()I

    move-result v2

    iput v2, v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$ExitCheckResult;->result:I

    .line 114
    iput-object v4, v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$ExitCheckResult;->scenarioName:Ljava/lang/String;

    .line 115
    return-object v0

    .line 106
    .end local v4    # "scenario":Ljava/lang/String;
    .end local v5    # "checkRet":I
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 125
    :cond_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

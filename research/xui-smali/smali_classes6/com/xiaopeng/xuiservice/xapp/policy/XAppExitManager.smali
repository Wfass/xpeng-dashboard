.class public Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;
.super Ljava/lang/Object;
.source "XAppExitManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$UserScenarioChecker;,
        Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$Checker;,
        Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$Holder;,
        Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$ExitCheckResult;
    }
.end annotation


# static fields
.field private static EXIT_DENIED:I = 0x0

.field private static EXIT_DENIED_MODE:I = 0x0

.field private static EXIT_RECONFIRM:I = 0x0

.field private static EXIT_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "XAppCheckPolicyExit"


# instance fields
.field private mCheckerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$Checker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const/4 v0, 0x0

    sput v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;->EXIT_SUCCESS:I

    .line 24
    const/16 v0, 0x3e8

    sput v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;->EXIT_DENIED:I

    .line 25
    sget v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;->EXIT_DENIED:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;->EXIT_DENIED_MODE:I

    .line 26
    sget v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;->EXIT_DENIED:I

    add-int/lit8 v0, v0, 0x2

    sput v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;->EXIT_RECONFIRM:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;->initCheckerList()V

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$1;

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 19
    sget v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;->EXIT_SUCCESS:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 19
    sget v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;->EXIT_DENIED_MODE:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .line 19
    sget v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;->EXIT_RECONFIRM:I

    return v0
.end method

.method public static get()Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;
    .locals 1

    .line 49
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$Holder;->instance:Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;

    return-object v0
.end method

.method private getModeDesText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "screenId"    # I

    .line 84
    const v0, 0x7f0e00fb

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "modeDes":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getInstance()Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getRunningScenario(I)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "mode":Ljava/lang/String;
    const-string v2, "XAppCheckPolicyExit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scenario_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "string"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 89
    .local v2, "resId":I
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 92
    goto :goto_0

    .line 90
    :catch_0
    move-exception v3

    .line 91
    .local v3, "ex":Ljava/lang/Exception;
    const-string v4, "XAppCheckPolicyExit"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getModeDesText:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    const v3, 0x7f0e00fc

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private initCheckerList()V
    .locals 2

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;->mCheckerList:Ljava/util/List;

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;->mCheckerList:Ljava/util/List;

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$UserScenarioChecker;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$UserScenarioChecker;-><init>(Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method static synthetic lambda$exitApp$0(Ljava/lang/String;)V
    .locals 1
    .param p0, "scenarioName"    # Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getInstance()Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->exitUserScenario(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private showDeniedToast(I)V
    .locals 3
    .param p1, "screenId"    # I

    .line 76
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 77
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;->getModeDesText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "message":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1}, Lcom/xiaopeng/xuiservice/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;II)V

    .line 81
    :cond_0
    return-void
.end method


# virtual methods
.method public exitApp(ILjava/lang/String;)I
    .locals 7
    .param p1, "screenId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "checkResult":Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$ExitCheckResult;
    const/4 v1, 0x0

    .line 55
    .local v1, "isReconfirm":Z
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;->mCheckerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$Checker;

    .line 56
    .local v3, "checker":Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$Checker;
    invoke-virtual {v3, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$Checker;->check(ILjava/lang/String;)Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$ExitCheckResult;

    move-result-object v0

    .line 57
    const-string v4, "XAppCheckPolicyExit"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exitApp checker="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",pkgName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    sget v4, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;->EXIT_RECONFIRM:I

    iget v5, v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$ExitCheckResult;->result:I

    if-ne v4, v5, :cond_0

    .line 59
    const-string v4, "XAppCheckPolicyExit"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exitApp,do exitUserScenario,scenario="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$ExitCheckResult;->scenarioName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/4 v1, 0x1

    .line 61
    iget-object v4, v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$ExitCheckResult;->scenarioName:Ljava/lang/String;

    .line 62
    .local v4, "scenarioName":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v5

    new-instance v6, Lcom/xiaopeng/xuiservice/xapp/policy/-$$Lambda$XAppExitManager$YMXT4D-OGx1CONHBgNIW4aTcw30;

    invoke-direct {v6, v4}, Lcom/xiaopeng/xuiservice/xapp/policy/-$$Lambda$XAppExitManager$YMXT4D-OGx1CONHBgNIW4aTcw30;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 63
    sget v5, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;->EXIT_DENIED_MODE:I

    iput v5, v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$ExitCheckResult;->result:I

    .line 65
    .end local v3    # "checker":Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$Checker;
    .end local v4    # "scenarioName":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 66
    :cond_1
    if-eqz v0, :cond_3

    .line 67
    iget v2, v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$ExitCheckResult;->result:I

    sget v3, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;->EXIT_DENIED_MODE:I

    if-ne v2, v3, :cond_2

    if-nez v1, :cond_2

    .line 68
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;->showDeniedToast(I)V

    .line 70
    :cond_2
    iget v2, v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$ExitCheckResult;->result:I

    return v2

    .line 72
    :cond_3
    sget v2, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;->EXIT_SUCCESS:I

    return v2
.end method

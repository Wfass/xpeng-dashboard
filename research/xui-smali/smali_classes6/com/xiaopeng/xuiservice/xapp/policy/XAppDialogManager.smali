.class public Lcom/xiaopeng/xuiservice/xapp/policy/XAppDialogManager;
.super Ljava/lang/Object;
.source "XAppDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/xapp/policy/XAppDialogManager$Holder;
    }
.end annotation


# static fields
.field private static DIALOG_SHOW_DENIED:I = 0x0

.field private static DIALOG_SHOW_DENIED_MODE:I = 0x0

.field private static DIALOG_SHOW_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "XAppCheckPolicyDialog"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const/4 v0, 0x0

    sput v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppDialogManager;->DIALOG_SHOW_SUCCESS:I

    .line 12
    const/16 v0, 0x7d0

    sput v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppDialogManager;->DIALOG_SHOW_DENIED:I

    .line 13
    sget v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppDialogManager;->DIALOG_SHOW_DENIED:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppDialogManager;->DIALOG_SHOW_DENIED_MODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/xiaopeng/xuiservice/xapp/policy/XAppDialogManager;
    .locals 1

    .line 20
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppDialogManager$Holder;->instance:Lcom/xiaopeng/xuiservice/xapp/policy/XAppDialogManager;

    return-object v0
.end method


# virtual methods
.method public checkAppShow(ILjava/lang/String;)I
    .locals 4
    .param p1, "screenId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 24
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getInstance()Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getCurrentUserScenario()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "scenarioName":Ljava/lang/String;
    const-string v1, "XAppCheckPolicyDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentUserScenario:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "normal_mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 27
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getInstance()Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->isDialogLimit(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    sget v1, Lcom/xiaopeng/xuiservice/xapp/policy/XAppDialogManager;->DIALOG_SHOW_DENIED_MODE:I

    return v1

    .line 31
    :cond_0
    sget v1, Lcom/xiaopeng/xuiservice/xapp/policy/XAppDialogManager;->DIALOG_SHOW_SUCCESS:I

    return v1
.end method

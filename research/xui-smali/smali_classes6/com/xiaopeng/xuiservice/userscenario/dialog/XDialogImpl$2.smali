.class Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl$2;
.super Ljava/lang/Object;
.source "XDialogImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->setDialogContent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/CharSequence;Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;

.field final synthetic val$configer:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

.field final synthetic val$exitDialogConfig:Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;

.field final synthetic val$items:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;[Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;

    .line 58
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl$2;->this$0:Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl$2;->val$exitDialogConfig:Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl$2;->val$configer:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    iput-object p4, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl$2;->val$items:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl$2;->this$0:Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->access$000(Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;)Lcom/xiaopeng/xui/app/XDialogTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogTemplate;->dismiss()Lcom/xiaopeng/xui/app/XDialogTemplate;

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl$2;->val$exitDialogConfig:Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;

    iget-object v0, v0, Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;->buttonConfigs:[Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig$ButtonConfig;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig$ButtonConfig;->isPositive:Z

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl$2;->this$0:Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->access$100(Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;)Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl$2;->val$configer:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl$2;->val$items:[Ljava/lang/CharSequence;

    aget-object v1, v3, v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->exitScenarioDirect(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;Ljava/lang/String;)V

    .line 64
    const-string v0, "XDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showXDialogTemplate,on click second yes,configer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl$2;->val$configer:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "eventDialogCancelMessage"

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl$2;->val$items:[Ljava/lang/CharSequence;

    aget-object v1, v3, v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl$2;->val$configer:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    const-string v2, "eventNotify"

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->launchApp(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 69
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl$2;->val$configer:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setRequestExitReason(Ljava/lang/String;)V

    .line 70
    const-string v1, "XDialogImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showXDialogTemplate,on click second no,configer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl$2;->val$configer:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void
.end method

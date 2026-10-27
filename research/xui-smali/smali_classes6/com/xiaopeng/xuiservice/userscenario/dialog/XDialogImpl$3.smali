.class Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl$3;
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

    .line 41
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl$3;->this$0:Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl$3;->val$exitDialogConfig:Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl$3;->val$configer:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    iput-object p4, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl$3;->val$items:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl$3;->this$0:Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->access$000(Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;)Lcom/xiaopeng/xui/app/XDialogTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogTemplate;->dismiss()Lcom/xiaopeng/xui/app/XDialogTemplate;

    .line 45
    const-string v0, "XDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showXDialogTemplate,on click first no,isPositive:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl$3;->val$exitDialogConfig:Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;

    iget-object v2, v2, Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;->buttonConfigs:[Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig$ButtonConfig;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-boolean v2, v2, Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig$ButtonConfig;->isPositive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl$3;->val$exitDialogConfig:Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;

    iget-object v0, v0, Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;->buttonConfigs:[Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig$ButtonConfig;

    aget-object v0, v0, v3

    iget-boolean v0, v0, Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig$ButtonConfig;->isPositive:Z

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl$3;->this$0:Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->access$100(Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;)Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl$3;->val$configer:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl$3;->val$items:[Ljava/lang/CharSequence;

    aget-object v2, v2, v3

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->exitScenarioDirect(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;Ljava/lang/String;)V

    .line 48
    const-string v0, "XDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showXDialogTemplate,on click first yes,configer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl$3;->val$configer:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "eventDialogCancelMessage"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl$3;->val$items:[Ljava/lang/CharSequence;

    aget-object v2, v2, v3

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl$3;->val$configer:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    const-string v2, "eventNotify"

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->launchApp(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 53
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl$3;->val$configer:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setRequestExitReason(Ljava/lang/String;)V

    .line 54
    const-string v1, "XDialogImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showXDialogTemplate,on click first no,configer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl$3;->val$configer:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void
.end method

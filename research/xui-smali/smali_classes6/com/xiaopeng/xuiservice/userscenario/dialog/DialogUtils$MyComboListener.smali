.class public Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Lcom/xiaopeng/speech/protocol/node/combo/ComboListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyComboListener"
.end annotation


# instance fields
.field private mConfiger:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

.field private mDialogMessageArray:[Ljava/lang/CharSequence;

.field private mExitDialogConfig:Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;

.field private mScreenId:I

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils;Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;I[Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils;
    .param p2, "configer"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .param p3, "exitDialogConfig"    # Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;
    .param p4, "screenId"    # I
    .param p5, "dialogMessageArray"    # [Ljava/lang/CharSequence;

    .line 168
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;->this$0:Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;->mConfiger:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 170
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;->mExitDialogConfig:Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;

    .line 171
    iput p4, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;->mScreenId:I

    .line 172
    iput-object p5, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;->mDialogMessageArray:[Ljava/lang/CharSequence;

    .line 173
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 5

    .line 198
    const-string v0, "ScenarioDialogUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCancel,mExitDialogConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;->mExitDialogConfig:Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils;->access$000()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;->mScreenId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;

    .line 200
    .local v0, "mXDialogImpl":Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->dismiss()V

    .line 201
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;->mExitDialogConfig:Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;

    if-eqz v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;->mExitDialogConfig:Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;

    iget-object v1, v1, Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;->buttonConfigs:[Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig$ButtonConfig;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig$ButtonConfig;->isPositive:Z

    if-eqz v1, :cond_0

    .line 203
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils;->access$100()Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;->mConfiger:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;->mDialogMessageArray:[Ljava/lang/CharSequence;

    aget-object v2, v4, v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->exitScenarioDirect(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 206
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v3, "eventDialogCancelMessage"

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;->mDialogMessageArray:[Ljava/lang/CharSequence;

    aget-object v2, v4, v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;->mConfiger:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    const-string v3, "eventNotify"

    invoke-virtual {v2, v3, v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->launchApp(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 208
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;->mConfiger:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setRequestExitReason(Ljava/lang/String;)V

    .line 211
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void
.end method

.method public onExtra()V
    .locals 5

    .line 216
    const-string v0, "ScenarioDialogUtils"

    const-string v1, "onExtra"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils;->access$000()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;->mScreenId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;

    .line 218
    .local v0, "mXDialogImpl":Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->dismiss()V

    .line 219
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;->mExitDialogConfig:Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;

    if-eqz v1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;->mExitDialogConfig:Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;

    iget-object v1, v1, Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;->buttonConfigs:[Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig$ButtonConfig;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig$ButtonConfig;->isPositive:Z

    if-eqz v1, :cond_0

    .line 222
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils;->access$100()Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;->mConfiger:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;->mDialogMessageArray:[Ljava/lang/CharSequence;

    aget-object v2, v4, v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->exitScenarioDirect(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 225
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v3, "eventDialogCancelMessage"

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;->mDialogMessageArray:[Ljava/lang/CharSequence;

    aget-object v2, v4, v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;->mConfiger:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    const-string v3, "eventNotify"

    invoke-virtual {v2, v3, v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->launchApp(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 227
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;->mConfiger:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setRequestExitReason(Ljava/lang/String;)V

    .line 230
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void
.end method

.method public onSubmit()V
    .locals 5

    .line 178
    const-string v0, "ScenarioDialogUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubmit,mExitDialogConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;->mExitDialogConfig:Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils;->access$000()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;->mScreenId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;

    .line 180
    .local v0, "mXDialogImpl":Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->dismiss()V

    .line 181
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;->mExitDialogConfig:Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;->mExitDialogConfig:Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;

    iget-object v1, v1, Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;->buttonConfigs:[Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig$ButtonConfig;

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig$ButtonConfig;->isPositive:Z

    if-eqz v1, :cond_0

    .line 183
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils;->access$100()Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;->mConfiger:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;->mDialogMessageArray:[Ljava/lang/CharSequence;

    aget-object v2, v4, v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->exitScenarioDirect(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 186
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v3, "eventDialogCancelMessage"

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;->mDialogMessageArray:[Ljava/lang/CharSequence;

    aget-object v2, v4, v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;->mConfiger:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    const-string v3, "eventNotify"

    invoke-virtual {v2, v3, v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->launchApp(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 188
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;->mConfiger:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setRequestExitReason(Ljava/lang/String;)V

    .line 189
    .end local v1    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 191
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils;->access$100()Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;->mConfiger:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;->mDialogMessageArray:[Ljava/lang/CharSequence;

    aget-object v2, v4, v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->exitScenarioDirect(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;Ljava/lang/String;)V

    .line 193
    :goto_0
    return-void
.end method

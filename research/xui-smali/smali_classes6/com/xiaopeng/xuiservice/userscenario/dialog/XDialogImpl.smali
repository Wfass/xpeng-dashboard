.class public Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;
.super Ljava/lang/Object;
.source "XDialogImpl.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/userscenario/dialog/AbsDialog;


# static fields
.field private static final TAG:Ljava/lang/String; = "XDialogImpl"


# instance fields
.field private THREE_BUTTON:I

.field private TWO_BUTTON:I

.field private mButtonNum:I

.field private mDialog:Lcom/xiaopeng/xui/app/XDialog;

.field private mDialogTemplate:Lcom/xiaopeng/xui/app/XDialogTemplate;

.field private mUserScenarioService:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x2

    iput v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->TWO_BUTTON:I

    .line 28
    const/4 v0, 0x3

    iput v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->THREE_BUTTON:I

    .line 31
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getInstance()Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mUserScenarioService:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;)Lcom/xiaopeng/xui/app/XDialogTemplate;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mDialogTemplate:Lcom/xiaopeng/xui/app/XDialogTemplate;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;)Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mUserScenarioService:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    return-object v0
.end method

.method public static synthetic lambda$onDismissUnSubscribe$2(Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;Ljava/lang/Object;ILcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "sSourceType"    # I
    .param p3, "comboListener"    # Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;
    .param p4, "dialog"    # Landroid/content/DialogInterface;

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mDialogTemplate:Lcom/xiaopeng/xui/app/XDialogTemplate;

    if-ne v0, p1, :cond_0

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mDialogTemplate:Lcom/xiaopeng/xui/app/XDialogTemplate;

    .line 170
    const-string v0, "XDialogImpl"

    const-string v1, "onDismissUnSubscribe, mDialogTemplate = null;"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 173
    const-class v0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;

    invoke-static {v0}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->getNode(Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechNode;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->leaveTrigger()V

    .line 174
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getNodeManager()Lcom/xiaopeng/speech/NodeManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;

    invoke-virtual {v0, v1, p3}, Lcom/xiaopeng/speech/NodeManager;->unSubscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/INodeListener;)V

    .line 176
    :cond_1
    const-string v0, "XDialogImpl"

    const-string v1, "showXDialogPure, window closed"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public static synthetic lambda$onDismissUnSubscribe$3(Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;Ljava/lang/Object;ILcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "sSourceType"    # I
    .param p3, "comboListener"    # Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;
    .param p4, "dialog"    # Landroid/content/DialogInterface;

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-ne v0, p1, :cond_0

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mDialog:Lcom/xiaopeng/xui/app/XDialog;

    .line 183
    const-string v0, "XDialogImpl"

    const-string v1, "onDismissUnSubscribe, mDialog = null;"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 186
    const-class v0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;

    invoke-static {v0}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->getNode(Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechNode;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->leaveTrigger()V

    .line 187
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getNodeManager()Lcom/xiaopeng/speech/NodeManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;

    invoke-virtual {v0, v1, p3}, Lcom/xiaopeng/speech/NodeManager;->unSubscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/INodeListener;)V

    .line 189
    :cond_1
    const-string v0, "XDialogImpl"

    const-string v1, "showExitXDialog, window closed"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public static synthetic lambda$setDialogContent$0(Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;[Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 3
    .param p1, "configer"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .param p2, "items"    # [Ljava/lang/CharSequence;
    .param p3, "dialog"    # Lcom/xiaopeng/xui/app/XDialog;
    .param p4, "which"    # I

    .line 97
    const-string v0, "XDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showExitXDialog,on click yes,configer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mUserScenarioService:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->exitScenarioDirect(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public static synthetic lambda$setDialogContent$1(Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 3
    .param p1, "configer"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .param p2, "dialog"    # Lcom/xiaopeng/xui/app/XDialog;
    .param p3, "which"    # I

    .line 103
    const-string v0, "XDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showExitXDialog,on click no,configer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setRequestExitReason(Ljava/lang/String;)V

    .line 106
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 143
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mButtonNum:I

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->THREE_BUTTON:I

    if-ne v0, v1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mDialogTemplate:Lcom/xiaopeng/xui/app/XDialogTemplate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogTemplate;->dismiss()Lcom/xiaopeng/xui/app/XDialogTemplate;

    goto :goto_0

    .line 145
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mButtonNum:I

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->TWO_BUTTON:I

    if-ne v0, v1, :cond_1

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    goto :goto_0

    .line 148
    :cond_1
    const-string v0, "XDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismiss,buttonNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mButtonNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :goto_0
    return-void
.end method

.method public initVuiScene(Ljava/lang/String;Lcom/xiaopeng/speech/vui/VuiEngine;)V
    .locals 3
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "vuiEngine"    # Lcom/xiaopeng/speech/vui/VuiEngine;

    .line 209
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mButtonNum:I

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->THREE_BUTTON:I

    if-ne v0, v1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mDialogTemplate:Lcom/xiaopeng/xui/app/XDialogTemplate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogTemplate;->getDialog()Lcom/xiaopeng/xui/app/XDialogPure;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xui/app/XDialogPure;->initVuiScene(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiEngine;)V

    goto :goto_0

    .line 211
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mButtonNum:I

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->TWO_BUTTON:I

    if-ne v0, v1, :cond_1

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xui/app/XDialog;->initVuiScene(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiEngine;)V

    goto :goto_0

    .line 214
    :cond_1
    const-string v0, "XDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initVuiScene,buttonNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mButtonNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :goto_0
    return-void
.end method

.method public isShowing()Z
    .locals 4

    .line 125
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mButtonNum:I

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->THREE_BUTTON:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mDialogTemplate:Lcom/xiaopeng/xui/app/XDialogTemplate;

    if-nez v0, :cond_0

    .line 127
    return v2

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mDialogTemplate:Lcom/xiaopeng/xui/app/XDialogTemplate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogTemplate;->getDialog()Lcom/xiaopeng/xui/app/XDialogPure;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->isShowing()Z

    move-result v0

    return v0

    .line 130
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mButtonNum:I

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->TWO_BUTTON:I

    if-ne v0, v1, :cond_3

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-nez v0, :cond_2

    .line 132
    return v2

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->isShowing()Z

    move-result v0

    return v0

    .line 136
    :cond_3
    const-string v0, "XDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isShowing,buttonNum = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mButtonNum:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return v2
.end method

.method public onDismissUnSubscribe(Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;I)V
    .locals 3
    .param p1, "comboListener"    # Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;
    .param p2, "sSourceType"    # I

    .line 165
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mButtonNum:I

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->THREE_BUTTON:I

    if-ne v0, v1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mDialogTemplate:Lcom/xiaopeng/xui/app/XDialogTemplate;

    .line 167
    .local v0, "obj":Ljava/lang/Object;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mDialogTemplate:Lcom/xiaopeng/xui/app/XDialogTemplate;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/app/XDialogTemplate;->getDialog()Lcom/xiaopeng/xui/app/XDialogPure;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/userscenario/dialog/-$$Lambda$XDialogImpl$DdZ44TwE_m7BL69Bgb3Asgi5FV8;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/xiaopeng/xuiservice/userscenario/dialog/-$$Lambda$XDialogImpl$DdZ44TwE_m7BL69Bgb3Asgi5FV8;-><init>(Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;Ljava/lang/Object;ILcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/app/XDialogPure;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 178
    .end local v0    # "obj":Ljava/lang/Object;
    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mButtonNum:I

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->TWO_BUTTON:I

    if-ne v0, v1, :cond_1

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mDialog:Lcom/xiaopeng/xui/app/XDialog;

    .line 180
    .restart local v0    # "obj":Ljava/lang/Object;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mDialog:Lcom/xiaopeng/xui/app/XDialog;

    new-instance v2, Lcom/xiaopeng/xuiservice/userscenario/dialog/-$$Lambda$XDialogImpl$kOhPCtgdTAlPjP5AmVw9IG7_a1E;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/xiaopeng/xuiservice/userscenario/dialog/-$$Lambda$XDialogImpl$kOhPCtgdTAlPjP5AmVw9IG7_a1E;-><init>(Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;Ljava/lang/Object;ILcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 191
    .end local v0    # "obj":Ljava/lang/Object;
    goto :goto_0

    .line 192
    :cond_1
    const-string v0, "XDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDismissUnSubscribe,buttonNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mButtonNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :goto_0
    return-void
.end method

.method public setDialogContent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/CharSequence;Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "exitStr"    # Ljava/lang/String;
    .param p4, "items"    # [Ljava/lang/CharSequence;
    .param p5, "exitDialogConfig"    # Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;
    .param p6, "configer"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 36
    array-length v0, p4

    iput v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mButtonNum:I

    .line 37
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mButtonNum:I

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->THREE_BUTTON:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 38
    new-instance v0, Lcom/xiaopeng/xui/app/XDialogTemplate;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xui/app/XDialogTemplate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mDialogTemplate:Lcom/xiaopeng/xui/app/XDialogTemplate;

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mDialogTemplate:Lcom/xiaopeng/xui/app/XDialogTemplate;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xui/app/XDialogTemplate;->setTitle(Ljava/lang/String;)Lcom/xiaopeng/xui/app/XDialogTemplate;

    move-result-object v0

    .line 40
    invoke-virtual {v0, p3}, Lcom/xiaopeng/xui/app/XDialogTemplate;->setMessage(Ljava/lang/String;)Lcom/xiaopeng/xui/app/XDialogTemplate;

    move-result-object v0

    aget-object v1, p4, v2

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl$3;

    invoke-direct {v2, p0, p5, p6, p4}, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl$3;-><init>(Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;[Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialogTemplate;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/xiaopeng/xui/app/XDialogTemplate;

    move-result-object v0

    aget-object v1, p4, v3

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl$2;

    invoke-direct {v2, p0, p5, p6, p4}, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl$2;-><init>(Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;[Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialogTemplate;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/xiaopeng/xui/app/XDialogTemplate;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v1, p4, v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl$1;

    invoke-direct {v2, p0, p5, p6, p4}, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl$1;-><init>(Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;[Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialogTemplate;->setButton3(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/xiaopeng/xui/app/XDialogTemplate;

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mDialogTemplate:Lcom/xiaopeng/xui/app/XDialogTemplate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialogTemplate;->getMessage2(Ljava/lang/String;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_0

    .line 91
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mButtonNum:I

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->TWO_BUTTON:I

    if-ne v0, v1, :cond_1

    .line 92
    new-instance v0, Lcom/xiaopeng/xui/app/XDialog;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mDialog:Lcom/xiaopeng/xui/app/XDialog;

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    .line 94
    invoke-virtual {v0, p3}, Lcom/xiaopeng/xui/app/XDialog;->setMessage(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    .line 95
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButtonInterceptDismiss(Z)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    aget-object v1, p4, v2

    new-instance v2, Lcom/xiaopeng/xuiservice/userscenario/dialog/-$$Lambda$XDialogImpl$VlLwAWKfQuOPNHD-HSmYFnZNcY4;

    invoke-direct {v2, p0, p6, p4}, Lcom/xiaopeng/xuiservice/userscenario/dialog/-$$Lambda$XDialogImpl$VlLwAWKfQuOPNHD-HSmYFnZNcY4;-><init>(Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;[Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    .line 101
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButtonInterceptDismiss(Z)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    aget-object v1, p4, v3

    new-instance v2, Lcom/xiaopeng/xuiservice/userscenario/dialog/-$$Lambda$XDialogImpl$bG_9L7yKXM8jq2CyppqxORwiGWI;

    invoke-direct {v2, p0, p6}, Lcom/xiaopeng/xuiservice/userscenario/dialog/-$$Lambda$XDialogImpl$bG_9L7yKXM8jq2CyppqxORwiGWI;-><init>(Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)V

    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    goto :goto_0

    .line 108
    :cond_1
    const-string v0, "XDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDialogContent,buttonNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mButtonNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :goto_0
    return-void
.end method

.method public setScreenId(I)V
    .locals 3
    .param p1, "screenId"    # I

    .line 154
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mButtonNum:I

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->THREE_BUTTON:I

    if-ne v0, v1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mDialogTemplate:Lcom/xiaopeng/xui/app/XDialogTemplate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogTemplate;->getDialog()Lcom/xiaopeng/xui/app/XDialogPure;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/XDialogPure;->setScreenId(I)V

    goto :goto_0

    .line 156
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mButtonNum:I

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->TWO_BUTTON:I

    if-ne v0, v1, :cond_1

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/XDialog;->setScreenId(I)Lcom/xiaopeng/xui/app/XDialog;

    goto :goto_0

    .line 159
    :cond_1
    const-string v0, "XDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenId,buttonNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mButtonNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :goto_0
    return-void
.end method

.method public setSystemDialog(I)V
    .locals 3
    .param p1, "systemDialog"    # I

    .line 198
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mButtonNum:I

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->THREE_BUTTON:I

    if-ne v0, v1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mDialogTemplate:Lcom/xiaopeng/xui/app/XDialogTemplate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/XDialogTemplate;->setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialogTemplate;

    goto :goto_0

    .line 200
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mButtonNum:I

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->TWO_BUTTON:I

    if-ne v0, v1, :cond_1

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/XDialog;->setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;

    goto :goto_0

    .line 203
    :cond_1
    const-string v0, "XDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSystemDialog,buttonNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mButtonNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :goto_0
    return-void
.end method

.method public show()V
    .locals 3

    .line 114
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mButtonNum:I

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->THREE_BUTTON:I

    if-ne v0, v1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mDialogTemplate:Lcom/xiaopeng/xui/app/XDialogTemplate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogTemplate;->show()Lcom/xiaopeng/xui/app/XDialogTemplate;

    goto :goto_0

    .line 116
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mButtonNum:I

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->TWO_BUTTON:I

    if-ne v0, v1, :cond_1

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->show()V

    goto :goto_0

    .line 119
    :cond_1
    const-string v0, "XDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show,buttonNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->mButtonNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_0
    return-void
.end method

.class public Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;
.super Lcom/xiaopeng/xuiservice/smart/action/ActionBase;
.source "ActionDialog.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/smart/action/Action$ActionChangeListener;


# instance fields
.field private final cancelAction:Lcom/xiaopeng/xuiservice/smart/action/Action;

.field private final cancelButton:Ljava/lang/String;

.field private final confirmAction:Lcom/xiaopeng/xuiservice/smart/action/Action;

.field private final confirmButton:Ljava/lang/String;

.field private final message:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private xDialog:Lcom/xiaopeng/xui/app/XDialog;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/smart/action/Action;Lcom/xiaopeng/xuiservice/smart/action/Action;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "confirmButton"    # Ljava/lang/String;
    .param p4, "cancelButton"    # Ljava/lang/String;
    .param p5, "confirmAction"    # Lcom/xiaopeng/xuiservice/smart/action/Action;
    .param p6, "cancelAction"    # Lcom/xiaopeng/xuiservice/smart/action/Action;

    .line 30
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->title:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->message:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->confirmButton:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->cancelButton:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->confirmAction:Lcom/xiaopeng/xuiservice/smart/action/Action;

    .line 36
    iput-object p6, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->cancelAction:Lcom/xiaopeng/xuiservice/smart/action/Action;

    .line 38
    if-eqz p5, :cond_0

    .line 39
    invoke-interface {p5, p0}, Lcom/xiaopeng/xuiservice/smart/action/Action;->addActionChangeListener(Lcom/xiaopeng/xuiservice/smart/action/Action$ActionChangeListener;)V

    .line 41
    :cond_0
    if-eqz p6, :cond_1

    .line 42
    invoke-interface {p6, p0}, Lcom/xiaopeng/xuiservice/smart/action/Action;->addActionChangeListener(Lcom/xiaopeng/xuiservice/smart/action/Action$ActionChangeListener;)V

    .line 44
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;)Lcom/xiaopeng/xuiservice/smart/action/Action;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;

    .line 14
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->confirmAction:Lcom/xiaopeng/xuiservice/smart/action/Action;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;)Lcom/xiaopeng/xuiservice/smart/action/Action;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;

    .line 14
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->cancelAction:Lcom/xiaopeng/xuiservice/smart/action/Action;

    return-object v0
.end method

.method private dismissDialogIfShowing()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->xDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->xDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->xDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    .line 110
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->xDialog:Lcom/xiaopeng/xui/app/XDialog;

    .line 111
    return-void
.end method

.method public static synthetic lambda$XmFd5g30ZvfZD2uyvvSwAgR5di4(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->showDialog()V

    return-void
.end method

.method public static synthetic lambda$sEDIMzto4hbx9sxUnj1HQ8KbhCk(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->dismissDialogIfShowing()V

    return-void
.end method

.method private showDialog()V
    .locals 4

    .line 73
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 74
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/xiaopeng/xui/app/XDialog;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->xDialog:Lcom/xiaopeng/xui/app/XDialog;

    .line 75
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->xDialog:Lcom/xiaopeng/xui/app/XDialog;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->xDialog:Lcom/xiaopeng/xui/app/XDialog;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setMessage(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->xDialog:Lcom/xiaopeng/xui/app/XDialog;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->confirmButton:Ljava/lang/String;

    new-instance v3, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog$1;

    invoke-direct {v3, p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog$1;-><init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;)V

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 91
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->xDialog:Lcom/xiaopeng/xui/app/XDialog;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->cancelButton:Ljava/lang/String;

    new-instance v3, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog$2;

    invoke-direct {v3, p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog$2;-><init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;)V

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 101
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->xDialog:Lcom/xiaopeng/xui/app/XDialog;

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 102
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->xDialog:Lcom/xiaopeng/xui/app/XDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setCanceledOnTouchOutside(Z)Lcom/xiaopeng/xui/app/XDialog;

    .line 103
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->xDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/app/XDialog;->show()V

    .line 104
    return-void
.end method


# virtual methods
.method public onActionDone(Lcom/xiaopeng/xuiservice/smart/action/Action;)V
    .locals 0
    .param p1, "action"    # Lcom/xiaopeng/xuiservice/smart/action/Action;

    .line 69
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->stop()V

    .line 70
    return-void
.end method

.method public onActionStarted(Lcom/xiaopeng/xuiservice/smart/action/Action;)V
    .locals 0
    .param p1, "action"    # Lcom/xiaopeng/xuiservice/smart/action/Action;

    .line 65
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 48
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionDialog$XmFd5g30ZvfZD2uyvvSwAgR5di4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionDialog$XmFd5g30ZvfZD2uyvvSwAgR5di4;-><init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 49
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 53
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionDialog$sEDIMzto4hbx9sxUnj1HQ8KbhCk;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionDialog$sEDIMzto4hbx9sxUnj1HQ8KbhCk;-><init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->confirmAction:Lcom/xiaopeng/xuiservice/smart/action/Action;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->confirmAction:Lcom/xiaopeng/xuiservice/smart/action/Action;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/smart/action/Action;->stop()V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->cancelAction:Lcom/xiaopeng/xuiservice/smart/action/Action;

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->cancelAction:Lcom/xiaopeng/xuiservice/smart/action/Action;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/smart/action/Action;->stop()V

    .line 60
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", content=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->message:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", confirmButton=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->confirmButton:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cancelButton=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->cancelButton:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", confirmAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->confirmAction:Lcom/xiaopeng/xuiservice/smart/action/Action;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cancelAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->cancelAction:Lcom/xiaopeng/xuiservice/smart/action/Action;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

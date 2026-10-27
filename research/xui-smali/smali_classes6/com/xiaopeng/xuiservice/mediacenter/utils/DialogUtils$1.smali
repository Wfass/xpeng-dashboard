.class Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils;->showSeizeDialog(ILcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$OnDialogConfirm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$OnDialogConfirm;

.field final synthetic val$confirmId:I

.field final synthetic val$displayId:I

.field final synthetic val$msgId:I


# direct methods
.method constructor <init>(IILcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$OnDialogConfirm;I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1;->val$msgId:I

    iput p2, p0, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1;->val$confirmId:I

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1;->val$callback:Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$OnDialogConfirm;

    iput p4, p0, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1;->val$displayId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 34
    new-instance v0, Lcom/xiaopeng/xui/app/XDialog;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils;->access$002(Lcom/xiaopeng/xui/app/XDialog;)Lcom/xiaopeng/xui/app/XDialog;

    .line 35
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils;->access$000()Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    const v1, 0x7f0c002f

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setCustomView(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 36
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils;->access$000()Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    const v1, 0x7f0e0050

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 37
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils;->access$000()Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0901a5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 38
    .local v0, "mMessageTv":Landroid/widget/TextView;
    iget v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1;->val$msgId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 39
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils;->access$000()Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xui/app/XDialog;->getContentView()Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x7f090080

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XCheckBox;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils;->access$102(Lcom/xiaopeng/xui/widget/XCheckBox;)Lcom/xiaopeng/xui/widget/XCheckBox;

    .line 40
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils;->access$000()Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    .line 41
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setCancelable(Z)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1$2;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1$2;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1;)V

    .line 42
    const v3, 0x7f0e0047

    invoke-virtual {v1, v3, v2}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(ILcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1;->val$confirmId:I

    new-instance v3, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1$1;

    invoke-direct {v3, p0}, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1$1;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1;)V

    .line 50
    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(ILcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 63
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils;->access$000()Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1$3;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1$3;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 71
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->hasSharedDisplayFeature()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1;->val$displayId:I

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->setSelfSharedId(I)V

    .line 74
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils;->access$000()Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xui/app/XDialog;->show()V

    .line 75
    return-void
.end method

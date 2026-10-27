.class Lcom/xiaopeng/xuiservice/innerutils/DialogUtil$1;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/innerutils/DialogUtil;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cancelable:Z

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$duration:I

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$positiveButtonSting:Ljava/lang/String;

.field final synthetic val$positiveDuration:Z

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZI)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/innerutils/DialogUtil$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/innerutils/DialogUtil$1;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/innerutils/DialogUtil$1;->val$msg:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/xiaopeng/xuiservice/innerutils/DialogUtil$1;->val$cancelable:Z

    iput-object p5, p0, Lcom/xiaopeng/xuiservice/innerutils/DialogUtil$1;->val$positiveButtonSting:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/xiaopeng/xuiservice/innerutils/DialogUtil$1;->val$positiveDuration:Z

    iput p7, p0, Lcom/xiaopeng/xuiservice/innerutils/DialogUtil$1;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 39
    new-instance v0, Lcom/xiaopeng/xui/app/XDialog;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/innerutils/DialogUtil$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;)V

    .line 40
    .local v0, "xuiDialog":Lcom/xiaopeng/xui/app/XDialog;
    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/innerutils/DialogUtil$1;->val$title:Ljava/lang/String;

    .line 41
    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/innerutils/DialogUtil$1;->val$msg:Ljava/lang/String;

    .line 42
    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setMessage(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    .line 43
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setScreenId(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    iget-boolean v3, p0, Lcom/xiaopeng/xuiservice/innerutils/DialogUtil$1;->val$cancelable:Z

    .line 44
    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/app/XDialog;->setCancelable(Z)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/innerutils/DialogUtil$1;->val$positiveButtonSting:Ljava/lang/String;

    new-instance v4, Lcom/xiaopeng/xuiservice/innerutils/DialogUtil$1$1;

    invoke-direct {v4, p0, v0}, Lcom/xiaopeng/xuiservice/innerutils/DialogUtil$1$1;-><init>(Lcom/xiaopeng/xuiservice/innerutils/DialogUtil$1;Lcom/xiaopeng/xui/app/XDialog;)V

    .line 45
    invoke-virtual {v1, v3, v4}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 52
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/innerutils/DialogUtil$1;->val$positiveDuration:Z

    if-eqz v1, :cond_0

    .line 53
    iget v1, p0, Lcom/xiaopeng/xuiservice/innerutils/DialogUtil$1;->val$duration:I

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->show(II)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->show()V

    .line 57
    :goto_0
    return-void
.end method

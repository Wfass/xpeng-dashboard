.class Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1$1;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1;

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 3
    .param p1, "dialog"    # Lcom/xiaopeng/xui/app/XDialog;
    .param p2, "which"    # I

    .line 54
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils;->access$000()Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    .line 55
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils;->access$002(Lcom/xiaopeng/xui/app/XDialog;)Lcom/xiaopeng/xui/app/XDialog;

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1;->val$callback:Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$OnDialogConfirm;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1;->val$callback:Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$OnDialogConfirm;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$OnDialogConfirm;->onConfirm()V

    .line 59
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->getInstance()Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;

    move-result-object v0

    const-string v1, "key_media_no_seize_dialog"

    .line 60
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils;->access$100()Lcom/xiaopeng/xui/widget/XCheckBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XCheckBox;->isChecked()Z

    move-result v2

    .line 59
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->putBoolean(Ljava/lang/String;Z)V

    .line 61
    return-void
.end method

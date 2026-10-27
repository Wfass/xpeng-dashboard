.class Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$4;
.super Ljava/lang/Object;
.source "ShareDialogWrapper.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->ensureTransferConfirmDialog(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$screenId:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;Landroid/content/Intent;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;

    .line 132
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$4;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$4;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$4;->val$screenId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 3
    .param p1, "dialog"    # Lcom/xiaopeng/xui/app/XDialog;
    .param p2, "which"    # I

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$4;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->access$300(Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$4;->val$intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 137
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$4;->val$intent:Landroid/content/Intent;

    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$4;->val$screenId:I

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->handleTransferConfirm(Landroid/content/Intent;I)V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$4;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->access$400(Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;)Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$DialogCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$4;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->access$400(Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;)Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$DialogCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$DialogCallback;->onConfirm()V

    .line 142
    :cond_1
    return-void
.end method

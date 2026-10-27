.class Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$9;
.super Ljava/lang/Object;
.source "XAppModeViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->showTransferConfirmDialog(Landroid/content/Intent;ILcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$DialogCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

.field final synthetic val$callback:Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$DialogCallback;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$screenId:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;Landroid/content/Intent;ILcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$DialogCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    .line 266
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$9;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$9;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$9;->val$screenId:I

    iput-object p4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$9;->val$callback:Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$DialogCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$9;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->access$000(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;)Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$9;->val$intent:Landroid/content/Intent;

    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$9;->val$screenId:I

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$9;->val$callback:Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$DialogCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->showTransferConfirmDialog(Landroid/content/Intent;ILcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$DialogCallback;)V

    .line 270
    return-void
.end method

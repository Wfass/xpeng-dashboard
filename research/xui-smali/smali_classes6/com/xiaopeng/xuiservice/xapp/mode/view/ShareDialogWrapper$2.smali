.class Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$2;
.super Ljava/lang/Object;
.source "ShareDialogWrapper.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->ensureShareAppDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;

    .line 86
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 3
    .param p1, "dialog"    # Lcom/xiaopeng/xui/app/XDialog;
    .param p2, "which"    # I

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->access$000(Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    .line 90
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->access$100(Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->access$200(Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->handleShareEvent(Ljava/lang/String;I)V

    .line 91
    return-void
.end method

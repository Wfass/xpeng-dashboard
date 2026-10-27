.class Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$3;
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


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;

    .line 146
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$3;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 1
    .param p1, "dialog"    # Lcom/xiaopeng/xui/app/XDialog;
    .param p2, "which"    # I

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$3;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->access$300(Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    .line 150
    return-void
.end method

.class Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog$1;
.super Ljava/lang/Object;
.source "SystemLoadingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;

    .line 99
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;

    const-string v1, "close is click "

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->access$000(Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->cancel()V

    .line 103
    return-void
.end method

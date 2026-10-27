.class Lcom/xiaopeng/xui/app/XLoadingDialog$1;
.super Ljava/lang/Object;
.source "XLoadingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/app/XLoadingDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/app/XLoadingDialog;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/app/XLoadingDialog;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XLoadingDialog$1;->this$0:Lcom/xiaopeng/xui/app/XLoadingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 163
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XLoadingDialog$1;->this$0:Lcom/xiaopeng/xui/app/XLoadingDialog;

    const-string v0, "close is click "

    invoke-static {p1, v0}, Lcom/xiaopeng/xui/app/XLoadingDialog;->access$000(Lcom/xiaopeng/xui/app/XLoadingDialog;Ljava/lang/String;)V

    .line 164
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XLoadingDialog$1;->this$0:Lcom/xiaopeng/xui/app/XLoadingDialog;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XLoadingDialog;->cancel()V

    return-void
.end method

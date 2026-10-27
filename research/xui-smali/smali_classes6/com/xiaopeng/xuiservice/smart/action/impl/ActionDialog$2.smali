.class Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog$2;
.super Ljava/lang/Object;
.source "ActionDialog.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;

    .line 91
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog$2;->this$0:Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 1
    .param p1, "xDialog"    # Lcom/xiaopeng/xui/app/XDialog;
    .param p2, "i"    # I

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog$2;->this$0:Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->access$100(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;)Lcom/xiaopeng/xuiservice/smart/action/Action;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog$2;->this$0:Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->access$100(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;)Lcom/xiaopeng/xuiservice/smart/action/Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/smart/action/Action;->start()V

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog$2;->this$0:Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;->stop()V

    .line 99
    :goto_0
    return-void
.end method

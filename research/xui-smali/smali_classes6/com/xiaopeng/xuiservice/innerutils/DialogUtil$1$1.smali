.class Lcom/xiaopeng/xuiservice/innerutils/DialogUtil$1$1;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/innerutils/DialogUtil$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/innerutils/DialogUtil$1;

.field final synthetic val$xuiDialog:Lcom/xiaopeng/xui/app/XDialog;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/innerutils/DialogUtil$1;Lcom/xiaopeng/xui/app/XDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/innerutils/DialogUtil$1;

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/innerutils/DialogUtil$1$1;->this$0:Lcom/xiaopeng/xuiservice/innerutils/DialogUtil$1;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/innerutils/DialogUtil$1$1;->val$xuiDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 1
    .param p1, "dialog"    # Lcom/xiaopeng/xui/app/XDialog;
    .param p2, "which"    # I

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/innerutils/DialogUtil$1$1;->val$xuiDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    .line 50
    return-void
.end method

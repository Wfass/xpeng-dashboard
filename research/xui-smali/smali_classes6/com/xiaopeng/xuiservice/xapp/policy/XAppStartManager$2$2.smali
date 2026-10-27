.class Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$2$2;
.super Ljava/lang/Object;
.source "XAppStartManager.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$2;

.field final synthetic val$xuiDialog:Lcom/xiaopeng/xui/app/XDialog;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$2;Lcom/xiaopeng/xui/app/XDialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$2;

    .line 445
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$2$2;->this$1:Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$2;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$2$2;->val$xuiDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 1
    .param p1, "dialog"    # Lcom/xiaopeng/xui/app/XDialog;
    .param p2, "which"    # I

    .line 448
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$2$2;->val$xuiDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    .line 449
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$2$2;->this$1:Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$2;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->access$300(Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;)V

    .line 450
    return-void
.end method

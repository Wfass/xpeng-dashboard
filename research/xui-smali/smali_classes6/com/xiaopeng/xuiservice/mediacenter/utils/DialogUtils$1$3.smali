.class Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1$3;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1$3;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1$3;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1;->val$callback:Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$OnDialogConfirm;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1$3;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1;->val$callback:Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$OnDialogConfirm;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$OnDialogConfirm;->onDismiss()V

    .line 69
    :cond_0
    return-void
.end method

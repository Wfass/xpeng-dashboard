.class Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$3;
.super Ljava/lang/Object;
.source "FaultDetailFragment.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->lambda$reserve$4(Lcom/xiaopeng/xui/widget/XTextFields;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

.field final synthetic val$input_number:Lcom/xiaopeng/xui/widget/XTextFields;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;Lcom/xiaopeng/xui/widget/XTextFields;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$input_number"
        }
    .end annotation

    .line 222
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$3;->val$input_number:Lcom/xiaopeng/xui/widget/XTextFields;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onFailed$1$FaultDetailFragment$3(Lcom/xiaopeng/xui/widget/XTextFields;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "input_number"
        }
    .end annotation

    const v0, 0x7f110287

    .line 238
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextFields;->setEditHint(I)V

    .line 239
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->access$100(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 240
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->access$100(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    const/16 v0, 0x800

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/XDialog;->setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 241
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->access$100(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    const-string v2, "ReserveConfirmDialog"

    invoke-virtual {p1, v0, v1, v2}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->initVuiDialog(Lcom/xiaopeng/xui/app/XDialog;Landroid/content/Context;Ljava/lang/String;)V

    .line 242
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->access$100(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XDialog;->show()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onSuccess$0$FaultDetailFragment$3(Lcom/xiaopeng/xui/widget/XTextFields;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "input_number",
            "result"
        }
    .end annotation

    .line 226
    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextFields;->setEditContent(Ljava/lang/CharSequence;)V

    .line 227
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->access$100(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 228
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->access$100(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    const/16 p2, 0x800

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/app/XDialog;->setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 229
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->access$100(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p2

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    const-string v1, "ReserveConfirmDialog"

    invoke-virtual {p1, p2, v0, v1}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->initVuiDialog(Lcom/xiaopeng/xui/app/XDialog;Landroid/content/Context;Ljava/lang/String;)V

    .line 230
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->access$100(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XDialog;->show()V

    :cond_0
    return-void
.end method

.method public onFailed(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 237
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$3;->val$input_number:Lcom/xiaopeng/xui/widget/XTextFields;

    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$FaultDetailFragment$3$g9zzDrlUWd5DFH-KSz2cAsJ3aOU;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$FaultDetailFragment$3$g9zzDrlUWd5DFH-KSz2cAsJ3aOU;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$3;Lcom/xiaopeng/xui/widget/XTextFields;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$3;->val$input_number:Lcom/xiaopeng/xui/widget/XTextFields;

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$FaultDetailFragment$3$p90q-PsflW8HQFMv6-2ER9kFvg8;

    invoke-direct {v1, p0, v0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$FaultDetailFragment$3$p90q-PsflW8HQFMv6-2ER9kFvg8;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$3;Lcom/xiaopeng/xui/widget/XTextFields;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

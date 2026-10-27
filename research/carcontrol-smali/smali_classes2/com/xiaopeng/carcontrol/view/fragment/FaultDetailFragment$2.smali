.class Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$2;
.super Ljava/lang/Object;
.source "FaultDetailFragment.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->lambda$null$3(Lcom/xiaopeng/xui/widget/XTextFields;Lcom/xiaopeng/xui/app/XDialog;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$null$2(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "xDialog12",
            "i12"
        }
    .end annotation

    return-void
.end method


# virtual methods
.method public synthetic lambda$null$1$FaultDetailFragment$2(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "xDialog1",
            "i1"
        }
    .end annotation

    .line 208
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->access$300(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    .line 209
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.CALL"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x10000000

    .line 210
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo p2, "tel:400-0000-0000"

    .line 211
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 212
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 213
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$onFailed$3$FaultDetailFragment$2()V
    .locals 4

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->access$200(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)Lcom/xiaopeng/xui/widget/XLoading;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->access$000(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)Lcom/xiaopeng/xui/widget/XButton;

    move-result-object v0

    const v1, 0x7f110128

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setText(I)V

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->access$000(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)Lcom/xiaopeng/xui/widget/XButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->access$300(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    new-instance v1, Lcom/xiaopeng/xui/app/XDialog;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120362

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->access$302(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;Lcom/xiaopeng/xui/app/XDialog;)Lcom/xiaopeng/xui/app/XDialog;

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->access$300(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    const v1, 0x7f11038a

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->access$300(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    const v1, 0x7f11038b

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setMessage(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->access$300(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$FaultDetailFragment$2$NBRk3OCuQYdZFnEz2oS-ySMGRfw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$FaultDetailFragment$2$NBRk3OCuQYdZFnEz2oS-ySMGRfw;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$2;)V

    const-string v2, "400-0000-0000"

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->access$300(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    const v1, 0x7f11038e

    sget-object v2, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$FaultDetailFragment$2$XA8sG1obM44xBAqFD_qxavzdr9w;->INSTANCE:Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$FaultDetailFragment$2$XA8sG1obM44xBAqFD_qxavzdr9w;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(ILcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->access$300(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 217
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->access$300(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v2

    const-string v3, "ReserveFailedDialog"

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->initVuiDialog(Lcom/xiaopeng/xui/app/XDialog;Landroid/content/Context;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->access$300(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->show()V

    return-void
.end method

.method public synthetic lambda$onSuccess$0$FaultDetailFragment$2()V
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->access$100(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->access$100(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->access$100(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->access$400(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    if-nez v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    new-instance v1, Lcom/xiaopeng/xui/app/XDialog;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120362

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->access$402(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;Lcom/xiaopeng/xui/app/XDialog;)Lcom/xiaopeng/xui/app/XDialog;

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->access$400(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    const v1, 0x7f11038c

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->access$400(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    const v1, 0x7f11038d

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setMessage(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->access$400(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    const v1, 0x7f110061

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->access$400(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 184
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->access$400(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v2

    const-string v3, "ReserveSuccessDialog"

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->initVuiDialog(Lcom/xiaopeng/xui/app/XDialog;Landroid/content/Context;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->access$400(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->show()V

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->access$000(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)Lcom/xiaopeng/xui/widget/XButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->access$000(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)Lcom/xiaopeng/xui/widget/XButton;

    move-result-object v0

    const v1, 0x7f1102c4

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setText(I)V

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->access$200(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)Lcom/xiaopeng/xui/widget/XLoading;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 190
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->setReserveTime(J)V

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->access$600(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->access$500(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onFailed(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 197
    new-instance p1, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$FaultDetailFragment$2$2W62DLSmvg0EsP8-qnHHjR-uUkg;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$FaultDetailFragment$2$2W62DLSmvg0EsP8-qnHHjR-uUkg;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$2;)V

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 173
    new-instance p1, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$FaultDetailFragment$2$9BwyYI599xaWIehDZ-vR8RyEgAY;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$FaultDetailFragment$2$9BwyYI599xaWIehDZ-vR8RyEgAY;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$2;)V

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

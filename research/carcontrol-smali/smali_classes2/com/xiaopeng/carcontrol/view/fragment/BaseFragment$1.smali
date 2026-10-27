.class Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment$1;
.super Landroid/os/CountDownTimer;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->showCustomConfirmDialog(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;

.field final synthetic val$positiveBtnText:Ljava/lang/CharSequence;

.field final synthetic val$sceneId:Ljava/lang/String;

.field final synthetic val$xDialog:Lcom/xiaopeng/xui/app/XDialog;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;JJLcom/xiaopeng/xui/app/XDialog;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "x0",
            "x1",
            "val$sceneId",
            "val$positiveBtnText",
            "val$xDialog"
        }
    .end annotation

    .line 286
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;

    iput-object p6, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment$1;->val$xDialog:Lcom/xiaopeng/xui/app/XDialog;

    iput-object p7, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment$1;->val$positiveBtnText:Ljava/lang/CharSequence;

    iput-object p8, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment$1;->val$sceneId:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 6

    .line 294
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment$1;->val$xDialog:Lcom/xiaopeng/xui/app/XDialog;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment$1;->val$positiveBtnText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    .line 295
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment$1;->val$xDialog:Lcom/xiaopeng/xui/app/XDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButtonEnable(Z)Lcom/xiaopeng/xui/app/XDialog;

    .line 296
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment$1;->val$sceneId:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    new-array v1, v1, [Landroid/view/View;

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment$1;->val$xDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v4}, Lcom/xiaopeng/xui/app/XDialog;->getContentView()Landroid/view/ViewGroup;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    invoke-virtual {v0, v2, v3, v1}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->updateVuiScene(Ljava/lang/String;Landroid/content/Context;[Landroid/view/View;)V

    return-void
.end method

.method public onTick(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millisUntilFinished"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment$1;->val$xDialog:Lcom/xiaopeng/xui/app/XDialog;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment$1;->val$positiveBtnText:Ljava/lang/CharSequence;

    long-to-int p1, p1

    div-int/lit16 p1, p1, 0x3e8

    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->getPositiveBtnText(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    return-void
.end method

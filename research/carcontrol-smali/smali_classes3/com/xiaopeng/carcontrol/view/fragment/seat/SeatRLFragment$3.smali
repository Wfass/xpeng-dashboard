.class Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$3;
.super Ljava/lang/Object;
.source "SeatRLFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->setClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 308
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 311
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object v0, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->access$702(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 312
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object v0, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->access$802(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 313
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object v0, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->access$902(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 314
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mPos1Btn:Lcom/xiaopeng/xui/widget/XRadioButton;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->access$700(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XRadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mPos2Btn:Lcom/xiaopeng/xui/widget/XRadioButton;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->access$800(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XRadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mPos3Btn:Lcom/xiaopeng/xui/widget/XRadioButton;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->access$900(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XRadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object v0, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getCurrentSelectedRLHabit()I

    move-result v0

    iput v0, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSelectPosId:I

    .line 318
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSelectPosId:I

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 326
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mPos3Btn:Lcom/xiaopeng/xui/widget/XRadioButton;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XRadioButton;->setChecked(Z)V

    goto :goto_0

    .line 323
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mPos2Btn:Lcom/xiaopeng/xui/widget/XRadioButton;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XRadioButton;->setChecked(Z)V

    goto :goto_0

    .line 320
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mPos1Btn:Lcom/xiaopeng/xui/widget/XRadioButton;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XRadioButton;->setChecked(Z)V

    .line 329
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->dialog:Lcom/xiaopeng/xui/app/XDialog;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mCustomDialogView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/XDialog;->setCustomView(Landroid/view/View;)Lcom/xiaopeng/xui/app/XDialog;

    .line 330
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->dialog:Lcom/xiaopeng/xui/app/XDialog;

    const v0, 0x7f110061

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->access$1100(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    const v0, 0x7f11005e

    .line 331
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->access$1000(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    const v0, 0x7f11005f

    .line 332
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XDialog;->show()V

    return-void
.end method

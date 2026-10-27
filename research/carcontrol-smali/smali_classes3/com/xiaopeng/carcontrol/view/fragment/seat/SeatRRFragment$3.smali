.class Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$3;
.super Ljava/lang/Object;
.source "SeatRRFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->setClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 299
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

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

    .line 302
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object v0, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->access$602(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 303
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object v0, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->access$702(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 304
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object v0, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->access$802(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 305
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mPos1Btn:Lcom/xiaopeng/xui/widget/XRadioButton;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->access$600(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XRadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mPos2Btn:Lcom/xiaopeng/xui/widget/XRadioButton;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->access$700(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XRadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mPos3Btn:Lcom/xiaopeng/xui/widget/XRadioButton;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->access$800(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XRadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object v0, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getCurrentSelectedRRHabit()I

    move-result v0

    iput v0, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSelectPosId:I

    .line 309
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSelectPosId:I

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 317
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mPos3Btn:Lcom/xiaopeng/xui/widget/XRadioButton;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XRadioButton;->setChecked(Z)V

    goto :goto_0

    .line 314
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mPos2Btn:Lcom/xiaopeng/xui/widget/XRadioButton;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XRadioButton;->setChecked(Z)V

    goto :goto_0

    .line 311
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mPos1Btn:Lcom/xiaopeng/xui/widget/XRadioButton;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XRadioButton;->setChecked(Z)V

    .line 320
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->dialog:Lcom/xiaopeng/xui/app/XDialog;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mCustomDialogView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/XDialog;->setCustomView(Landroid/view/View;)Lcom/xiaopeng/xui/app/XDialog;

    .line 321
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->dialog:Lcom/xiaopeng/xui/app/XDialog;

    const v0, 0x7f110061

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->access$1000(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    const v0, 0x7f11005e

    .line 322
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->access$900(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    const v0, 0x7f11005f

    .line 323
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XDialog;->show()V

    return-void
.end method

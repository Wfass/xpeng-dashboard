.class Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$4;
.super Ljava/lang/Object;
.source "SeatRRFragment.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;


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

    .line 326
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$4;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "xDialog",
            "i"
        }
    .end annotation

    .line 329
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$4;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$4;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget p2, p2, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSelectPosId:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->saveSelectRRSeatData(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 330
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$4;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->hiddenMemoryRestoreBtn()V

    .line 331
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$4;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->access$1100(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "saveSelectRRSeatData success      mRRHabit = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$4;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;

    iget v0, v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSelectPosId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.class Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$4;
.super Ljava/lang/Object;
.source "SeatRLFragment.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;


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

    .line 335
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$4;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

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

    .line 338
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$4;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$4;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget p2, p2, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSelectPosId:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->saveSelectRLSeatData(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 339
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$4;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->hiddenMemoryRestoreBtn()V

    .line 340
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$4;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->access$1200(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "saveSelectRLSeatData success      mRLHabit = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$4;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    iget v0, v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSelectPosId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

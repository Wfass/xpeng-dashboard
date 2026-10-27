.class Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$3;
.super Ljava/lang/Object;
.source "SeatDrvFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->setClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 272
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 275
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->memoryDrvSeatData()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 276
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$3;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->hiddenMemoryRestoreBtn()V

    .line 277
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v0, 0x7f110335

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :cond_0
    return-void
.end method

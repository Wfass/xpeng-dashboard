.class Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$6;
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

    .line 328
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$6;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 331
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$6;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v0, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restoreDrvSeatPos(IZZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 332
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$6;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->hiddenMemoryRestoreBtn()V

    :cond_0
    return-void
.end method

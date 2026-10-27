.class Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$5;
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

    .line 319
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$5;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

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

    .line 322
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$5;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->access$700(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 323
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$5;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->requestCreateNewSyncGroup()V

    .line 325
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$5;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->access$600(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;)Lcom/xiaopeng/xui/app/XDialogPure;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XDialogPure;->dismiss()V

    return-void
.end method

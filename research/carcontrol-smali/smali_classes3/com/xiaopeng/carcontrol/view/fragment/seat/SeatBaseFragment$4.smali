.class Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment$4;
.super Ljava/lang/Object;
.source "SeatBaseFragment.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment$4;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptChange(Lcom/xiaopeng/xui/widget/XSegmented;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "xSegmented",
            "i"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onSelectionChange(Lcom/xiaopeng/xui/widget/XSegmented;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "xSegmented",
            "i",
            "b"
        }
    .end annotation

    .line 192
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment$4;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;

    iget-object p3, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->mLeftPartList:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->updateSeatPartTab(I)V

    return-void
.end method

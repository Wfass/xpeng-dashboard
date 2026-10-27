.class Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment$1;
.super Ljava/lang/Object;
.source "SeatBaseFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 158
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buttonView",
            "isChecked"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 162
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;

    const/4 p2, 0x0

    iput p2, p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->mSelectPosId:I

    :cond_0
    return-void
.end method

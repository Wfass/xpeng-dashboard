.class Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel$1;
.super Ljava/lang/Object;
.source "SeatMassagePanel.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 181
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptChange(Lcom/xiaopeng/xui/widget/XSegmented;I)Z
    .locals 2
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

    .line 184
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->access$000(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getMassagerRunningEffectId(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 185
    new-instance p1, Lcom/xiaopeng/xuimanager/seatmassager/Seat;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->access$000(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)I

    move-result v1

    add-int/2addr p2, v0

    invoke-direct {p1, v1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/Seat;-><init>(II)V

    .line 186
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;

    iget-object p2, p2, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->access$100(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;->getmRunningTheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->startMassager(Lcom/xiaopeng/xuimanager/seatmassager/Seat;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->access$000(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)I

    move-result v1

    add-int/2addr p2, v0

    invoke-virtual {p1, v1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setMassagerIntensity(II)V

    :goto_0
    return v0
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
            "fromUser"
        }
    .end annotation

    return-void
.end method

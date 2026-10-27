.class Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$1;
.super Ljava/lang/Object;
.source "SeatControlTrScene.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->setTrdListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 232
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;

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

    const-wide/16 v0, 0x1f4

    const/4 p1, 0x0

    .line 235
    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/helper/ClickHelper;->isFastClick(JZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 236
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v0, 0x7f1103cb

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 239
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->access$000(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;)Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->getState()I

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->access$000(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;)Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->getState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 243
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->access$000(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;)Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->getState()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 244
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->access$000(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;)Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setPause()I

    .line 245
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowStowInPause()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;->SeatRTStowClickOutPause:Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_2
    return-void

    .line 240
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->access$100(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;)V

    return-void
.end method

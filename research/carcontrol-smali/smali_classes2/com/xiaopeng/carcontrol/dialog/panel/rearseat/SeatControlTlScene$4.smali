.class Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene$4;
.super Ljava/lang/Object;
.source "SeatControlTlScene.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->setTrdListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 278
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene$4;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;

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

    .line 281
    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/helper/ClickHelper;->isFastClick(JZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 282
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v0, 0x7f1103cb

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 285
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene$4;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->access$500(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;)Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->getState()I

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene$4;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->access$500(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;)Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->getState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 289
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene$4;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->access$500(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;)Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->getState()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 290
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene$4;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->access$500(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;)Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setPause()I

    .line 291
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene$4;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowStowInPause()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;->SeatLTStowClickOutPause:Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_2
    return-void

    .line 286
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene$4;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->access$600(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;)V

    return-void
.end method

.class Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel$1;
.super Ljava/lang/Object;
.source "SeatSettingPanel.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->onInitView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;

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
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "xSegmented",
            "index",
            "fromUser"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 91
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;

    invoke-virtual {p3, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->isVuiAction(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    const/4 p1, 0x1

    const/4 p3, 0x0

    if-nez p2, :cond_1

    move v0, p1

    goto :goto_0

    :cond_1
    move v0, p3

    .line 93
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->access$000(Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "seg_drv  onSelectionChange  index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "  isLeg = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 94
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->access$100(Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;)Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->setLegOrLumbar(Z)V

    .line 95
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->access$200(Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    move-result-object p2

    xor-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setDrvLumbControlSw(Z)V

    :cond_2
    return-void
.end method

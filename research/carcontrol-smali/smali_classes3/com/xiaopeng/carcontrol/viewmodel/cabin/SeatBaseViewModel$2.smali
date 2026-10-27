.class Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel$2;
.super Ljava/lang/Object;
.source "SeatBaseViewModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->isDrvSeatOccupied()Z

    move-result v0

    .line 113
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;

    iget-object v1, v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "After 8s, drv seat occupied is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", and sbr status is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;

    iget-boolean v3, v3, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsDrvSbrOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;

    iget-boolean v1, v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsDrvSbrOn:Z

    if-eq v1, v0, :cond_0

    .line 115
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;

    iput-boolean v0, v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsDrvSbrOn:Z

    .line 116
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->handleDrvSeatSbrSt(Z)V

    :cond_0
    return-void
.end method

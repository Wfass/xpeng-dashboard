.class Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel$4;
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

    .line 133
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel$4;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel$4;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->isRearSeatOccupied()Z

    move-result v0

    .line 137
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel$4;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;

    iget-object v1, v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "After 8s, rear seat occupied is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", and sbr status is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel$4;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;

    iget-boolean v3, v3, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsRearSbrOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel$4;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;

    iget-boolean v1, v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsRearSbrOn:Z

    if-eq v1, v0, :cond_0

    .line 139
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel$4;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;

    iput-boolean v0, v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mIsRearSbrOn:Z

    .line 140
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel$4;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->handleRearSeatSbrSt(Z)V

    :cond_0
    return-void
.end method

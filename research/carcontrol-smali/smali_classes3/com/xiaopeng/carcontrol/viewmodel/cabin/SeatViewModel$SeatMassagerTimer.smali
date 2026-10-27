.class Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;
.super Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;
.source "SeatViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeatMassagerTimer"
.end annotation


# instance fields
.field seat:I

.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "seat"
        }
    .end annotation

    .line 4608
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 4609
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "seat_massage_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/32 v1, 0xdbba0

    const-wide/16 v3, 0x3e8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;-><init>(JJLjava/lang/String;)V

    .line 4610
    iput p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;->seat:I

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onFinish()V
    .locals 3

    .line 4633
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seat_massage_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;->seat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", time up!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4634
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;->seat:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->stopMassager(I)V

    return-void
.end method

.method public onTick(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 4615
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;->seat:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 4626
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->access$1600(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 4623
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->access$1500(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 4620
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->access$1400(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 4617
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$SeatMassagerTimer;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->access$1300(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.class Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;
.super Landroid/os/CountDownTimer;
.source "SeatViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManualAdjustSeatTimer"
.end annotation


# instance fields
.field private final mIsDriverSite:Z

.field private final mIsRearSeat:Z

.field private mIsTrdRowLeft:Z

.field private mIsTrdRowMid:Z

.field private mIsTrdRowRight:Z

.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;ZZJ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "isDriverSite",
            "isRearSeat",
            "count"
        }
    .end annotation

    .line 3074
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const-wide/16 v0, 0x32

    mul-long/2addr p4, v0

    .line 3075
    invoke-direct {p0, p4, p5, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    const/4 p1, 0x0

    .line 3071
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->mIsTrdRowLeft:Z

    .line 3072
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->mIsTrdRowRight:Z

    .line 3073
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->mIsTrdRowMid:Z

    .line 3077
    iput-boolean p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->mIsDriverSite:Z

    .line 3078
    iput-boolean p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->mIsRearSeat:Z

    return-void
.end method

.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;ZZZZZJ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "isDriverSite",
            "isRearSeat",
            "isTrdRowLeft",
            "isTrdRowRight",
            "isTrdRowMid",
            "count"
        }
    .end annotation

    .line 3081
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const-wide/16 v0, 0x32

    mul-long/2addr p7, v0

    .line 3082
    invoke-direct {p0, p7, p8, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    const/4 p1, 0x0

    .line 3071
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->mIsTrdRowLeft:Z

    .line 3072
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->mIsTrdRowRight:Z

    .line 3073
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->mIsTrdRowMid:Z

    .line 3084
    iput-boolean p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->mIsDriverSite:Z

    .line 3085
    iput-boolean p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->mIsRearSeat:Z

    .line 3086
    iput-boolean p4, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->mIsTrdRowLeft:Z

    .line 3087
    iput-boolean p5, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->mIsTrdRowRight:Z

    .line 3088
    iput-boolean p6, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->mIsTrdRowMid:Z

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 3148
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->mIsTrdRowLeft:Z

    if-eqz v0, :cond_0

    .line 3149
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->access$100(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)Lcom/xiaopeng/carcontrol/bean/Seat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlTrdRowLeftSeatEnd(I)V

    return-void

    .line 3151
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->mIsTrdRowRight:Z

    if-eqz v0, :cond_1

    .line 3152
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->access$300(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)Lcom/xiaopeng/carcontrol/bean/Seat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlTrdRowRightSeatEnd(I)V

    return-void

    .line 3154
    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->mIsTrdRowMid:Z

    if-eqz v0, :cond_2

    .line 3155
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->access$500(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)Lcom/xiaopeng/carcontrol/bean/Seat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlTrdRowMidSeatEnd(I)V

    return-void

    .line 3158
    :cond_2
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->mIsDriverSite:Z

    if-eqz v0, :cond_4

    .line 3159
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->mIsRearSeat:Z

    if-eqz v0, :cond_3

    .line 3160
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->access$700(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)Lcom/xiaopeng/carcontrol/bean/Seat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearLeftSeatEnd(I)V

    goto :goto_0

    .line 3162
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlDriverSeatEnd(I)V

    goto :goto_0

    .line 3165
    :cond_4
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->mIsRearSeat:Z

    if-eqz v0, :cond_5

    .line 3166
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->access$1000(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)Lcom/xiaopeng/carcontrol/bean/Seat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearRightSeatEnd(I)V

    goto :goto_0

    .line 3168
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->access$1200(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)Lcom/xiaopeng/carcontrol/bean/Seat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlPsnSeatEnd(I)V

    :goto_0
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millisUntilFinished"
        }
    .end annotation

    .line 3093
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->mIsTrdRowLeft:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 3094
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->getIgStatusFromMcu()I

    move-result p1

    if-ne p1, p2, :cond_0

    .line 3095
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->access$000(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)V

    goto :goto_0

    .line 3097
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->access$100(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)Lcom/xiaopeng/carcontrol/bean/Seat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlTrdRowLeftSeatEnd(I)V

    :goto_0
    return-void

    .line 3100
    :cond_1
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->mIsTrdRowRight:Z

    if-eqz p1, :cond_3

    .line 3101
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->getIgStatusFromMcu()I

    move-result p1

    if-ne p1, p2, :cond_2

    .line 3102
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->access$200(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)V

    goto :goto_1

    .line 3104
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->access$300(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)Lcom/xiaopeng/carcontrol/bean/Seat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlTrdRowRightSeatEnd(I)V

    :goto_1
    return-void

    .line 3107
    :cond_3
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->mIsTrdRowMid:Z

    if-eqz p1, :cond_5

    .line 3108
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->getIgStatusFromMcu()I

    move-result p1

    if-ne p1, p2, :cond_4

    .line 3109
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->access$400(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)V

    goto :goto_2

    .line 3111
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->access$500(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)Lcom/xiaopeng/carcontrol/bean/Seat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlTrdRowMidSeatEnd(I)V

    :goto_2
    return-void

    .line 3115
    :cond_5
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->mIsDriverSite:Z

    if-eqz p1, :cond_9

    .line 3116
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->mIsRearSeat:Z

    if-eqz p1, :cond_7

    .line 3117
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->getIgStatusFromMcu()I

    move-result p1

    if-ne p1, p2, :cond_6

    .line 3118
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->access$600(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)V

    goto :goto_3

    .line 3120
    :cond_6
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->access$700(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)Lcom/xiaopeng/carcontrol/bean/Seat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearLeftSeatEnd(I)V

    goto :goto_3

    .line 3123
    :cond_7
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->getIgStatusFromMcu()I

    move-result p1

    if-ne p1, p2, :cond_8

    .line 3124
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->access$800(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)V

    goto :goto_3

    .line 3126
    :cond_8
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iget-object p2, p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mDriverSeatData:Lcom/xiaopeng/carcontrol/bean/Seat;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlDriverSeatEnd(I)V

    goto :goto_3

    .line 3130
    :cond_9
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->mIsRearSeat:Z

    if-eqz p1, :cond_b

    .line 3131
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->getIgStatusFromMcu()I

    move-result p1

    if-ne p1, p2, :cond_a

    .line 3132
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->access$900(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)V

    goto :goto_3

    .line 3134
    :cond_a
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->access$1000(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)Lcom/xiaopeng/carcontrol/bean/Seat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlRearRightSeatEnd(I)V

    goto :goto_3

    .line 3137
    :cond_b
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->getIgStatusFromMcu()I

    move-result p1

    if-ne p1, p2, :cond_c

    .line 3138
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->access$1100(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)V

    goto :goto_3

    .line 3140
    :cond_c
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$ManualAdjustSeatTimer;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->access$1200(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)Lcom/xiaopeng/carcontrol/bean/Seat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/bean/Seat;->getAdjustingType()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->controlPsnSeatEnd(I)V

    :goto_3
    return-void
.end method

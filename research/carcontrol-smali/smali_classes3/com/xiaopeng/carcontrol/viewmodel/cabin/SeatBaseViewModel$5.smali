.class Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel$5;
.super Ljava/lang/Object;
.source "SeatBaseViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController$Callback;


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

    .line 147
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel$5;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackBeltWaringChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel$5;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->handleBackBeltWaringChanged(Z)V

    return-void
.end method

.method public onDoorStateChanged([I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "doorState"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel$5;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->handleDoorStateChanged([I)V

    return-void
.end method

.method public onDrvSeatOccupiedChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "occupied"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel$5;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->handleDrvSeatOccupied(Z)V

    return-void
.end method

.method public onEsbChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel$5;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->handleEsbChanged(Z)V

    return-void
.end method

.method public onRearSeatWelcomeModeChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel$5;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->handleRearSeatWelcomeModeChanged(Z)V

    return-void
.end method

.method public onWelcomeModeChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel$5;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->handleWelcomeModeChanged(Z)V

    return-void
.end method

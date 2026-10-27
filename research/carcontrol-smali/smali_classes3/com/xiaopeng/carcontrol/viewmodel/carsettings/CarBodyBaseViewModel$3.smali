.class Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$3;
.super Ljava/lang/Object;
.source "CarBodyBaseViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 291
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$3;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoPowerOffConfigStatusChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel$3;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->handleAutoPowerOffConfigChanged(Z)V

    return-void
.end method

.method public onSoldierStateChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    return-void
.end method

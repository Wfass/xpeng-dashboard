.class Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel$3;
.super Ljava/lang/Object;
.source "ChassisBaseViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 216
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel$3;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDriveModeChanged(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel$3;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->access$000(Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;)I

    move-result v0

    const/16 v1, 0xd

    const/16 v2, 0xf

    const/16 v3, 0x11

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel$3;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->access$000(Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;)I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel$3;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->access$000(Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;)I

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_1

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel$3;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;

    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->mEpsController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEpsController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEpsController;->getSteeringEps()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->onSteeringEpsChanged(I)V

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel$3;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->access$002(Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;I)I

    return-void
.end method

.class Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel$2;
.super Ljava/lang/Object;
.source "ChassisBaseViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/ICdcController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;
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

    .line 139
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCdcModeChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cdc"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->handleCdcModeChanged(I)V

    return-void
.end method

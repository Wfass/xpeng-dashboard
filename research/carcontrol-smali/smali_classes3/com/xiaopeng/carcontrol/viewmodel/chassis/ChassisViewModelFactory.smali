.class public final Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModelFactory;
.super Ljava/lang/Object;
.source "ChassisViewModelFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createChassisViewModel()Lcom/xiaopeng/carcontrol/viewmodel/chassis/IChassisViewModel;
    .locals 1

    .line 9
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;-><init>()V

    return-object v0
.end method

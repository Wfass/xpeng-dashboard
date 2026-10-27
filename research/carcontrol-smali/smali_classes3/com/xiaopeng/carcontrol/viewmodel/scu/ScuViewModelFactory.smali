.class public Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModelFactory;
.super Ljava/lang/Object;
.source "ScuViewModelFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createViewModel()Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;
    .locals 1

    .line 11
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;-><init>()V

    return-object v0
.end method

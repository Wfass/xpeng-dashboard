.class public final Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModelFactory;
.super Ljava/lang/Object;
.source "CiuViewModelFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCiuViewModel()Lcom/xiaopeng/carcontrol/viewmodel/ciu/ICiuViewModel;
    .locals 1

    .line 9
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;-><init>()V

    return-object v0
.end method

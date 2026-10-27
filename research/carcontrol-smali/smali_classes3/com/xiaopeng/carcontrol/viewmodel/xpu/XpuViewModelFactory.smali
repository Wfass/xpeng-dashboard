.class public Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModelFactory;
.super Ljava/lang/Object;
.source "XpuViewModelFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createXpuViewModel()Lcom/xiaopeng/carcontrol/viewmodel/xpu/IXpuViewModel;
    .locals 1

    .line 9
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;-><init>()V

    return-object v0
.end method

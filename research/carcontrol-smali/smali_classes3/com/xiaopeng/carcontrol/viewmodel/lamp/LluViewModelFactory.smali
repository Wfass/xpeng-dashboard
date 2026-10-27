.class public Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModelFactory;
.super Ljava/lang/Object;
.source "LluViewModelFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLluViewModel()Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILluViewModel;
    .locals 1

    .line 9
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;-><init>()V

    return-object v0
.end method

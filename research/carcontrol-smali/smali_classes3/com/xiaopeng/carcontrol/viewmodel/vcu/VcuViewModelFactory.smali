.class public final Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModelFactory;
.super Ljava/lang/Object;
.source "VcuViewModelFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createVcuViewModel(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "carType"
        }
    .end annotation

    .line 8
    new-instance p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;-><init>()V

    return-object p0
.end method

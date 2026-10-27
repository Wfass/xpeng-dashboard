.class public Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModelFactory;
.super Ljava/lang/Object;
.source "ServiceViewModelFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createViewModel(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "carType"
        }
    .end annotation

    .line 10
    new-instance p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;-><init>()V

    return-object p0
.end method

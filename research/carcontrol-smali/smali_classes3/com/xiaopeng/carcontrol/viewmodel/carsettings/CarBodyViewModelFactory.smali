.class public Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModelFactory;
.super Ljava/lang/Object;
.source "CarBodyViewModelFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCarBodyViewModel(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "carType"
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v0, "Q8B"

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_1

    :sswitch_1
    const-string v0, "Q7A"

    goto :goto_0

    :sswitch_2
    const-string v0, "Q3A"

    goto :goto_0

    :sswitch_3
    const-string v0, "QB"

    goto :goto_0

    :sswitch_4
    const-string v0, "Q9"

    goto :goto_0

    :sswitch_5
    const-string v0, "Q8"

    goto :goto_0

    :sswitch_6
    const-string v0, "Q7"

    goto :goto_0

    :sswitch_7
    const-string v0, "Q3"

    goto :goto_0

    :sswitch_8
    const-string v0, "Q1"

    goto :goto_0

    .line 21
    :goto_1
    new-instance p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;-><init>()V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa00 -> :sswitch_8
        0xa02 -> :sswitch_7
        0xa06 -> :sswitch_6
        0xa07 -> :sswitch_5
        0xa08 -> :sswitch_4
        0xa11 -> :sswitch_3
        0x1367f -> :sswitch_2
        0x136fb -> :sswitch_1
        0x1371b -> :sswitch_0
    .end sparse-switch
.end method

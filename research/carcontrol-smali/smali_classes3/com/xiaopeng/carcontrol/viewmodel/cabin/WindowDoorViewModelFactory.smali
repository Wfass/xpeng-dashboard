.class public Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModelFactory;
.super Ljava/lang/Object;
.source "WindowDoorViewModelFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createWindowDoorViewModel(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "carType"
        }
    .end annotation

    .line 11
    new-instance p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;-><init>()V

    return-object p0
.end method

.class public Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModelFactory;
.super Ljava/lang/Object;
.source "MirrorViewModelFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMirrorViewModel(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;
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
    new-instance p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;-><init>()V

    return-object p0
.end method

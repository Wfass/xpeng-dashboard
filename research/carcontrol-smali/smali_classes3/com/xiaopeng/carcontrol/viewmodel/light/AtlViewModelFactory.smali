.class public Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModelFactory;
.super Ljava/lang/Object;
.source "AtlViewModelFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAtlViewModel()Lcom/xiaopeng/carcontrol/viewmodel/light/IAtlViewModel;
    .locals 1

    .line 9
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;-><init>()V

    return-object v0
.end method

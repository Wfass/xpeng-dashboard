.class public Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModelFactory;
.super Ljava/lang/Object;
.source "SpaceCapsuleViewModelFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSpaceCapsuleViewModel()Lcom/xiaopeng/carcontrol/viewmodel/space/ISpaceCapsuleViewModel;
    .locals 1

    .line 5
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;-><init>()V

    return-object v0
.end method

.class public interface abstract Lcom/xiaopeng/carcontrol/viewmodel/sfs/ISfsViewModel;
.super Ljava/lang/Object;
.source "ISfsViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;


# virtual methods
.method public abstract getActivatedChannel()Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsChannel;
.end method

.method public abstract getTypesInChannel()[Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsType;
.end method

.method public abstract isSwEnabled()Z
.end method

.method public abstract setActiveChannel(Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsChannel;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sfsChannel"
        }
    .end annotation
.end method

.method public abstract setSwEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

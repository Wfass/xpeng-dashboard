.class public interface abstract Lcom/xiaopeng/lludancemanager/viewmodel/ILluDanceViewModel;
.super Ljava/lang/Object;
.source "ILluDanceViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getAllData()V
.end method

.method public abstract preliminaryWork()V
.end method

.method public abstract startPlay(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lluDanceViewData"
        }
    .end annotation
.end method

.method public abstract updateAllData(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateLoadingState(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLoading"
        }
    .end annotation
.end method

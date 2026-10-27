.class public interface abstract Lcom/xiaopeng/carcontrol/viewmodel/tbox/ITboxViewModel;
.super Ljava/lang/Object;
.source "ITboxViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;


# virtual methods
.method public abstract getSoldierSwStatus()I
.end method

.method public abstract setNetWorkType(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract setSoldierSw(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation
.end method

.method public abstract setTboxDigitalKeyAllDelete()V
.end method

.method public abstract setTboxDigitalKeyExistQuery()V
.end method

.method public abstract startSMSVerification()V
.end method

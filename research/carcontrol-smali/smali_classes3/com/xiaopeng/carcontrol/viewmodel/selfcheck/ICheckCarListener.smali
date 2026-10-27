.class public interface abstract Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/ICheckCarListener;
.super Ljava/lang/Object;
.source "ICheckCarListener.java"


# virtual methods
.method public abstract onCheckCancel()V
.end method

.method public abstract onCheckComplete()V
.end method

.method public abstract onCheckError(Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation
.end method

.method public abstract onCheckStart()V
.end method

.method public abstract onCheckStop()V
.end method

.method public abstract onChecking(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation
.end method

.method public abstract onMockChecking(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation
.end method

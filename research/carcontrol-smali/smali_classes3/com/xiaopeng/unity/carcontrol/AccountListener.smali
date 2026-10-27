.class public interface abstract Lcom/xiaopeng/unity/carcontrol/AccountListener;
.super Ljava/lang/Object;
.source "AccountListener.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/base/INapaListener;


# virtual methods
.method public abstract onAccountHabitListChanged(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "habitList"
        }
    .end annotation
.end method

.method public abstract onAccountUserInfoChanged(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userInfo"
        }
    .end annotation
.end method

.method public abstract onHabitGroupStateChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method public abstract onHabitRestoreIconStateChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shouldShowIcon"
        }
    .end annotation
.end method

.method public abstract onOwnerAccountChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

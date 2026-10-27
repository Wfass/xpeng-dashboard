.class public interface abstract Lcom/xiaopeng/unity/carcontrol/IAccountManager;
.super Ljava/lang/Object;
.source "IAccountManager.java"


# virtual methods
.method public abstract checkLogin()Z
.end method

.method public abstract getCurrentSyncUserInfo()Ljava/lang/String;
.end method

.method public abstract getHabitList()Ljava/lang/String;
.end method

.method public abstract getVehicleUserBindTime()Ljava/lang/String;
.end method

.method public abstract isOwnerAccount()Z
.end method

.method public abstract requestCreateNewSyncGroup()V
.end method

.method public abstract requestDeleteSyncGroup(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract requestLogin()V
.end method

.method public abstract requestLogout()V
.end method

.method public abstract requestRenameSyncGroup(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "rename"
        }
    .end annotation
.end method

.method public abstract requestSelectSyncGroupIndex(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

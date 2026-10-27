.class public interface abstract Lcom/xiaopeng/carcontrol/viewmodel/account/IAccountViewModel;
.super Ljava/lang/Object;
.source "IAccountViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;


# static fields
.field public static final SYNC_GROUP_CREATE_STATE_CREATED:I = 0x2

.field public static final SYNC_GROUP_CREATE_STATE_CREATE_FAILED:I = -0x1

.field public static final SYNC_GROUP_CREATE_STATE_CREATING:I = 0x1

.field public static final SYNC_GROUP_CREATE_STATE_INIT:I = 0x0

.field public static final SYNC_GROUP_DELETE_STATE_DELETED:I = 0x3

.field public static final SYNC_GROUP_DELETE_STATE_DELETE_FAILED:I = -0x3

.field public static final SYNC_GROUP_RENAME_STATE_RENAMED:I = 0x4

.field public static final SYNC_GROUP_RENAME_STATE_RENAME_FAILED:I = -0x4

.field public static final SYNC_GROUP_SELECT_STATE_SELECTED:I = 0x5


# virtual methods
.method public abstract checkAllSafeExamResult()V
.end method

.method public abstract checkLogin()Z
.end method

.method public abstract closeSdsEnterPGear()V
.end method

.method public abstract getCurrentHabitSum()I
.end method

.method public abstract getCurrentSyncGroupId()Ljava/lang/String;
.end method

.method public abstract getCurrentSyncGroupName()Ljava/lang/String;
.end method

.method public abstract getCurrentSyncUserInfo()Ljava/lang/String;
.end method

.method public abstract getFreengpUidResult()V
.end method

.method public abstract getHabitList()Ljava/lang/String;
.end method

.method public abstract getTaskQrCode(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskId"
        }
    .end annotation
.end method

.method public abstract getTaskResult(JZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taskId",
            "loop"
        }
    .end annotation
.end method

.method public abstract getVehicleUserBindTime()Ljava/lang/String;
.end method

.method public abstract isLocalExamResultAvailable()Z
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

.method public abstract updateApaSafeExamResult()V
.end method

.method public abstract updateLccSafeExamResult()V
.end method

.method public abstract updateSuperLccSafeExamResult()V
.end method

.method public abstract updateSuperVpaSafeExamResult()V
.end method

.method public abstract updateXngpSafeExamResult()V
.end method

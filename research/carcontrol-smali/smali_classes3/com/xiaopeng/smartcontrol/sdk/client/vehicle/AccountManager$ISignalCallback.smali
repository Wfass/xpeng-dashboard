.class public interface abstract Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AccountManager$ISignalCallback;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager$IBaseSignalReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISignalCallback"
.end annotation


# virtual methods
.method public onAccountHabitListChanged(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "habitList"
        }
    .end annotation

    return-void
.end method

.method public onAccountUserInfoChanged(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userInfo"
        }
    .end annotation

    return-void
.end method

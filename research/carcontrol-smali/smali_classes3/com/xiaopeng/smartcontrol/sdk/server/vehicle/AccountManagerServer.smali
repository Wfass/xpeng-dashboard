.class public interface abstract Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AccountManagerServer;
.super Ljava/lang/Object;
.source "AccountManagerServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/AccountManagerServer$Implementation;
    }
.end annotation


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

.class public interface abstract Lcom/xiaopeng/xvs/xid/account/api/IAccount;
.super Ljava/lang/Object;
.source "IAccount.java"

# interfaces
.implements Lcom/xiaopeng/xvs/xid/base/IInterface;


# static fields
.field public static final ACCOUNT_TYPE_XP_VEHICLE:Ljava/lang/String; = "com.xiaopeng.accountservice.ACCOUNT_TYPE_XP_VEHICLE"

.field public static final ACTION_CARACCOUNT_LOGOUT:Ljava/lang/String; = "com.xiaopeng.xvs.sync.ACTION_SERVICE_REQ_ACCOUNT_LOGOUT"

.field public static final CARACCOUNT_NAME:Ljava/lang/String; = "com.xiaopeng.caraccount"

.field public static final DIALOG_QR_NAME:Ljava/lang/String; = "com.xiaopeng.xvs.account.ACTION_ACCOUNT_DIALOG_QR_REQUEST"

.field public static final LOGOUT_TYPE_ACTIVE:I = 0x1


# virtual methods
.method public abstract addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x0
        }
        names = {
            "listener",
            "handler",
            "updateImmediately",
            "accountTypes"
        }
    .end annotation
.end method

.method public abstract addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "listener",
            "updateImmediately"
        }
    .end annotation
.end method

.method public abstract getAccount()Landroid/accounts/Account;
.end method

.method public abstract getAccountInfo()Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;
.end method

.method public abstract getUid()J
.end method

.method public abstract getUserExtraData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation
.end method

.method public abstract isLogin()Z
.end method

.method public abstract login()V
.end method

.method public abstract login(Landroid/app/Activity;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation
.end method

.method public abstract login(Lcom/xiaopeng/xvs/xid/account/api/LoginType;Landroid/app/Activity;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "activity"
        }
    .end annotation
.end method

.method public abstract logout()V
.end method

.method public abstract logout(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract registerAccountChangedReceiver(Landroid/content/BroadcastReceiver;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "receiver"
        }
    .end annotation
.end method

.method public abstract removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract setUserExtraData(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation
.end method

.method public abstract unregisterAccountChangedReceiver(Landroid/content/BroadcastReceiver;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "receiver"
        }
    .end annotation
.end method

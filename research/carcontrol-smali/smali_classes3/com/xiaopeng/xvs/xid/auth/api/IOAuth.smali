.class public interface abstract Lcom/xiaopeng/xvs/xid/auth/api/IOAuth;
.super Ljava/lang/Object;
.source "IOAuth.java"


# static fields
.field public static final AUTH_INFO_EXTRA_APP_ID:Ljava/lang/String; = "app_id"

.field public static final AUTH_INFO_EXTRA_APP_SECRET:Ljava/lang/String; = "app_secret"

.field public static final AUTH_TYPE_AUTH_CODE:Ljava/lang/String; = "com.xiaopeng.accountservice.AUTH_TYPE_AUTH_CODE"

.field public static final AUTH_TYPE_AUTH_OTP:Ljava/lang/String; = "com.xiaopeng.accountservice.AUTH_TYPE_AUTH_OTP"

.field public static final AUTH_TYPE_BIND_VE_DATA_AUTH:Ljava/lang/String; = "com.xiaopeng.accountservice.AUTH_TYPE_BIND_VE_DATA_AUTH"

.field public static final AUTH_TYPE_CHECK_VE_DATA_AUTH:Ljava/lang/String; = "com.xiaopeng.accountservice.AUTH_TYPE_CHECK_VE_DATA_AUTH"

.field public static final AUTH_TYPE_DELETE_VE_DATA_AUTH_RECORD:Ljava/lang/String; = "com.xiaopeng.accountservice.AUTH_TYPE_DELETE_VE_DATA_AUTH_RECORD"


# virtual methods
.method public abstract requestCarBind(Landroid/app/Activity;)Lcom/xiaopeng/xvs/xid/base/IResponse;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation
.end method

.method public abstract requestCarBind(Landroid/app/Activity;Lcom/xiaopeng/xvs/xid/base/ICallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/xiaopeng/xvs/xid/base/ICallback<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xvs/xid/base/IException;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract requestCarBind(Landroid/app/Activity;Lcom/xiaopeng/xvs/xid/base/ICallback;Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "callback",
            "handler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/xiaopeng/xvs/xid/base/ICallback<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xvs/xid/base/IException;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation
.end method

.method public abstract requestOAuth(Landroid/app/Activity;)Lcom/xiaopeng/xvs/xid/base/IResponse;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation
.end method

.method public abstract requestOAuth(Landroid/app/Activity;Lcom/xiaopeng/xvs/xid/base/ICallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/xiaopeng/xvs/xid/base/ICallback<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xvs/xid/base/IException;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract requestOAuth(Landroid/app/Activity;Lcom/xiaopeng/xvs/xid/base/ICallback;Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "callback",
            "handler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/xiaopeng/xvs/xid/base/ICallback<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xvs/xid/base/IException;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation
.end method

.method public abstract requestOTP()Lcom/xiaopeng/xvs/xid/base/IResponse;
.end method

.method public abstract requestOTP(Lcom/xiaopeng/xvs/xid/base/ICallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/xvs/xid/base/ICallback<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xvs/xid/base/IException;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract requestOTP(Lcom/xiaopeng/xvs/xid/base/ICallback;Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/xvs/xid/base/ICallback<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xvs/xid/base/IException;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation
.end method

.method public abstract requestToBindCar(Landroid/app/Activity;)Lcom/xiaopeng/xvs/xid/base/IResponse;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation
.end method

.method public abstract requestToBindCar(Landroid/app/Activity;Lcom/xiaopeng/xvs/xid/base/ICallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/xiaopeng/xvs/xid/base/ICallback<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xvs/xid/base/IException;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract requestToBindCar(Landroid/app/Activity;Lcom/xiaopeng/xvs/xid/base/ICallback;Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "callback",
            "handler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/xiaopeng/xvs/xid/base/ICallback<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xvs/xid/base/IException;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation
.end method

.method public abstract requestToDeleteBindCar(Landroid/app/Activity;)Lcom/xiaopeng/xvs/xid/base/IResponse;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation
.end method

.method public abstract requestToDeleteBindCar(Landroid/app/Activity;Lcom/xiaopeng/xvs/xid/base/ICallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/xiaopeng/xvs/xid/base/ICallback<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xvs/xid/base/IException;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract requestToDeleteBindCar(Landroid/app/Activity;Lcom/xiaopeng/xvs/xid/base/ICallback;Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "callback",
            "handler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/xiaopeng/xvs/xid/base/ICallback<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xvs/xid/base/IException;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation
.end method

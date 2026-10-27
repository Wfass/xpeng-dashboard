.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IError;
.super Ljava/lang/Object;
.source "IError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IError$ErrCode;
    }
.end annotation


# static fields
.field public static final ERROR_CODE_SERVER_UNKNOWN:I = 0x0

.field public static final ERR_REQUEST_FAILED:I = 0x3ea

.field public static final ERR_SERVICE_DISCONNECTED:I = 0x3e8

.field public static final ERR_USER_LOGOUT:I = 0x3e9

.field public static final STR_REQUEST_FAILED:Ljava/lang/String; = "\u7f51\u7edc\u8bf7\u6c42\u5931\u8d25"

.field public static final STR_SERVICE_DISCONNECTED:Ljava/lang/String; = "\u8d26\u53f7\u670d\u52a1\u5df2\u65ad\u5f00\u8fde\u63a5"

.field public static final STR_UNKNOWN_ERR:Ljava/lang/String; = "\u8d26\u53f7\u670d\u52a1\u672a\u77e5\u9519\u8bef"

.field public static final STR_USER_LOGOUT:Ljava/lang/String; = "\u7528\u6237\u672a\u767b\u5f55"


# virtual methods
.method public abstract getCode()I
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

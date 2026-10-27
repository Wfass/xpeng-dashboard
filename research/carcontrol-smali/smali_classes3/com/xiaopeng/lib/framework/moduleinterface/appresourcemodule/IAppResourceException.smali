.class public abstract Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceException;
.super Ljava/lang/Exception;
.source "IAppResourceException.java"


# static fields
.field public static final REASON_BINDER_FAILED:I = 0xfa1

.field public static final REASON_BINDER_TIMEOUT:I = 0xfa2

.field public static final REASON_FILE_NOT_FOUND:I = 0x7d1

.field public static final REASON_HTTP_ERROR:I = 0xfa7

.field public static final REASON_HTTP_FILE_DOWNLOADING:I = 0xfa5

.field public static final REASON_HTTP_NOT_FOUND:I = 0xfa6

.field public static final REASON_HTTP_NO_ETAG:I = 0xfa3

.field public static final REASON_HTTP_NO_UPDATE:I = 0xfa4

.field public static final REASON_INVALID_URI:I = 0x3ea

.field public static final REASON_MGR_DB_ERROR:I = 0x7d2

.field public static final REASON_NOT_AVAILABLE_NOW:I = 0xbba

.field public static final REASON_NOT_INITIALIZED:I = 0x3e9

.field public static final REASON_NOT_SUPPORT:I = 0x1389

.field public static final REASON_NO_PERMISSION:I = 0xbb9

.field public static final REASON_PARAM_ERROR:I = 0x3eb


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract getReason()J
.end method

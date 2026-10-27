.class public Lcom/lzy/okgo/exception/StorageException;
.super Ljava/lang/Exception;
.source "StorageException.java"


# static fields
.field private static final serialVersionUID:J = 0xaaa81a1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 43
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 44
    return-void
.end method

.method public static NOT_AVAILABLE()Lcom/lzy/okgo/exception/StorageException;
    .locals 2

    .line 47
    new-instance v0, Lcom/lzy/okgo/exception/StorageException;

    const-string v1, "SDCard isn\'t available, please check SD card and permission: WRITE_EXTERNAL_STORAGE, and you must pay attention to Android6.0 RunTime Permissions!"

    invoke-direct {v0, v1}, Lcom/lzy/okgo/exception/StorageException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

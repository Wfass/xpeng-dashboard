.class public Lcom/xiaopeng/lib/utils/log/XLogLoadLibraryException;
.super Ljava/lang/Exception;
.source "XLogLoadLibraryException.java"


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "Load library fail, please check /system/lib/libc++_shared.so and /system/lib/libmarsxlog.so"

    .line 10
    invoke-direct {p0, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

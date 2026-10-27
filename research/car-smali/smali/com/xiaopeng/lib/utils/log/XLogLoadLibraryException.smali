.class public Lcom/xiaopeng/lib/utils/log/XLogLoadLibraryException;
.super Ljava/lang/Exception;
.source "XLogLoadLibraryException.java"


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 10
    const-string v0, "Load library fail, please check /system/lib/libc++_shared.so and /system/lib/libmarsxlog.so"

    invoke-direct {p0, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    return-void
.end method

.class public Lcom/alibaba/sdk/android/man/crashreporter/e/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    .line 9
    invoke-static {p0}, Lcom/alibaba/sdk/android/man/crashreporter/e/i;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 18
    :cond_1
    return-void
.end method

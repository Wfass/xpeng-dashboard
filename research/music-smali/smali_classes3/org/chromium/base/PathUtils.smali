.class public abstract Lorg/chromium/base/PathUtils;
.super Ljava/lang/Object;
.source "PathUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/PathUtils$a;
    }
.end annotation


# static fields
.field static final synthetic a:Z

.field private static final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static c:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lorg/chromium/base/PathUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/chromium/base/PathUtils;->a:Z

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lorg/chromium/base/PathUtils;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    .line 170
    invoke-static {}, Lorg/chromium/base/PathUtils$a;->a()[Ljava/lang/String;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    return-void

    .line 98
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to set permissions for path \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "PathUtils"

    invoke-static {v0, p0, p1}, Lorg/chromium/base/e;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static synthetic a(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 79
    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static synthetic a()[Ljava/lang/String;
    .locals 1

    .line 31
    invoke-static {}, Lorg/chromium/base/PathUtils;->b()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b()[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 73
    :try_start_0
    sget-object v1, Lorg/chromium/base/PathUtils;->c:Ljava/util/concurrent/FutureTask;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    invoke-static {}, Lorg/chromium/base/f;->b()Lorg/chromium/base/f;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 78
    :try_start_1
    invoke-static {}, Lorg/chromium/base/PathUtils;->c()[Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 79
    :try_start_2
    invoke-static {v0, v1}, Lorg/chromium/base/PathUtils;->a(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    return-object v2

    :catchall_0
    move-exception v2

    move-object v3, v0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 75
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    move-object v4, v3

    move-object v3, v2

    move-object v2, v4

    :goto_0
    if-eqz v1, :cond_1

    .line 79
    :try_start_4
    invoke-static {v3, v1}, Lorg/chromium/base/PathUtils;->a(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_1
    throw v2

    .line 83
    :cond_2
    sget-object v1, Lorg/chromium/base/PathUtils;->c:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_1

    return-object v1

    :catch_1
    return-object v0
.end method

.method private static c()[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x3

    .line 113
    new-array v0, v0, [Ljava/lang/String;

    .line 114
    invoke-static {}, Lorg/chromium/base/c;->a()Landroid/content/Context;

    move-result-object v1

    .line 115
    sget-object v2, Lorg/chromium/base/PathUtils;->d:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 116
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 118
    aget-object v2, v0, v3

    const/16 v4, 0x1c0

    invoke-static {v2, v4}, Lorg/chromium/base/PathUtils;->a(Ljava/lang/String;I)V

    const-string v2, "textures"

    .line 119
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 120
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 121
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 122
    sget-object v2, Lorg/chromium/base/PathUtils;->e:Ljava/lang/String;

    const/4 v3, 0x2

    if-nez v2, :cond_0

    .line 123
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0

    .line 125
    :cond_0
    new-instance v2, Ljava/io/File;

    .line 126
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    sget-object v4, Lorg/chromium/base/PathUtils;->e:Ljava/lang/String;

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getAllPrivateDownloadsDirectories()[Ljava/lang/String;
    .locals 5
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 234
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    .line 235
    invoke-static {}, Lorg/chromium/base/f;->b()Lorg/chromium/base/f;

    move-result-object v0

    const/4 v2, 0x0

    .line 236
    :try_start_0
    invoke-static {}, Lorg/chromium/base/c;->a()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 238
    invoke-static {v2, v0}, Lorg/chromium/base/PathUtils;->a(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v1

    .line 235
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_0

    .line 238
    invoke-static {v2, v0}, Lorg/chromium/base/PathUtils;->a(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_0
    throw v1

    :cond_1
    const/4 v0, 0x1

    .line 240
    new-array v3, v0, [Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    aput-object v0, v3, v1

    .line 243
    :cond_2
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    :goto_2
    array-length v2, v3

    if-ge v1, v2, :cond_5

    .line 245
    aget-object v2, v3, v1

    if-eqz v2, :cond_4

    aget-object v2, v3, v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    .line 246
    :cond_3
    aget-object v2, v3, v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 249
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getCacheDirectory()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 187
    sget-boolean v0, Lorg/chromium/base/PathUtils;->a:Z

    if-nez v0, :cond_1

    sget-object v0, Lorg/chromium/base/PathUtils;->c:Ljava/util/concurrent/FutureTask;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "setDataDirectorySuffix must be called first."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x2

    .line 188
    invoke-static {v0}, Lorg/chromium/base/PathUtils;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDataDirectory()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 178
    sget-boolean v0, Lorg/chromium/base/PathUtils;->a:Z

    if-nez v0, :cond_1

    sget-object v0, Lorg/chromium/base/PathUtils;->c:Ljava/util/concurrent/FutureTask;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "setDataDirectorySuffix must be called first."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 179
    invoke-static {v0}, Lorg/chromium/base/PathUtils;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDownloadsDirectory()Ljava/lang/String;
    .locals 8
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 204
    invoke-static {}, Lorg/chromium/base/f;->c()Lorg/chromium/base/f;

    move-result-object v0

    const/4 v1, 0x0

    .line 205
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 207
    invoke-static {}, Lorg/chromium/base/BuildInfo;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 213
    invoke-static {}, Lorg/chromium/base/PathUtils;->getAllPrivateDownloadsDirectories()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    goto :goto_0

    .line 215
    :cond_0
    sget-object v4, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 217
    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 218
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    :goto_0
    const-string v5, "Android.StrictMode.DownloadsDir"

    .line 221
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    .line 220
    invoke-static {v5, v6, v7}, Lorg/chromium/base/metrics/RecordHistogram;->a(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 223
    invoke-static {v1, v0}, Lorg/chromium/base/PathUtils;->a(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_1
    return-object v4

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v1

    .line 204
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v0, :cond_2

    .line 223
    invoke-static {v1, v0}, Lorg/chromium/base/PathUtils;->a(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_2
    throw v2
.end method

.method public static getExternalStorageDirectory()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 273
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getNativeLibraryDirectory()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 258
    invoke-static {}, Lorg/chromium/base/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 259
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_1

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "/system/lib/"

    return-object v0

    .line 261
    :cond_1
    :goto_0
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    return-object v0
.end method

.method public static getThumbnailCacheDirectory()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 193
    sget-boolean v0, Lorg/chromium/base/PathUtils;->a:Z

    if-nez v0, :cond_1

    sget-object v0, Lorg/chromium/base/PathUtils;->c:Ljava/util/concurrent/FutureTask;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "setDataDirectorySuffix must be called first."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 194
    invoke-static {v0}, Lorg/chromium/base/PathUtils;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

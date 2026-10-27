.class public Lcom/irdeto/securesdk/SecureSDKManager;
.super Ljava/lang/Object;
.source "SecureSDKManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/irdeto/securesdk/SecureSDKManager$SdkStatusListener;
    }
.end annotation


# static fields
.field private static final EXTERNAL_READ_PHONE_STATE:Ljava/lang/String; = "android.permission.READ_PHONE_STATE"

.field private static final EXTERNAL_STORAGE_PERMISSION:Ljava/lang/String; = "android.permission.WRITE_EXTERNAL_STORAGE"

.field private static final TAG:Ljava/lang/String; = "securesdk"

.field private static ctx:Landroid/content/Context; = null

.field private static mAgentInitRes:I = 0x0

.field private static mPackageName:Ljava/lang/String; = null

.field private static mStatusListener:Lcom/irdeto/securesdk/SecureSDKManager$SdkStatusListener; = null

.field private static sInitLock:Ljava/lang/Object; = null

.field private static sInitialized:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/irdeto/securesdk/SecureSDKManager;->sInitLock:Ljava/lang/Object;

    const/4 v0, -0x1

    sput v0, Lcom/irdeto/securesdk/SecureSDKManager;->mAgentInitRes:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _isfCleanup()I
    .locals 1

    invoke-static {}, Lcom/irdeto/securesdk/api;->isfCleanup()I

    move-result v0

    return v0
.end method

.method private static _isfInitialize()I
    .locals 1

    invoke-static {}, Lcom/irdeto/securesdk/api;->isfInitialize()I

    move-result v0

    return v0
.end method

.method private checkSSExist()Z
    .locals 6

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {}, Lcom/irdeto/securesdk/SecureSDKManager;->isX86()Z

    move-result v0

    sget-object v0, Lcom/irdeto/securesdk/SecureSDKManager;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/irdeto/securesdk/SecureSDKManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/files"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "irss0.dat"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "irss1.dat"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "not exits!!"

    const-string v5, "securesdk"

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v5, v0}, Lcom/irdeto/securesdk/core/O000000o;->O00000o0(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private copySS(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    invoke-virtual {p1, p4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/irdeto/securesdk/SecureSDKManager;->migrateDescriptor(Ljava/io/InputStream;Ljava/io/File;)V

    return-void
.end method

.method private findSpecificFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/irdeto/securesdk/SecureSDKManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/files"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static getProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object p0

    :cond_2
    return-object v0
.end method

.method private static isApkDebugable(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method private static isX86()Z
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const-string v2, "android.os.Build"

    const/4 v3, 0x0

    const-string v4, "x86"

    const/16 v5, 0x15

    if-ge v0, v5, :cond_0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "CPU_ABI"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    goto :goto_1

    :cond_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "SUPPORTED_ABIS"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    move v1, v3

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    return v3
.end method

.method public static isfMsgPack([B)[B
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/irdeto/securesdk/api;->isfMsgPack([B)[B

    move-result-object p0

    return-object p0
.end method

.method private static loadLibSo(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const-string p0, "(libirmsdk_)(\\d+\\.\\d+\\.\\d+)(_.+)*(\\.so)"

    invoke-static {p1, p0}, Lcom/irdeto/securesdk/core/O000000o;->O000000o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v1
.end method

.method private migrateDescriptor(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 3

    const/16 v0, 0x2800

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [B

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1, p2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p2

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception p2

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    :goto_1
    :try_start_2
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_3
    throw p2
.end method

.method private static setIndivStorePath(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lcom/irdeto/securesdk/api;->isfSetIndivStorePath(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static verifyPermissions(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public cleanAllDataInUserStore(Landroid/content/Context;)I
    .locals 4

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {}, Lcom/irdeto/securesdk/SecureSDKManager;->isX86()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "x86"

    goto :goto_0

    :cond_0
    const-string v0, "armeabi"

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/irdeto/securesdk/SecureSDKManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/files"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "irss3.dat"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v3, v0, v1}, Lcom/irdeto/securesdk/SecureSDKManager;->copySS(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/irdeto/securesdk/core/SSUtils;->O000000o()V

    const/4 p1, 0x0

    return p1
.end method

.method public isfCleanup()I
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/irdeto/securesdk/SecureSDKManager;->sInitialized:Z

    invoke-static {}, Lcom/irdeto/securesdk/SecureSDKManager;->_isfCleanup()I

    move-result v0

    return v0
.end method

.method public isfInitialize(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4

    sget-object v0, Lcom/irdeto/securesdk/SecureSDKManager;->sInitLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/irdeto/securesdk/SecureSDKManager;->sInitialized:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    sput-object p1, Lcom/irdeto/securesdk/SecureSDKManager;->ctx:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/irdeto/securesdk/SecureSDKManager;->mPackageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/irdeto/securesdk/SecureSDKManager;->verifyPermissions(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {p1}, Lcom/irdeto/securesdk/SecureSDKManager;->isApkDebugable(Landroid/content/Context;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_a

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/irdeto/securesdk/SecureSDKManager;->setupSecureStore(Landroid/content/Context;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-direct {p0}, Lcom/irdeto/securesdk/SecureSDKManager;->checkSSExist()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {p1}, Lcom/irdeto/securesdk/api;->getSharedSoPath(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {p1, v1}, Lcom/irdeto/securesdk/SecureSDKManager;->loadLibSo(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p2}, Lcom/irdeto/securesdk/SecureSDKManager;->setIndivStorePath(Ljava/lang/String;)I

    invoke-static {}, Lcom/irdeto/securesdk/SecureSDKManager;->_isfInitialize()I

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v1, 0x417

    if-eq p2, v1, :cond_6

    const/16 v1, 0x1101

    if-eq p2, v1, :cond_5

    const/16 v1, 0x1103

    const/16 v3, 0x1102

    if-eq p2, v3, :cond_1

    if-ne p2, v1, :cond_2

    :cond_1
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/irdeto/securesdk/SecureSDKManager;->setupSecureStore(Landroid/content/Context;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    const/4 p1, 0x1

    sput-boolean p1, Lcom/irdeto/securesdk/SecureSDKManager;->sInitialized:Z

    if-eq p2, v1, :cond_4

    if-ne p2, v3, :cond_3

    move p2, v2

    :cond_3
    monitor-exit v0

    return p2

    :cond_4
    const-string p1, "securesdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "throw root exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/irdeto/securesdk/core/O000000o;->O00000o0(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/irdeto/securesdk/ISFException;

    sget-object p2, Lcom/irdeto/securesdk/O000000o;->O0000OoO:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {p1, p2}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw p1

    :cond_5
    const-string p1, "zxq"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "throw shared secure store invalid exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/irdeto/securesdk/core/O000000o;->O00000o0(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/irdeto/securesdk/ISFException;

    sget-object p2, Lcom/irdeto/securesdk/O000000o;->O0000o0O:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {p1, p2}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw p1

    :cond_6
    new-instance p1, Lcom/irdeto/securesdk/ISFException;

    sget-object p2, Lcom/irdeto/securesdk/O000000o;->O0000OoO:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {p1, p2}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw p1

    :cond_7
    new-instance p1, Lcom/irdeto/securesdk/ISFException;

    sget-object p2, Lcom/irdeto/securesdk/O000000o;->O0000o0:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {p1, p2}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw p1

    :cond_8
    new-instance p1, Lcom/irdeto/securesdk/ISFException;

    sget-object p2, Lcom/irdeto/securesdk/O000000o;->O0000o0:Lcom/irdeto/securesdk/O000000o;

    const-string v1, "shared lib path is null"

    invoke-direct {p1, p2, v1}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Lcom/irdeto/securesdk/ISFException;

    sget-object p2, Lcom/irdeto/securesdk/O000000o;->O0000o:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {p1, p2}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw p1

    :cond_a
    new-instance p1, Lcom/irdeto/securesdk/ISFException;

    sget-object p2, Lcom/irdeto/securesdk/O000000o;->O0000o0o:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {p1, p2}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw p1

    :cond_b
    new-instance p1, Lcom/irdeto/securesdk/ISFException;

    sget-object p2, Lcom/irdeto/securesdk/O000000o;->O00000o0:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {p1, p2}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw p1

    :cond_c
    new-instance p1, Lcom/irdeto/securesdk/ISFException;

    sget-object p2, Lcom/irdeto/securesdk/O000000o;->O0000Oo0:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {p1, p2}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public setOnSdkStatusListener(Lcom/irdeto/securesdk/SecureSDKManager$SdkStatusListener;)V
    .locals 1

    sput-object p1, Lcom/irdeto/securesdk/SecureSDKManager;->mStatusListener:Lcom/irdeto/securesdk/SecureSDKManager$SdkStatusListener;

    sget p1, Lcom/irdeto/securesdk/SecureSDKManager;->mAgentInitRes:I

    if-nez p1, :cond_0

    sget-object p1, Lcom/irdeto/securesdk/SecureSDKManager;->mStatusListener:Lcom/irdeto/securesdk/SecureSDKManager$SdkStatusListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/irdeto/securesdk/SecureSDKManager$SdkStatusListener;->onStatus(I)V

    :cond_0
    return-void
.end method

.method public setupSecureStore(Landroid/content/Context;)Z
    .locals 7

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {}, Lcom/irdeto/securesdk/SecureSDKManager;->isX86()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "x86"

    goto :goto_0

    :cond_0
    const-string v0, "armeabi"

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/irdeto/securesdk/SecureSDKManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/files"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "acv_1.0.0.dat"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "acv_"

    const-string v6, ".dat"

    invoke-direct {p0, v5, v6}, Lcom/irdeto/securesdk/SecureSDKManager;->findSpecificFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v5, v0, v4}, Lcom/irdeto/securesdk/SecureSDKManager;->copySS(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "surface.png"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, p1, v5, v0, v4}, Lcom/irdeto/securesdk/SecureSDKManager;->copySS(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "irss0.dat"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, p1, v5, v0, v4}, Lcom/irdeto/securesdk/SecureSDKManager;->copySS(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "irss3.dat"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0, p1, v5, v0, v4}, Lcom/irdeto/securesdk/SecureSDKManager;->copySS(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "irss1.dat"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0, p1, v3, v0, v1}, Lcom/irdeto/securesdk/SecureSDKManager;->copySS(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

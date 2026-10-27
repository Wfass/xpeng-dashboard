.class public final Lcom/blankj/utilcode/util/CrashUtils;
.super Ljava/lang/Object;
.source "CrashUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/CrashUtils$CrashInfo;,
        Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_UNCAUGHT_EXCEPTION_HANDLER:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static final FILE_SEP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-string v0, "file.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/blankj/utilcode/util/CrashUtils;->FILE_SEP:Ljava/lang/String;

    .line 25
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Lcom/blankj/utilcode/util/CrashUtils;->DEFAULT_UNCAUGHT_EXCEPTION_HANDLER:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .line 21
    sget-object v0, Lcom/blankj/utilcode/util/CrashUtils;->DEFAULT_UNCAUGHT_EXCEPTION_HANDLER:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method private static getUncaughtExceptionHandler(Ljava/lang/String;Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1
    .param p0, "dirPath"    # Ljava/lang/String;
    .param p1, "onCrashListener"    # Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;

    .line 98
    new-instance v0, Lcom/blankj/utilcode/util/CrashUtils$1;

    invoke-direct {v0, p1, p0}, Lcom/blankj/utilcode/util/CrashUtils$1;-><init>(Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;Ljava/lang/String;)V

    return-object v0
.end method

.method public static init()V
    .locals 1

    .line 35
    const-string v0, ""

    invoke-static {v0}, Lcom/blankj/utilcode/util/CrashUtils;->init(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static init(Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;)V
    .locals 1
    .param p0, "onCrashListener"    # Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;

    .line 62
    const-string v0, ""

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/CrashUtils;->init(Ljava/lang/String;Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;)V

    .line 63
    return-void
.end method

.method public static init(Ljava/io/File;)V
    .locals 2
    .param p0, "crashDir"    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 43
    if-eqz p0, :cond_0

    .line 44
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/CrashUtils;->init(Ljava/lang/String;Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;)V

    .line 45
    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'crashDir\' of type File (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static init(Ljava/io/File;Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;)V
    .locals 2
    .param p0, "crashDir"    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "onCrashListener"    # Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;

    .line 71
    if-eqz p0, :cond_0

    .line 72
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/CrashUtils;->init(Ljava/lang/String;Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;)V

    .line 73
    return-void

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'crashDir\' of type File (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static init(Ljava/lang/String;)V
    .locals 1
    .param p0, "crashDirPath"    # Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/CrashUtils;->init(Ljava/lang/String;Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;)V

    .line 54
    return-void
.end method

.method public static init(Ljava/lang/String;Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;)V
    .locals 3
    .param p0, "crashDirPath"    # Ljava/lang/String;
    .param p1, "onCrashListener"    # Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;

    .line 83
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isSDCardEnableByEnvironment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/blankj/utilcode/util/CrashUtils;->FILE_SEP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "crash"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/blankj/utilcode/util/CrashUtils;->FILE_SEP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/blankj/utilcode/util/CrashUtils;->FILE_SEP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "crash"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/blankj/utilcode/util/CrashUtils;->FILE_SEP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "dirPath":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 91
    .end local v0    # "dirPath":Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/blankj/utilcode/util/CrashUtils;->FILE_SEP:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/blankj/utilcode/util/CrashUtils;->FILE_SEP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .restart local v0    # "dirPath":Ljava/lang/String;
    :goto_1
    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/CrashUtils;->getUncaughtExceptionHandler(Ljava/lang/String;Lcom/blankj/utilcode/util/CrashUtils$OnCrashListener;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 94
    return-void
.end method

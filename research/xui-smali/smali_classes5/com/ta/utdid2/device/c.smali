.class Lcom/ta/utdid2/device/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static e:Ljava/lang/String;


# direct methods
.method private static a(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 2

    .line 126
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x4000

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    return-object p0

    .line 131
    :catch_0
    move-exception p0

    .line 132
    const-string v0, ""

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/ta/a/c/f;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 135
    const/4 p0, 0x0

    return-object p0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 40
    sget-object v0, Lcom/ta/utdid2/device/c;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    sget-object p0, Lcom/ta/utdid2/device/c;->e:Ljava/lang/String;

    return-object p0

    .line 45
    :cond_0
    invoke-static {}, Lcom/ta/utdid2/device/c;->n()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ta/utdid2/device/c;->e:Ljava/lang/String;

    .line 46
    const-string v0, ""

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "currentProcessName"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/ta/utdid2/device/c;->e:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    sget-object v0, Lcom/ta/utdid2/device/c;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    sget-object p0, Lcom/ta/utdid2/device/c;->e:Ljava/lang/String;

    return-object p0

    .line 52
    :cond_1
    invoke-static {}, Lcom/ta/utdid2/device/c;->o()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ta/utdid2/device/c;->e:Ljava/lang/String;

    .line 53
    const-string v0, ""

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "currentProcessName2"

    aput-object v3, v2, v4

    sget-object v3, Lcom/ta/utdid2/device/c;->e:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    sget-object v0, Lcom/ta/utdid2/device/c;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 55
    sget-object p0, Lcom/ta/utdid2/device/c;->e:Ljava/lang/String;

    return-object p0

    .line 59
    :cond_2
    invoke-static {p0}, Lcom/ta/utdid2/device/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/ta/utdid2/device/c;->e:Ljava/lang/String;

    .line 60
    const-string p0, ""

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "currentProcessName3"

    aput-object v1, v0, v4

    sget-object v1, Lcom/ta/utdid2/device/c;->e:Ljava/lang/String;

    aput-object v1, v0, v5

    invoke-static {p0, v0}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    sget-object p0, Lcom/ta/utdid2/device/c;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 5

    .line 24
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/ta/utdid2/device/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-static {p0}, Lcom/ta/utdid2/device/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 26
    const-string v2, ""

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "curProcessName"

    aput-object v4, v3, v0

    const/4 v4, 0x1

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 30
    :cond_1
    :goto_0
    return v4

    .line 34
    :catch_0
    move-exception p0

    .line 35
    return v0
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 100
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 101
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 102
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 103
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_0

    .line 104
    iget-object p0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 106
    :cond_0
    goto :goto_0

    .line 109
    :cond_1
    nop

    .line 110
    return-object v0

    .line 107
    :catch_0
    move-exception p0

    .line 108
    return-object v0
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 115
    invoke-static {p0}, Lcom/ta/utdid2/device/c;->a(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 116
    if-eqz p0, :cond_0

    .line 117
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object p0

    .line 119
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private static n()Ljava/lang/String;
    .locals 3

    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_0

    .line 71
    :try_start_0
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    return-object v1

    .line 76
    :cond_0
    return-object v1
.end method

.method private static o()Ljava/lang/String;
    .locals 5

    .line 83
    nop

    .line 85
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.app.ActivityThread"

    const-class v3, Landroid/app/Application;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v2, v1, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "currentProcessName"

    new-array v4, v1, [Ljava/lang/Class;

    check-cast v4, [Ljava/lang/Class;

    .line 86
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 87
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 88
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 89
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 90
    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    move-object v0, v2

    :cond_0
    goto :goto_0

    .line 92
    :catch_0
    move-exception v2

    .line 93
    const-string v3, ""

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v2, v1}, Lcom/ta/a/c/f;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 95
    :goto_0
    return-object v0
.end method

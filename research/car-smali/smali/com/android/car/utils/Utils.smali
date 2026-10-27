.class public final Lcom/android/car/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static sApplication:Landroid/app/Application;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getApp()Landroid/app/Application;
    .locals 1

    .line 70
    sget-object v0, Lcom/android/car/utils/Utils;->sApplication:Landroid/app/Application;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/car/utils/Utils;->sApplication:Landroid/app/Application;

    return-object v0

    .line 71
    :cond_0
    invoke-static {}, Lcom/android/car/utils/Utils;->getApplicationByReflect()Landroid/app/Application;

    move-result-object v0

    .line 72
    .local v0, "app":Landroid/app/Application;
    invoke-static {v0}, Lcom/android/car/utils/Utils;->init(Landroid/app/Application;)V

    .line 73
    return-object v0
.end method

.method private static getApplicationByReflect()Landroid/app/Application;
    .locals 5

    .line 143
    :try_start_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 144
    .local v0, "activityThread":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "currentActivityThread"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 145
    .local v1, "thread":Ljava/lang/Object;
    const-string v3, "getApplication"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 146
    .local v2, "app":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 149
    move-object v3, v2

    check-cast v3, Landroid/app/Application;

    return-object v3

    .line 147
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "u should init first"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v0    # "activityThread":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "thread":Ljava/lang/Object;
    .end local v2    # "app":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_1

    .line 154
    :catch_1
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 152
    :catch_2
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 150
    :catch_3
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 158
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    nop

    .line 159
    :goto_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "u should init first"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getCurrentProcessName()Ljava/lang/String;
    .locals 2

    .line 77
    invoke-static {}, Lcom/android/car/utils/Utils;->getCurrentProcessNameByFile()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 79
    :cond_0
    invoke-static {}, Lcom/android/car/utils/Utils;->getCurrentProcessNameByAms()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 81
    :cond_1
    invoke-static {}, Lcom/android/car/utils/Utils;->getCurrentProcessNameByReflect()Ljava/lang/String;

    move-result-object v0

    .line 82
    return-object v0
.end method

.method private static getCurrentProcessNameByAms()Ljava/lang/String;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    .line 105
    invoke-static {}, Lcom/android/car/utils/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 106
    .local v0, "am":Landroid/app/ActivityManager;
    if-nez v0, :cond_0

    const-string v1, ""

    return-object v1

    .line 107
    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 108
    .local v1, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 109
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 110
    .local v2, "pid":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 111
    .local v4, "aInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v2, :cond_2

    .line 112
    iget-object v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 113
    iget-object v3, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object v3

    .line 116
    .end local v4    # "aInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    goto :goto_0

    .line 117
    :cond_3
    const-string v3, ""

    return-object v3

    .line 108
    .end local v2    # "pid":I
    :cond_4
    :goto_1
    const-string v2, ""

    return-object v2
.end method

.method private static getCurrentProcessNameByFile()Ljava/lang/String;
    .locals 3

    .line 92
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/cmdline"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 94
    .local v1, "mBufferedReader":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "processName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    return-object v2

    .line 97
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "mBufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "processName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    const-string v1, ""

    return-object v1
.end method

.method private static getCurrentProcessNameByReflect()Ljava/lang/String;
    .locals 10

    .line 121
    const-string v0, ""

    .line 123
    .local v0, "processName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/android/car/utils/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    .line 124
    .local v1, "app":Landroid/app/Application;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mLoadedApk"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 125
    .local v2, "loadedApkField":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 126
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 128
    .local v4, "loadedApk":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mActivityThread"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 129
    .local v5, "activityThreadField":Ljava/lang/reflect/Field;
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 130
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 132
    .local v3, "activityThread":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getProcessName"

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 133
    .local v6, "getProcessName":Ljava/lang/reflect/Method;
    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v7

    .line 136
    .end local v1    # "app":Landroid/app/Application;
    .end local v2    # "loadedApkField":Ljava/lang/reflect/Field;
    .end local v3    # "activityThread":Ljava/lang/Object;
    .end local v4    # "loadedApk":Ljava/lang/Object;
    .end local v5    # "activityThreadField":Ljava/lang/reflect/Field;
    .end local v6    # "getProcessName":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 134
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 2
    .param p0, "app"    # Landroid/app/Application;

    .line 50
    sget-object v0, Lcom/android/car/utils/Utils;->sApplication:Landroid/app/Application;

    if-nez v0, :cond_1

    .line 51
    if-nez p0, :cond_0

    .line 52
    invoke-static {}, Lcom/android/car/utils/Utils;->getApplicationByReflect()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lcom/android/car/utils/Utils;->sApplication:Landroid/app/Application;

    goto :goto_0

    .line 54
    :cond_0
    sput-object p0, Lcom/android/car/utils/Utils;->sApplication:Landroid/app/Application;

    goto :goto_0

    .line 58
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/android/car/utils/Utils;->sApplication:Landroid/app/Application;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 59
    sput-object p0, Lcom/android/car/utils/Utils;->sApplication:Landroid/app/Application;

    .line 62
    :cond_2
    :goto_0
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 36
    if-nez p0, :cond_0

    .line 37
    invoke-static {}, Lcom/android/car/utils/Utils;->getApplicationByReflect()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/Utils;->init(Landroid/app/Application;)V

    .line 38
    return-void

    .line 40
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/android/car/utils/Utils;->init(Landroid/app/Application;)V

    .line 41
    return-void
.end method

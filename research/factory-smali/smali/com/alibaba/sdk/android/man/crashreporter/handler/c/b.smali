.class public Lcom/alibaba/sdk/android/man/crashreporter/handler/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;II)V
    .locals 7

    .line 21
    :try_start_0
    const-string v0, ""

    .line 23
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 24
    const-string v0, "CRASH_HANDLE"

    goto :goto_0

    .line 25
    :cond_0
    if-ne p1, v2, :cond_1

    .line 26
    const-string v0, "NATIVE_CRASH_HANDLE"

    goto :goto_0

    .line 28
    :cond_1
    if-ne p1, v1, :cond_2

    .line 29
    const-string v0, "ANR_HANDLE"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 32
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 35
    :try_start_1
    const-string v3, "com.taobao.statistis.TBS$Ext"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 37
    nop

    .line 39
    move-object p1, v3

    goto :goto_1

    .line 36
    :catch_0
    move-exception v3

    .line 39
    :goto_1
    if-nez p1, :cond_3

    .line 40
    :try_start_2
    const-string p0, "com.taobao.stdatistis.TBS.Ext is null"

    invoke-static {p0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 41
    return-void

    .line 43
    :cond_3
    const-string v3, "commitEvent"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, ""

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v2

    aput-object p0, v4, v1

    const/4 p0, 0x3

    aput-object v0, v4, p0

    new-array p0, v6, [Ljava/lang/Class;

    invoke-static {p1, v3, v4, p0}, Lcom/alibaba/sdk/android/man/crashreporter/e/h;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    const-string p0, "commitEvent call succ"

    invoke-static {p0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 49
    goto :goto_2

    .line 47
    :catch_1
    move-exception p0

    .line 48
    const-string p1, "watchDog error."

    invoke-static {p1, p0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    :goto_2
    return-void
.end method

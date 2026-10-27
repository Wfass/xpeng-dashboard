.class public final Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/ComponentName;

.field private a:Landroid/content/Context;

.field a:Lcom/alibaba/sdk/android/man/crashreporter/a/b;

.field a:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

.field private a:Ljava/lang/Object;

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/sdk/android/man/crashreporter/d/c;Lcom/alibaba/sdk/android/man/crashreporter/a/b;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    .line 42
    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/b;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a:Ljava/lang/Object;

    .line 47
    iput-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a:Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a()V

    .line 49
    iput-object p2, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    .line 50
    iput-object p3, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/b;

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;)Ljava/lang/Object;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->q:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    new-instance v1, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a$a;

    invoke-direct {v1, p0}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a$a;-><init>(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    .line 60
    :cond_0
    const-string v0, "build version %s not suppert registerActivityLifecycleCallbacks, registerActivityLifecycleCallbacks failed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 61
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 60
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->g(Ljava/lang/String;)V

    .line 63
    :cond_1
    :goto_0
    return-void
.end method

.method private a(I)V
    .locals 3

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    invoke-interface {v0}, Lcom/alibaba/sdk/android/man/crashreporter/d/c;->a()Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;

    move-result-object v0

    .line 149
    if-nez v0, :cond_0

    .line 150
    new-instance v0, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;-><init>()V

    .line 153
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 154
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/b;

    invoke-static {}, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->getInstance()Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->getConfigure()Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;

    move-result-object v2

    invoke-interface {p1, v2, v0, v1}, Lcom/alibaba/sdk/android/man/crashreporter/a/b;->a(Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;I)V

    goto :goto_0

    .line 155
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 156
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/b;

    invoke-static {}, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->getInstance()Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->getConfigure()Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;

    move-result-object v2

    invoke-interface {p1, v2, v0, v1}, Lcom/alibaba/sdk/android/man/crashreporter/a/b;->a(Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :cond_2
    :goto_0
    goto :goto_1

    .line 162
    :catch_0
    move-exception p1

    .line 163
    const-string v0, "write app status err"

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a(I)V

    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 4

    .line 168
    const-string v0, ""

    .line 170
    iget-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 174
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a:Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_1

    .line 176
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a:Landroid/content/ComponentName;

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 178
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 179
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "bundleLocation"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 183
    move-object v0, v1

    :cond_0
    goto :goto_0

    .line 181
    :catch_0
    move-exception v1

    .line 182
    :try_start_2
    const-string v2, "get bundle failed."

    invoke-static {v2, v1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 187
    :cond_1
    :goto_0
    goto :goto_1

    .line 185
    :catch_1
    move-exception v1

    .line 186
    const-string v2, "system error, getBundle failed"

    invoke-static {v2, v1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const-string v0, ""

    :goto_2
    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/alibaba/sdk/android/man/crashreporter/global/a;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 204
    sget-object v0, Lcom/alibaba/sdk/android/man/crashreporter/global/a;->w:Lcom/alibaba/sdk/android/man/crashreporter/global/a;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/alibaba/sdk/android/man/crashreporter/global/a;->x:Lcom/alibaba/sdk/android/man/crashreporter/global/a;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/alibaba/sdk/android/man/crashreporter/global/a;->y:Lcom/alibaba/sdk/android/man/crashreporter/global/a;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/e/i;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->q:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

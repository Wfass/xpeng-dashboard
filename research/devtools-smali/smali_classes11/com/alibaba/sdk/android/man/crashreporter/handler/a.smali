.class public Lcom/alibaba/sdk/android/man/crashreporter/handler/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/man/crashreporter/handler/b;


# static fields
.field private static w:I


# instance fields
.field private a:Landroid/content/Context;

.field private a:Lcom/alibaba/sdk/android/man/crashreporter/a/b;

.field private a:Lcom/alibaba/sdk/android/man/crashreporter/c/b;

.field private a:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

.field private a:Lcom/alibaba/sdk/android/man/crashreporter/handler/a/a;

.field private a:Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a;

.field private b:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

.field private crashing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private nativeCrashHandler:Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const v0, 0xee4d

    sput v0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->w:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->a:Landroid/content/Context;

    .line 41
    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/b;

    .line 42
    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->b:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    .line 43
    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    .line 44
    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/c/b;

    .line 46
    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/handler/a/a;

    .line 47
    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->nativeCrashHandler:Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;

    .line 48
    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->crashing:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private a(Ljava/lang/Throwable;Ljava/lang/Thread;)Ljava/util/Map;
    .locals 7

    .line 282
    invoke-static {}, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->getInstance()Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->getMyListenerList()Ljava/util/List;

    move-result-object v0

    .line 283
    invoke-static {}, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->getInstance()Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->getStrExtraInfo()Ljava/lang/String;

    move-result-object v1

    .line 284
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 288
    const/4 v3, 0x0

    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 290
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/sdk/android/man/crashreporter/IUTCrashCaughtListener;

    .line 292
    const-string v5, "ext listener is:"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-interface {v4, p2, p1}, Lcom/alibaba/sdk/android/man/crashreporter/IUTCrashCaughtListener;->onCrashCaught(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/util/Map;

    move-result-object v4

    .line 295
    if-eqz v4, :cond_0

    .line 296
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 297
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    goto :goto_1

    .line 288
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 302
    :cond_1
    if-eqz v1, :cond_2

    .line 303
    const-string p1, "exaInfo"

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_3

    .line 307
    return-object v2

    .line 312
    :cond_3
    goto :goto_2

    .line 310
    :catch_0
    move-exception p1

    .line 311
    const-string p2, "Listener\'s extraMsg store error."

    invoke-static {p2, p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 314
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    .line 256
    invoke-static {}, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->getInstance()Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/man/crashreporter/MotuCrashReporter;->getMySenderListenerList()Ljava/util/List;

    move-result-object v0

    .line 259
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    const-string v2, "start call sender listener!"

    invoke-static {v2}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 261
    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 262
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/sdk/android/man/crashreporter/a;

    .line 263
    invoke-interface {v3, p1}, Lcom/alibaba/sdk/android/man/crashreporter/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 266
    :cond_0
    const/4 p1, 0x1

    return p1

    .line 268
    :catch_0
    move-exception p1

    .line 269
    const-string v0, "call sender listener err"

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 270
    :cond_1
    nop

    .line 272
    :goto_1
    return v1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 245
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/e/i;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    const-string v0, "\n"

    const-string v1, "++"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    move-object p1, v0

    :cond_0
    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    const-string v1, "getMessageToUTArgs err."

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    :goto_0
    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->b:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 198
    const-string v0, "native crash handler start."

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->a(Ljava/lang/Throwable;Ljava/lang/Thread;)Ljava/util/Map;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/b;

    invoke-interface {v1, p2, p1, p3, v0}, Lcom/alibaba/sdk/android/man/crashreporter/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;

    .line 203
    invoke-static {}, Lcom/alibaba/sdk/android/man/util/UTWrapper;->commitCrashEvent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :cond_0
    goto :goto_0

    .line 205
    :catch_0
    move-exception p1

    .line 206
    const-string p2, "handle native stackTrace failure"

    invoke-static {p2, p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 208
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->b:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 165
    const-string v0, "TBCRASH_REPORTER_SDK"

    const/4 v1, 0x0

    sget v2, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->w:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/sdk/android/man/crashreporter/handler/c/b;->a(Ljava/lang/String;II)V

    .line 166
    const-string v0, "crash handler start."

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->a(Ljava/lang/Throwable;Ljava/lang/Thread;)Ljava/util/Map;

    move-result-object p1

    .line 169
    invoke-direct {p0, p4}, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 171
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/b;

    invoke-interface {v0, p3, p4, p2, p1}, Lcom/alibaba/sdk/android/man/crashreporter/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;

    .line 179
    invoke-static {}, Lcom/alibaba/sdk/android/man/util/UTWrapper;->commitCrashEvent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_0
    goto :goto_0

    .line 181
    :catch_0
    move-exception p1

    .line 182
    const-string p2, "handleJavaCrash err!"

    invoke-static {p2, p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;Lcom/alibaba/sdk/android/man/crashreporter/c;)Z
    .locals 9

    .line 59
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 60
    :try_start_0
    iput-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->a:Landroid/content/Context;

    .line 61
    new-instance v1, Lcom/alibaba/sdk/android/man/crashreporter/a/a;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/man/crashreporter/a/a;-><init>()V

    iput-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/b;

    .line 62
    new-instance v1, Lcom/alibaba/sdk/android/man/crashreporter/d/b;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/man/crashreporter/d/b;-><init>()V

    iput-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->b:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    .line 63
    new-instance v1, Lcom/alibaba/sdk/android/man/crashreporter/d/a;

    invoke-direct {v1, p1, p3}, Lcom/alibaba/sdk/android/man/crashreporter/d/a;-><init>(Landroid/content/Context;Lcom/alibaba/sdk/android/man/crashreporter/c;)V

    iput-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    .line 64
    new-instance v1, Lcom/alibaba/sdk/android/man/crashreporter/c/a;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/man/crashreporter/c/a;-><init>()V

    iput-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/c/b;

    .line 65
    iget-object v2, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/b;

    iget-object v6, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->b:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    iget-object v7, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/sdk/android/man/crashreporter/a/b;->a(Landroid/content/Context;Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;Lcom/alibaba/sdk/android/man/crashreporter/c;Lcom/alibaba/sdk/android/man/crashreporter/d/c;Lcom/alibaba/sdk/android/man/crashreporter/d/c;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    return v0

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->b:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    invoke-interface {v1, p1}, Lcom/alibaba/sdk/android/man/crashreporter/d/c;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    return v0

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/c/b;

    iget-object v2, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/b;

    iget-object v3, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->b:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    iget-object v4, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    invoke-interface {v1, p1, v2, v3, v4}, Lcom/alibaba/sdk/android/man/crashreporter/c/b;->a(Landroid/content/Context;Lcom/alibaba/sdk/android/man/crashreporter/a/b;Lcom/alibaba/sdk/android/man/crashreporter/d/c;Lcom/alibaba/sdk/android/man/crashreporter/d/c;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 73
    return v0

    .line 77
    :cond_2
    iget-boolean v1, p2, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableCatchUncaughtException:Z

    if-eqz v1, :cond_3

    .line 78
    new-instance v1, Lcom/alibaba/sdk/android/man/crashreporter/handler/a/a;

    iget-object v2, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->crashing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2, p0}, Lcom/alibaba/sdk/android/man/crashreporter/handler/a/a;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/alibaba/sdk/android/man/crashreporter/handler/a;)V

    iput-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/handler/a/a;

    .line 81
    :cond_3
    nop

    .line 82
    iget-boolean v1, p2, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableCatchNativeException:Z

    if-eqz v1, :cond_4

    .line 83
    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;->init(Landroid/content/Context;)Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->nativeCrashHandler:Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;

    .line 84
    iget-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->nativeCrashHandler:Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;

    iget-object v2, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->crashing:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-boolean v3, p2, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableDebug:Z

    invoke-virtual {v1, v2, p0, v3, p3}, Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;->regist(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/alibaba/sdk/android/man/crashreporter/handler/a;ZLcom/alibaba/sdk/android/man/crashreporter/c;)Z

    move-result v1

    .line 86
    if-eqz v1, :cond_4

    .line 87
    const-string v1, "native crash handler regist succ!"

    invoke-static {v1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 90
    :cond_4
    iget-object v1, p3, Lcom/alibaba/sdk/android/man/crashreporter/c;->appVersion:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    .line 92
    iget-object v1, p3, Lcom/alibaba/sdk/android/man/crashreporter/c;->appVersion:Ljava/lang/String;

    const-string v3, "\\."

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 93
    if-eqz v1, :cond_6

    array-length v1, v1

    const/4 v3, 0x4

    if-lt v1, v3, :cond_6

    .line 94
    iget-boolean v1, p2, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableCatchANRException:Z

    if-eqz v1, :cond_5

    .line 95
    new-instance v1, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a;

    iget-object v6, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->crashing:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget v7, p2, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enabeANRTimeoutInterval:I

    iget-boolean v8, p2, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableANRMainThreadOnly:Z

    move-object v3, v1

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a;-><init>(Landroid/content/Context;Lcom/alibaba/sdk/android/man/crashreporter/handler/a;Ljava/util/concurrent/atomic/AtomicBoolean;IZ)V

    iput-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a;

    .line 103
    :cond_5
    iget-boolean p1, p2, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableDebug:Z

    if-ne p1, v2, :cond_6

    .line 104
    const-string p1, "isDebug"

    iget-object p2, p3, Lcom/alibaba/sdk/android/man/crashreporter/c;->appVersion:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/alibaba/sdk/android/man/crashreporter/handler/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_6
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/b;

    invoke-interface {p1, v0, v0, v0, v0}, Lcom/alibaba/sdk/android/man/crashreporter/a/b;->a(IIII)Ljava/util/Map;

    move-result-object p1

    .line 111
    iget-object p2, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/c/b;

    invoke-interface {p2, p1}, Lcom/alibaba/sdk/android/man/crashreporter/c/b;->b(Ljava/util/Map;)V

    .line 113
    return v2

    .line 118
    :catch_0
    move-exception p1

    goto :goto_0

    .line 115
    :cond_7
    const-string p1, "init handler failure!"

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    return v0

    .line 118
    :goto_0
    nop

    .line 119
    const-string p2, "init handler err"

    invoke-static {p2, p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->b:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 219
    const-string v0, "TBCRASH_REPORTER_SDK"

    sget v1, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->w:I

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Lcom/alibaba/sdk/android/man/crashreporter/handler/c/b;->a(Ljava/lang/String;II)V

    .line 220
    const-string v0, "ANR handler start."

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/b;

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/man/crashreporter/a/b;->a(Ljava/lang/String;)Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;

    move-result-object p1

    .line 223
    if-eqz p1, :cond_0

    .line 225
    iget-object v0, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->content:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1, v1, v1}, Lcom/alibaba/sdk/android/man/crashreporter/a/b;->a(IIII)Ljava/util/Map;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/c/b;

    invoke-interface {v1, p1, v0, v2}, Lcom/alibaba/sdk/android/man/crashreporter/c/b;->a(Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;Ljava/util/Map;I)V

    .line 231
    :cond_0
    invoke-static {}, Lcom/alibaba/sdk/android/man/util/UTWrapper;->commitCrashEvent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :cond_1
    goto :goto_0

    .line 233
    :catch_0
    move-exception p1

    .line 234
    const-string v0, "handle stuck failure"

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    :goto_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/handler/a/a;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/handler/a/a;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/man/crashreporter/handler/a/a;->b()V

    .line 131
    const-string v0, "Java crash handler is removed success."

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_0
    const-string v0, "Java crash handler is null."

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->nativeCrashHandler:Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->nativeCrashHandler:Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/man/crashreporter/handler/nativeCrashHandler/NativeCrashHandler;->removeNativeCrashHandler()Z

    move-result v0

    if-nez v0, :cond_2

    .line 139
    const/4 v0, 0x0

    return v0

    .line 142
    :cond_1
    const-string v0, "Native crash handler is null."

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a;

    if-eqz v0, :cond_3

    .line 147
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/a;->c()V

    goto :goto_1

    .line 149
    :cond_3
    const-string v0, "Stuck crash handler is null."

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 151
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

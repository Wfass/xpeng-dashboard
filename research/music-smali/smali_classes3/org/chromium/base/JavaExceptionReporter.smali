.class public Lorg/chromium/base/JavaExceptionReporter;
.super Ljava/lang/Object;
.source "JavaExceptionReporter.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lorg/chromium/base/JavaExceptionReporter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/chromium/base/JavaExceptionReporter;->a:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Z)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/chromium/base/JavaExceptionReporter;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 30
    iput-boolean p2, p0, Lorg/chromium/base/JavaExceptionReporter;->c:Z

    return-void
.end method

.method private static installHandler(Z)V
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 59
    new-instance v0, Lorg/chromium/base/JavaExceptionReporter;

    .line 60
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/chromium/base/JavaExceptionReporter;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Z)V

    .line 59
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method private static native nativeReportJavaException(ZLjava/lang/Throwable;)V
.end method

.method private static native nativeReportJavaStackTrace(Ljava/lang/String;)V
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 35
    iget-boolean v0, p0, Lorg/chromium/base/JavaExceptionReporter;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lorg/chromium/base/JavaExceptionReporter;->d:Z

    .line 37
    iget-boolean v0, p0, Lorg/chromium/base/JavaExceptionReporter;->c:Z

    invoke-static {v0, p2}, Lorg/chromium/base/JavaExceptionReporter;->nativeReportJavaException(ZLjava/lang/Throwable;)V

    .line 39
    :cond_0
    iget-object v0, p0, Lorg/chromium/base/JavaExceptionReporter;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    .line 40
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

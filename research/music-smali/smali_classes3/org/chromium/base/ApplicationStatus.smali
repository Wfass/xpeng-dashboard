.class public Lorg/chromium/base/ApplicationStatus;
.super Ljava/lang/Object;
.source "ApplicationStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/ApplicationStatus$a;
    }
.end annotation


# static fields
.field static final synthetic a:Z

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static c:I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SupportAnnotationUsage"
        }
    .end annotation
.end field

.field private static d:Landroid/app/Activity;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static e:Lorg/chromium/base/ApplicationStatus$a;

.field private static final f:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Lorg/chromium/base/ApplicationStatus$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lorg/chromium/base/ApplicationStatus;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/chromium/base/ApplicationStatus;->a:Z

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 78
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/ApplicationStatus;->b:Ljava/util/Map;

    const/4 v0, 0x0

    .line 85
    sput v0, Lorg/chromium/base/ApplicationStatus;->c:I

    .line 97
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    sput-object v0, Lorg/chromium/base/ApplicationStatus;->f:Lorg/chromium/base/ObserverList;

    .line 104
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    sput-object v0, Lorg/chromium/base/ApplicationStatus;->g:Lorg/chromium/base/ObserverList;

    .line 111
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    sput-object v0, Lorg/chromium/base/ApplicationStatus;->h:Lorg/chromium/base/ObserverList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/app/Activity;
    .locals 1

    .line 382
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->d:Landroid/app/Activity;

    return-object v0
.end method

.method public static a(Lorg/chromium/base/ApplicationStatus$a;)V
    .locals 1

    .line 536
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->g:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p0}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic b()Lorg/chromium/base/ApplicationStatus$a;
    .locals 1

    .line 37
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->e:Lorg/chromium/base/ApplicationStatus$a;

    return-object v0
.end method

.method public static b(Lorg/chromium/base/ApplicationStatus$a;)V
    .locals 1

    .line 545
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->g:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p0}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic c(Lorg/chromium/base/ApplicationStatus$a;)Lorg/chromium/base/ApplicationStatus$a;
    .locals 0

    .line 37
    sput-object p0, Lorg/chromium/base/ApplicationStatus;->e:Lorg/chromium/base/ApplicationStatus$a;

    return-object p0
.end method

.method public static getStateForApplication()I
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 455
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->b:Ljava/util/Map;

    monitor-enter v0

    .line 456
    :try_start_0
    sget v1, Lorg/chromium/base/ApplicationStatus;->c:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 457
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static native nativeOnApplicationStateChange(I)V
.end method

.method private static registerThreadSafeNativeApplicationStateListener()V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 574
    new-instance v0, Lorg/chromium/base/ApplicationStatus$1;

    invoke-direct {v0}, Lorg/chromium/base/ApplicationStatus$1;-><init>()V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->a(Ljava/lang/Runnable;)V

    return-void
.end method

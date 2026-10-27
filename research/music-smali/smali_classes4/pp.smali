.class public final Lpp;
.super Ljava/lang/Object;
.source "ARouter.java"


# static fields
.field public static a:Lcom/alibaba/android/arouter/facade/template/ILogger; = null

.field private static volatile b:Lpp; = null

.field private static volatile c:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lpp;
    .locals 2

    .line 56
    sget-boolean v0, Lpp;->c:Z

    if-eqz v0, :cond_2

    .line 59
    sget-object v0, Lpp;->b:Lpp;

    if-nez v0, :cond_1

    .line 60
    const-class v0, Lpp;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-object v1, Lpp;->b:Lpp;

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Lpp;

    invoke-direct {v1}, Lpp;-><init>()V

    sput-object v1, Lpp;->b:Lpp;

    .line 64
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 66
    :cond_1
    :goto_0
    sget-object v0, Lpp;->b:Lpp;

    return-object v0

    .line 57
    :cond_2
    new-instance v0, Lpn;

    const-string v1, "ARouter::Init::Invoke init(context) first!"

    invoke-direct {v0, v1}, Lpn;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/app/Application;)V
    .locals 3

    .line 38
    sget-boolean v0, Lpp;->c:Z

    if-nez v0, :cond_1

    .line 39
    sget-object v0, Lpq;->a:Lcom/alibaba/android/arouter/facade/template/ILogger;

    sput-object v0, Lpp;->a:Lcom/alibaba/android/arouter/facade/template/ILogger;

    .line 40
    sget-object v0, Lpq;->a:Lcom/alibaba/android/arouter/facade/template/ILogger;

    const-string v1, "ARouter::"

    const-string v2, "ARouter init start."

    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/arouter/facade/template/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {p0}, Lpq;->a(Landroid/app/Application;)Z

    move-result p0

    sput-boolean p0, Lpp;->c:Z

    .line 43
    sget-boolean p0, Lpp;->c:Z

    if-eqz p0, :cond_0

    .line 44
    invoke-static {}, Lpq;->c()V

    .line 47
    :cond_0
    sget-object p0, Lpq;->a:Lcom/alibaba/android/arouter/facade/template/ILogger;

    const-string v0, "ARouter init over."

    invoke-interface {p0, v1, v0}, Lcom/alibaba/android/arouter/facade/template/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static b()Z
    .locals 1

    .line 75
    invoke-static {}, Lpq;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;
    .locals 1

    .line 141
    invoke-static {}, Lpq;->a()Lpq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lpq;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Lcom/alibaba/android/arouter/facade/Postcard;ILcom/alibaba/android/arouter/facade/callback/NavigationCallback;)Ljava/lang/Object;
    .locals 1

    .line 184
    invoke-static {}, Lpq;->a()Lpq;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lpq;->a(Landroid/content/Context;Lcom/alibaba/android/arouter/facade/Postcard;ILcom/alibaba/android/arouter/facade/callback/NavigationCallback;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 172
    invoke-static {}, Lpq;->a()Lpq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lpq;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 132
    invoke-static {p1}, Lpq;->a(Ljava/lang/Object;)V

    return-void
.end method

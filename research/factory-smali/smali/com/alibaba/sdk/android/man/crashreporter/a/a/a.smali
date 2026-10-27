.class public final Lcom/alibaba/sdk/android/man/crashreporter/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/man/crashreporter/a/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/man/crashreporter/a/a/a$b;,
        Lcom/alibaba/sdk/android/man/crashreporter/a/a/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a$a;

.field private a:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a$b;

.field private a:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a$b;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a$b;-><init>(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a$b;

    .line 29
    new-instance v0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a$a;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a$a;-><init>(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a$a;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;

    .line 123
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 82
    iget-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a$a;

    invoke-virtual {v1, v0}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a$a;->a(Ljava/util/Map;)V

    .line 84
    return-object v0
.end method

.method public a(Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;Landroid/content/Context;Lcom/alibaba/sdk/android/man/crashreporter/d/c;Lcom/alibaba/sdk/android/man/crashreporter/a/b;)V
    .locals 2

    .line 36
    if-eqz p2, :cond_4

    .line 37
    :try_start_0
    new-instance v0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/c;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/c;-><init>()V

    .line 38
    iget-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a$b;

    invoke-virtual {v1, v0}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a$b;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/b;)V

    .line 40
    new-instance v0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/e;

    invoke-direct {v0, p2}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/e;-><init>(Landroid/content/Context;)V

    .line 41
    iget-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a$b;

    invoke-virtual {v1, v0}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a$b;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/b;)V

    .line 43
    iget-boolean v0, p1, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableActivityMonitor:Z

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;

    invoke-direct {v0, p2, p3, p4}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;-><init>(Landroid/content/Context;Lcom/alibaba/sdk/android/man/crashreporter/d/c;Lcom/alibaba/sdk/android/man/crashreporter/a/b;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;

    .line 45
    iget-object p2, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a$b;

    iget-object p3, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;

    invoke-virtual {p2, p3}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a$b;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/b;)V

    .line 48
    :cond_0
    iget-boolean p2, p1, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableDumpSysLog:Z

    if-eqz p2, :cond_1

    .line 49
    new-instance p2, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/d;

    sget-object p3, Lcom/alibaba/sdk/android/man/crashreporter/global/a;->d:Lcom/alibaba/sdk/android/man/crashreporter/global/a;

    invoke-direct {p2, p3}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/d;-><init>(Lcom/alibaba/sdk/android/man/crashreporter/global/a;)V

    .line 50
    iget-object p3, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a$b;

    invoke-virtual {p3, p2}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a$b;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/b;)V

    .line 53
    :cond_1
    iget-boolean p2, p1, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableDumpEventsLog:Z

    if-eqz p2, :cond_2

    .line 54
    new-instance p2, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/d;

    sget-object p3, Lcom/alibaba/sdk/android/man/crashreporter/global/a;->e:Lcom/alibaba/sdk/android/man/crashreporter/global/a;

    invoke-direct {p2, p3}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/d;-><init>(Lcom/alibaba/sdk/android/man/crashreporter/global/a;)V

    .line 55
    iget-object p3, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a$b;

    invoke-virtual {p3, p2}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a$b;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/b;)V

    .line 58
    :cond_2
    iget-boolean p1, p1, Lcom/alibaba/sdk/android/man/crashreporter/ReporterConfigure;->enableDumpRadioLog:Z

    if-eqz p1, :cond_3

    .line 59
    new-instance p1, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/d;

    sget-object p2, Lcom/alibaba/sdk/android/man/crashreporter/global/a;->f:Lcom/alibaba/sdk/android/man/crashreporter/global/a;

    invoke-direct {p1, p2}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/d;-><init>(Lcom/alibaba/sdk/android/man/crashreporter/global/a;)V

    .line 60
    iget-object p2, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a$b;

    invoke-virtual {p2, p1}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a$b;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/b;)V

    .line 62
    :cond_3
    goto :goto_0

    .line 65
    :catch_0
    move-exception p1

    goto :goto_1

    .line 63
    :cond_4
    const-string p1, "init collector failure!"

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    goto :goto_2

    .line 65
    :goto_1
    nop

    .line 66
    const-string p2, "init collector err!"

    invoke-static {p2, p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    :goto_2
    return-void
.end method

.method public a(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a$a;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a$a;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a;)V

    .line 89
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 96
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/alibaba/sdk/android/man/crashreporter/global/a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/alibaba/sdk/android/man/crashreporter/global/a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 74
    iget-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a$b;

    invoke-virtual {v1, v0}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a$b;->a(Ljava/util/Map;)V

    .line 76
    return-object v0
.end method

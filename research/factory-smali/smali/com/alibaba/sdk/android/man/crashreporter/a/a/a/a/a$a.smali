.class Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a$a;->b:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .line 71
    iget-object p2, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a$a;->b:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 72
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a$a;->b:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;

    const-string p2, "onActivityCreated"

    invoke-static {p1, p2}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a$a;->b:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;

    const-string p2, "%s:%s"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onActivityCreated"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    const-string p1, "onActivityCreated"

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 5

    .line 79
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a$a;->b:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 80
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a$a;->b:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;

    const-string v0, "onActivityDestroyed"

    invoke-static {p1, v0}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a$a;->b:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;

    const-string v0, "%s:%s"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onActivityDestroyed"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    const-string p1, "onActivityDestroyed"

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a$a;->b:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a$a;->b:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;

    iget-object v0, v0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a$a;->b:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;I)V

    .line 87
    :cond_0
    monitor-exit p1

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 4

    .line 130
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a$a;->b:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 131
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a$a;->b:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;

    const-string v0, "%s:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onActivityPaused"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a$a;->b:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 106
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a$a;->b:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;

    const-string v0, "onActivityResumed"

    invoke-static {p1, v0}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a$a;->b:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;

    const-string v0, "%s:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onActivityResumed"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    const-string p1, "onActivityResumed"

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a$a;->b:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a$a;->b:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;

    iget-object v0, v0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a$a;->b:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;

    invoke-static {v0, v3}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;I)V

    .line 113
    :cond_0
    monitor-exit p1

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .line 136
    iget-object p2, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a$a;->b:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 137
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a$a;->b:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;

    const-string p2, "%s:%s"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onActivitySaveInstanceState"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    const-string p1, "onActivitySaveInstanceState"

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a$a;->b:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 119
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a$a;->b:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;

    const-string v0, "%s:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onActivityStarted"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    const-string p1, "onActivityStarted"

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 121
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a$a;->b:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a$a;->b:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;

    iget-object v0, v0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a$a;->b:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;

    invoke-static {v0, v3}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;I)V

    .line 125
    :cond_0
    monitor-exit p1

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 5

    .line 92
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a$a;->b:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 93
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a$a;->b:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;

    const-string v0, "onActivityStopped"

    invoke-static {p1, v0}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a$a;->b:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;

    const-string v0, "%s:%s"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onActivityStopped"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    const-string p1, "onActivityStopped"

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 96
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a$a;->b:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a$a;->b:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;

    iget-object v0, v0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a:Lcom/alibaba/sdk/android/man/crashreporter/d/c;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a$a;->b:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/a;I)V

    .line 100
    :cond_0
    monitor-exit p1

    .line 101
    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

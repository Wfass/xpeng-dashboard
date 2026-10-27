.class Lcom/alibaba/mtl/appmonitor/a$a;
.super Ljava/lang/Object;
.source "BackgroundTrigger.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/appmonitor/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/mtl/appmonitor/a;

.field private a:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/alibaba/mtl/appmonitor/a;Ljava/lang/Runnable;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/a$a;->a:Lcom/alibaba/mtl/appmonitor/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p2, p0, Lcom/alibaba/mtl/appmonitor/a$a;->a:Ljava/lang/Runnable;

    .line 83
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 87
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 91
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 95
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 99
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 103
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 107
    invoke-static {}, Lcom/alibaba/mtl/log/d/s;->a()Lcom/alibaba/mtl/log/d/s;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/log/d/s;->f(I)V

    .line 108
    invoke-static {}, Lcom/alibaba/mtl/log/d/s;->a()Lcom/alibaba/mtl/log/d/s;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/a$a;->a:Ljava/lang/Runnable;

    const-wide/32 v3, 0xea60

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/mtl/log/d/s;->a(ILjava/lang/Runnable;J)V

    .line 109
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 113
    invoke-static {}, Lcom/alibaba/mtl/log/d/s;->a()Lcom/alibaba/mtl/log/d/s;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/log/d/s;->f(I)V

    .line 114
    invoke-static {}, Lcom/alibaba/mtl/log/d/s;->a()Lcom/alibaba/mtl/log/d/s;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/a$a;->a:Ljava/lang/Runnable;

    const-wide/32 v3, 0xea60

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/mtl/log/d/s;->a(ILjava/lang/Runnable;J)V

    .line 115
    return-void
.end method

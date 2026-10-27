.class Lcom/alibaba/mtl/appmonitor/f$a;
.super Ljava/lang/Object;
.source "BackgroundTrigger.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/appmonitor/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Runnable;

.field final synthetic aA:Lcom/alibaba/mtl/appmonitor/f;


# direct methods
.method constructor <init>(Lcom/alibaba/mtl/appmonitor/f;Ljava/lang/Runnable;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/f$a;->aA:Lcom/alibaba/mtl/appmonitor/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p2, p0, Lcom/alibaba/mtl/appmonitor/f$a;->a:Ljava/lang/Runnable;

    .line 83
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 87
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 91
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 95
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .line 99
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 103
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 4

    .line 107
    invoke-static {}, Lcom/alibaba/mtl/log/d/s;->aW()Lcom/alibaba/mtl/log/d/s;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/alibaba/mtl/log/d/s;->E(I)V

    .line 108
    invoke-static {}, Lcom/alibaba/mtl/log/d/s;->aW()Lcom/alibaba/mtl/log/d/s;

    move-result-object p1

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/f$a;->a:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/alibaba/mtl/log/d/s;->a(ILjava/lang/Runnable;J)V

    .line 109
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 4

    .line 113
    invoke-static {}, Lcom/alibaba/mtl/log/d/s;->aW()Lcom/alibaba/mtl/log/d/s;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/alibaba/mtl/log/d/s;->E(I)V

    .line 114
    invoke-static {}, Lcom/alibaba/mtl/log/d/s;->aW()Lcom/alibaba/mtl/log/d/s;

    move-result-object p1

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/f$a;->a:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/alibaba/mtl/log/d/s;->a(ILjava/lang/Runnable;J)V

    .line 115
    return-void
.end method

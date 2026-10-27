.class public Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper;
.super Ljava/lang/Object;
.source "AppLifeCycleHelper.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;,
        Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$OnAppTopListener;,
        Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$OnAppCycleListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppLifeCycleHelper"


# instance fields
.field private mAppCycleListener:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$OnAppCycleListener;

.field private mAppTopListener:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$OnAppTopListener;

.field private mStatus:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method


# virtual methods
.method public isAppCallbackTop()Z
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper;->mStatus:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    sget-object v1, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;->TOP:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p1, "AppLifeCycleHelper"

    const-string p2, "onActivityCreated"

    .line 39
    invoke-static {p1, p2}, Lcom/xiaopeng/lib/framework/account/utils/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 85
    sget-object p1, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;->DESTROYED:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper;->mStatus:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    .line 86
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper;->onAppCycleChanged()V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    const-string p1, "AppLifeCycleHelper"

    const-string v0, "onActivityPaused"

    .line 66
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/framework/account/utils/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sget-object p1, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;->PAUSED:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper;->mStatus:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    .line 68
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper;->onAppCycleChanged()V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    const-string p1, "AppLifeCycleHelper"

    const-string v0, "onActivityResumed"

    .line 51
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/framework/account/utils/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper;->mStatus:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    sget-object v1, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;->PAUSED:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper;->mStatus:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    sget-object v1, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;->STOPPED:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    sget-object p1, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;->RESUMED:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper;->mStatus:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "onAppTop."

    .line 53
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/framework/account/utils/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object p1, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;->TOP:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper;->mStatus:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    .line 55
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper;->mAppTopListener:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$OnAppTopListener;

    if-eqz p1, :cond_2

    .line 56
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$OnAppTopListener;->onAppTop()V

    .line 61
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper;->onAppCycleChanged()V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    const-string p1, "AppLifeCycleHelper"

    const-string v0, "onActivityStarted"

    .line 45
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/framework/account/utils/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    const-string p1, "AppLifeCycleHelper"

    const-string v0, "onActivityStopped"

    .line 73
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/framework/account/utils/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object p1, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;->STOPPED:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper;->mStatus:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    .line 75
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper;->onAppCycleChanged()V

    return-void
.end method

.method public onAppCycleChanged()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper;->mAppCycleListener:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$OnAppCycleListener;

    if-eqz v0, :cond_0

    .line 100
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper;->mStatus:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$OnAppCycleListener;->onAppCycleChanged(Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;)V

    :cond_0
    return-void
.end method

.method public setOnAppCycleListener(Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$OnAppCycleListener;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper;->mAppCycleListener:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$OnAppCycleListener;

    return-void
.end method

.method public setOnAppTopListener(Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$OnAppTopListener;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper;->mAppTopListener:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$OnAppTopListener;

    return-void
.end method

.method public unregisterCallbacks(Landroid/app/Application;)V
    .locals 0

    .line 33
    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

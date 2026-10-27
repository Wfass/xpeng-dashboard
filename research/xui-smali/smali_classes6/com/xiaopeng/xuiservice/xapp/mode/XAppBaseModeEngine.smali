.class public abstract Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;
.super Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;
.source "XAppBaseModeEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine$WorkHandler;
    }
.end annotation


# static fields
.field public static final DBG:Z = false

.field public static final MODE_GAME:I = 0x1

.field public static final MODE_NAVI_VIEW:I = 0x2

.field private static final TAG:Ljava/lang/String; = "XAppBaseModeEngine"


# instance fields
.field protected mEnable:Z

.field protected mMode:I

.field protected mPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

.field protected mPkgName:Ljava/lang/String;

.field protected mSubMode:I

.field private mWorkHandler:Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine$WorkHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 58
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine$WorkHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine$WorkHandler;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;->mWorkHandler:Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine$WorkHandler;

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;->mWorkHandler:Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine$WorkHandler;

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine$WorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 72
    return-void
.end method


# virtual methods
.method public getWorkHandler()Landroid/os/Handler;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;->mWorkHandler:Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine$WorkHandler;

    return-object v0
.end method

.method protected declared-synchronized handleAppInfoChange()V
    .locals 0

    monitor-enter p0

    .line 125
    monitor-exit p0

    return-void
.end method

.method protected handleEnableChange()V
    .locals 0

    .line 121
    return-void
.end method

.method protected declared-synchronized handleSharedPackageInfoChange([Lcom/xiaopeng/app/xpPackageInfo;)V
    .locals 0
    .param p1, "packageInfos"    # [Lcom/xiaopeng/app/xpPackageInfo;

    monitor-enter p0

    .line 129
    monitor-exit p0

    return-void
.end method

.method protected isCurrentModeEnable()Z
    .locals 1

    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method protected isModeEnable(I)Z
    .locals 1
    .param p1, "mode"    # I

    .line 109
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;->mMode:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;->mPkgName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized onAppInfoChange(Ljava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/xiaopeng/app/xpPackageInfo;

    monitor-enter p0

    .line 86
    :try_start_0
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;->mPkgName:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;->mPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;->mWorkHandler:Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine$WorkHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine$WorkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 89
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 90
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 85
    .end local v0    # "message":Landroid/os/Message;
    .end local p1    # "pkgName":Ljava/lang/String;
    .end local p2    # "info":Lcom/xiaopeng/app/xpPackageInfo;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;
    throw p1
.end method

.method public declared-synchronized onSharedPackageInfoChanged([Lcom/xiaopeng/app/xpPackageInfo;)V
    .locals 2
    .param p1, "packageInfos"    # [Lcom/xiaopeng/app/xpPackageInfo;

    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;->mWorkHandler:Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine$WorkHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine$WorkHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 95
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 96
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    .line 93
    .end local v0    # "message":Landroid/os/Message;
    .end local p1    # "packageInfos":[Lcom/xiaopeng/app/xpPackageInfo;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;
    throw p1
.end method

.method protected setEnable(Ljava/lang/String;II)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "subMode"    # I

    .line 79
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;->mPkgName:Ljava/lang/String;

    .line 80
    iput p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;->mMode:I

    .line 81
    iput p3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;->mSubMode:I

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;->mWorkHandler:Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine$WorkHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine$WorkHandler;->sendEmptyMessage(I)Z

    .line 83
    return-void
.end method

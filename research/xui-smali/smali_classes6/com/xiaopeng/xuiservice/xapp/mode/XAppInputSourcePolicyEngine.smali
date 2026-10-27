.class public Lcom/xiaopeng/xuiservice/xapp/mode/XAppInputSourcePolicyEngine;
.super Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;
.source "XAppInputSourcePolicyEngine.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XAppInputSourcePolicyEngine"


# instance fields
.field private mNeedJoystickList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppInputSourcePolicyEngine;->mNeedJoystickList:Ljava/util/List;

    .line 20
    return-void
.end method


# virtual methods
.method protected declared-synchronized handleSharedPackageInfoChange([Lcom/xiaopeng/app/xpPackageInfo;)V
    .locals 4
    .param p1, "packageInfos"    # [Lcom/xiaopeng/app/xpPackageInfo;

    monitor-enter p0

    .line 34
    :try_start_0
    const-string v0, "XAppInputSourcePolicyEngine"

    const-string v1, "handleSharedPackageInfoChange"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 36
    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    aget-object v2, p1, v1

    iget v2, v2, Lcom/xiaopeng/app/xpPackageInfo;->supportGamePad:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 37
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppInputSourcePolicyEngine;->mNeedJoystickList:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 38
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppInputSourcePolicyEngine;->mNeedJoystickList:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 40
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppInputSourcePolicyEngine;->mNeedJoystickList:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppInputSourcePolicyEngine;->mNeedJoystickList:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 35
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    .end local v1    # "i":I
    :cond_2
    const/4 v1, -0x1

    .line 46
    .local v1, "joystickPolicy":I
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppInputSourcePolicyEngine;->mNeedJoystickList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 47
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppInputSourcePolicyEngine;->mNeedJoystickList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    .line 49
    :cond_3
    const-string v0, "XAppInputSourcePolicyEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInputSourcePolicy sourceType:16777232 &policy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const v0, 0x1000010

    invoke-static {v0, v1}, Lcom/xiaopeng/input/xpInputManager;->setInputSourcePolicy(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    .line 33
    .end local v1    # "joystickPolicy":I
    .end local p1    # "packageInfos":[Lcom/xiaopeng/app/xpPackageInfo;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/xapp/mode/XAppInputSourcePolicyEngine;
    throw p1
.end method

.method protected onInit()V
    .locals 0

    .line 25
    return-void
.end method

.method protected onRelease()V
    .locals 0

    .line 30
    return-void
.end method

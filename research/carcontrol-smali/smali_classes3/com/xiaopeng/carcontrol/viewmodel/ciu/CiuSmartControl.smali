.class public final Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuSmartControl;
.super Ljava/lang/Object;
.source "CiuSmartControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuSmartControl$SingleHolder;
    }
.end annotation


# static fields
.field private static final CIU_PAGE_URL:Ljava/lang/String; = "xiaopeng://carcontrol/ciucontrol"

.field private static final TAG:Ljava/lang/String; = "CiuSmartControl"


# instance fields
.field private mCiuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/ciu/ICiuViewModel;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/ciu/ICiuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/ICiuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuSmartControl;->mCiuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/ciu/ICiuViewModel;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuSmartControl$1;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuSmartControl;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuSmartControl;
    .locals 1

    .line 26
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuSmartControl$SingleHolder;->access$100()Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuSmartControl;

    move-result-object v0

    return-object v0
.end method

.method public static startCiuControlPage()V
    .locals 6

    .line 56
    invoke-static {}, Lcom/xiaopeng/carcontrol/direct/ElementDirectManager;->getElementDirect()Lcom/xiaopeng/carcontrol/direct/IElementDirect;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "xiaopeng://carcontrol/ciucontrol"

    .line 59
    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/direct/IElementDirect;->checkSupport(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "CiuSmartControl"

    if-eqz v2, :cond_0

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Jump to CiuControlFragment : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 61
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/xiaopeng/carcontrol/direct/IElementDirect;->showPageDirect(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "Start Ciu control page failed: CIU not existed"

    .line 63
    invoke-static {v4, v0, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public isSettingAutoBrightnessEnable()Z
    .locals 3

    .line 41
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public synthetic lambda$onAutoBrightnessSwChanged$0$CiuSmartControl()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuSmartControl;->mCiuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/ciu/ICiuViewModel;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ciu/ICiuViewModel;->setDmsSwEnable(Z)V

    return-void
.end method

.method public onAutoBrightnessSwChanged()V
    .locals 4

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuSmartControl;->mCiuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/ciu/ICiuViewModel;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/ciu/ICiuViewModel;->isCiuExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuSmartControl;->isSettingAutoBrightnessEnable()Z

    move-result v0

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting auto brightness switch change to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "CiuSmartControl"

    invoke-static {v3, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/-$$Lambda$CiuSmartControl$yL4SKBwPv8p8iORPPtJBycEN6Xo;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/ciu/-$$Lambda$CiuSmartControl$yL4SKBwPv8p8iORPPtJBycEN6Xo;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuSmartControl;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setSettingAutoBrightnessdEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 36
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.class public final Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasSmartControl;
.super Ljava/lang/Object;
.source "AvasSmartControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasSmartControl$SingleHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AvasSmartControl"


# instance fields
.field private mAvasViewModel:Lcom/xiaopeng/carcontrol/viewmodel/avas/IAvasViewModel;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/avas/IAvasViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/avas/IAvasViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasSmartControl;->mAvasViewModel:Lcom/xiaopeng/carcontrol/viewmodel/avas/IAvasViewModel;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasSmartControl$1;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasSmartControl;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasSmartControl;
    .locals 1

    .line 27
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasSmartControl$SingleHolder;->access$100()Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasSmartControl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isSettingLowSpdEnable()Z
    .locals 3

    .line 46
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "xp_low_speed_sound"

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

.method public onLowSpdSwChanged()V
    .locals 3

    .line 51
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasSmartControl;->isSettingLowSpdEnable()Z

    move-result v0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting low speed switch change to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AvasSmartControl"

    invoke-static {v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasSmartControl;->mAvasViewModel:Lcom/xiaopeng/carcontrol/viewmodel/avas/IAvasViewModel;

    invoke-interface {v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/IAvasViewModel;->setLowSpdEnable(Z)V

    return-void
.end method

.method public setSettingLowSpdEnable()V
    .locals 3

    .line 37
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasSmartControl;->isSettingLowSpdEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "AvasSmartControl"

    const-string v1, "Write low speed switch with true to SettingsProvider"

    .line 40
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "xp_low_speed_sound"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

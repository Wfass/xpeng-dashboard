.class public Lcom/xiaopeng/carcontrol/model/DebugFuncModel;
.super Ljava/lang/Object;
.source "DebugFuncModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/model/DebugFuncModel$LazyHolder;
    }
.end annotation


# static fields
.field private static final DEBUG_SP_NAME:Ljava/lang/String; = "debug_sp"

.field private static final ENABLE_UNITY:Z = true

.field private static final KEY_DEBUG_TAB:Ljava/lang/String; = "show_debug_tab"

.field private static final KEY_ENABLE_UNITY:Ljava/lang/String; = "enable_unity"

.field private static final SHOW_DEBUG_TAB:Z = false


# instance fields
.field private final mDebugSp:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    const-string v1, "debug_sp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/App;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/model/DebugFuncModel;->mDebugSp:Landroid/content/SharedPreferences;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/model/DebugFuncModel$1;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/model/DebugFuncModel;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/model/DebugFuncModel;
    .locals 1

    .line 19
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/DebugFuncModel$LazyHolder;->access$100()Lcom/xiaopeng/carcontrol/model/DebugFuncModel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAirAutoProtectSound()Ljava/lang/String;
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/DebugFuncModel;->mDebugSp:Landroid/content/SharedPreferences;

    const-string v1, "pref_air_protect_sound"

    const-string v2, "/system/media/audio/xiaopeng/cdu/wav/CDU_air_protect_3.wav"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLluAwakeMode()I
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/DebugFuncModel;->mDebugSp:Landroid/content/SharedPreferences;

    const-string v1, "pref_llu_awake_mode"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLluSleepMode()I
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/DebugFuncModel;->mDebugSp:Landroid/content/SharedPreferences;

    const-string v1, "pref_llu_sleep_mode"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isAvasExternalSwEnabled()Z
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/DebugFuncModel;->mDebugSp:Landroid/content/SharedPreferences;

    const-string v1, "pref_avas_external_sw"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDebugTabEnabled()Z
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/DebugFuncModel;->mDebugSp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "show_debug_tab"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isLluLockUnlockEleEnabled()Z
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/DebugFuncModel;->mDebugSp:Landroid/content/SharedPreferences;

    const-string v1, "pref_llu_lock_unlock_ele_sw"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isUnityEnabled()Z
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/DebugFuncModel;->mDebugSp:Landroid/content/SharedPreferences;

    const-string v1, "enable_unity"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAirAutoProtectSound(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/DebugFuncModel;->mDebugSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_air_protect_sound"

    .line 74
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 75
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setAvasExternalSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/DebugFuncModel;->mDebugSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_avas_external_sw"

    .line 63
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 64
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setDebugTabEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/DebugFuncModel;->mDebugSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "show_debug_tab"

    .line 42
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 43
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLluAwakeMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/DebugFuncModel;->mDebugSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_llu_awake_mode"

    .line 85
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 86
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLluLockUnlockEleSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/DebugFuncModel;->mDebugSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_llu_lock_unlock_ele_sw"

    .line 107
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 108
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLluSleepMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/DebugFuncModel;->mDebugSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_llu_sleep_mode"

    .line 96
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 97
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setUnityEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/DebugFuncModel;->mDebugSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enable_unity"

    .line 52
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 53
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

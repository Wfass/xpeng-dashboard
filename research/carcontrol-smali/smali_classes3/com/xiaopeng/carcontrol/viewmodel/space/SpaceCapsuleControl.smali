.class public Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;
.super Ljava/lang/Object;
.source "SpaceCapsuleControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl$SingleHolder;
    }
.end annotation


# static fields
.field public static final CAPSULE_ALARM_VOLUME:I = 0xb

.field public static final CAPSULE_BRIGHTNESS_LOW:I = 0x1

.field public static final CAPSULE_VOLUME_LOW:I = 0xa

.field public static final SOUND_STYLE_CINEMA:I = 0x4

.field public static final SOUND_STYLE_SLEEP:I = 0x6

.field private static final TAG:Ljava/lang/String; = "SpaceCapsuleControl"


# instance fields
.field private mAudioConfig:Landroid/media/AudioConfig/AudioConfig;

.field private mAudioManager:Landroid/media/AudioManager;

.field public mIsBrightnessSetLow:Z

.field private mIsChangeEffectType:Z

.field private mMediaVolume:I

.field private mMediaVolumeBeforeAlarm:I

.field private mSoundEffectMode:I

.field private mSoundEffectStyle:I

.field private mSoundFieldData:Landroid/media/AudioConfig/SoundFieldData;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mSoundEffectMode:I

    .line 22
    iput v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mMediaVolume:I

    iput v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mMediaVolumeBeforeAlarm:I

    const/4 v1, 0x0

    .line 23
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mIsBrightnessSetLow:Z

    .line 24
    iput v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mSoundEffectStyle:I

    .line 27
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mIsChangeEffectType:Z

    .line 34
    new-instance v0, Landroid/media/AudioConfig/AudioConfig;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/AudioConfig/AudioConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mAudioConfig:Landroid/media/AudioConfig/AudioConfig;

    .line 35
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl$1;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;-><init>()V

    return-void
.end method

.method private changeBrightness(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bEnter"
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "7#1#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#scenario"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set capsule brightness:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SpaceCapsuleControl"

    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "panel_brightness"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;
    .locals 1

    .line 39
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl$SingleHolder;->access$100()Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public changeAlarmVolume(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bEnter"
        }
    .end annotation

    return-void
.end method

.method public declared-synchronized changeMediaVolume(Z)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bEnter"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x100

    const/4 v3, 0x3

    if-eqz p1, :cond_1

    .line 61
    :try_start_0
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_3

    .line 63
    iput v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mMediaVolume:I

    const-string v6, "SpaceCapsuleControl"

    .line 64
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "change media volume:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " and change to "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mAudioManager:Landroid/media/AudioManager;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {v4, v3, v5, v2, v0}, Landroid/media/AudioManager;->temporaryChangeVolumeDown(IIIZ)V

    goto :goto_2

    .line 68
    :cond_1
    iget v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mMediaVolume:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    const-string v4, "SpaceCapsuleControl"

    .line 69
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restore media volume to:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mMediaVolume:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mAudioManager:Landroid/media/AudioManager;

    iget v6, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mMediaVolume:I

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {v4, v3, v6, v2, v0}, Landroid/media/AudioManager;->temporaryChangeVolumeDown(IIIZ)V

    .line 72
    iput v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mMediaVolume:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_3
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized changeSoundEffectStyleCinema(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isEnter"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    .line 117
    :try_start_0
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mIsChangeEffectType:Z

    if-nez p1, :cond_2

    .line 118
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mAudioConfig:Landroid/media/AudioConfig/AudioConfig;

    invoke-virtual {p1}, Landroid/media/AudioConfig/AudioConfig;->getSoundEffectMode()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/media/AudioConfig/AudioConfig;->getSoundEffectType(I)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mSoundEffectStyle:I

    const-string p1, "SpaceCapsuleControl"

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSoundEffectStyle current:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mSoundEffectStyle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mAudioConfig:Landroid/media/AudioConfig/AudioConfig;

    invoke-virtual {p1}, Landroid/media/AudioConfig/AudioConfig;->getSoundEffectMode()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Landroid/media/AudioConfig/AudioConfig;->setSoundEffectType(II)V

    const/4 p1, 0x1

    .line 121
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mIsChangeEffectType:Z

    goto :goto_0

    .line 124
    :cond_0
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mIsChangeEffectType:Z

    if-eqz p1, :cond_2

    const-string p1, "SpaceCapsuleControl"

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreSoundEffectStyle to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mSoundEffectStyle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mAudioConfig:Landroid/media/AudioConfig/AudioConfig;

    invoke-virtual {p1}, Landroid/media/AudioConfig/AudioConfig;->getSoundEffectMode()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/media/AudioConfig/AudioConfig;->getSoundEffectType(I)I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 127
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mAudioConfig:Landroid/media/AudioConfig/AudioConfig;

    invoke-virtual {p1}, Landroid/media/AudioConfig/AudioConfig;->getSoundEffectMode()I

    move-result v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mSoundEffectStyle:I

    invoke-virtual {p1, v0, v1}, Landroid/media/AudioConfig/AudioConfig;->setSoundEffectType(II)V

    :cond_1
    const/4 p1, 0x0

    .line 129
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mIsChangeEffectType:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public reqSfsForSleep(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enter"
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reqSfsForSleep sendBroadcast:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpaceCapsuleControl"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.intent.action.AIOT_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "bd_event_type"

    const-string v2, "type_event_stat_notify"

    .line 146
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string p1, "notify_fragrance_into_sleep"

    goto :goto_0

    :cond_0
    const-string p1, "notify_fragrance_out_sleep"

    :goto_0
    const-string v1, "key_event_stat_notify"

    .line 147
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x1000000

    .line 148
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 149
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public reqSfsOpen()V
    .locals 3

    const-string v0, "SpaceCapsuleControl"

    const-string v1, "reqSfsOpen sendBroadcast"

    .line 135
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.intent.action.AIOT_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "bd_event_type"

    const-string v2, "type_event_stat_notify"

    .line 137
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "key_event_stat_notify"

    const-string v2, "notify_fragrance_into_sleep"

    .line 138
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000000

    .line 139
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 140
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public restoreCapsuleBrightness()V
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mIsBrightnessSetLow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->changeBrightness(Z)V

    .line 104
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mIsBrightnessSetLow:Z

    :cond_0
    return-void
.end method

.method public setCapsuleBrightnessLow()V
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mIsBrightnessSetLow:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 96
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->changeBrightness(Z)V

    .line 97
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mIsBrightnessSetLow:Z

    :cond_0
    return-void
.end method

.method public declared-synchronized setSoundFieldToMiddle(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isEnter"
        }
    .end annotation

    monitor-enter p0

    const/16 v0, 0x32

    if-eqz p1, :cond_0

    .line 44
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mAudioConfig:Landroid/media/AudioConfig/AudioConfig;

    invoke-virtual {p1}, Landroid/media/AudioConfig/AudioConfig;->getSoundEffectMode()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mSoundEffectMode:I

    .line 45
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mAudioConfig:Landroid/media/AudioConfig/AudioConfig;

    invoke-virtual {v1, p1}, Landroid/media/AudioConfig/AudioConfig;->getSoundField(I)Landroid/media/AudioConfig/SoundFieldData;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mSoundFieldData:Landroid/media/AudioConfig/SoundFieldData;

    const-string p1, "SpaceCapsuleControl"

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current sound effect mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mSoundEffectMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " field:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mSoundFieldData:Landroid/media/AudioConfig/SoundFieldData;

    iget v2, v2, Landroid/media/AudioConfig/SoundFieldData;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mSoundFieldData:Landroid/media/AudioConfig/SoundFieldData;

    iget v2, v2, Landroid/media/AudioConfig/SoundFieldData;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mAudioConfig:Landroid/media/AudioConfig/AudioConfig;

    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mSoundEffectMode:I

    invoke-virtual {p1, v1, v0, v0}, Landroid/media/AudioConfig/AudioConfig;->setSoundField(III)V

    goto :goto_0

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mSoundFieldData:Landroid/media/AudioConfig/SoundFieldData;

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mSoundEffectMode:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 50
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mAudioConfig:Landroid/media/AudioConfig/AudioConfig;

    invoke-virtual {p1}, Landroid/media/AudioConfig/AudioConfig;->getSoundEffectMode()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/media/AudioConfig/AudioConfig;->getSoundField(I)Landroid/media/AudioConfig/SoundFieldData;

    move-result-object p1

    .line 51
    iget v1, p1, Landroid/media/AudioConfig/SoundFieldData;->x:I

    if-ne v1, v0, :cond_1

    iget p1, p1, Landroid/media/AudioConfig/SoundFieldData;->y:I

    if-ne p1, v0, :cond_1

    .line 52
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mAudioConfig:Landroid/media/AudioConfig/AudioConfig;

    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mSoundEffectMode:I

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mSoundFieldData:Landroid/media/AudioConfig/SoundFieldData;

    iget v1, v1, Landroid/media/AudioConfig/SoundFieldData;->x:I

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mSoundFieldData:Landroid/media/AudioConfig/SoundFieldData;

    iget v2, v2, Landroid/media/AudioConfig/SoundFieldData;->y:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/media/AudioConfig/AudioConfig;->setSoundField(III)V

    const-string p1, "SpaceCapsuleControl"

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restore sound effect mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mSoundEffectMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " field:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mSoundFieldData:Landroid/media/AudioConfig/SoundFieldData;

    iget v1, v1, Landroid/media/AudioConfig/SoundFieldData;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleControl;->mSoundFieldData:Landroid/media/AudioConfig/SoundFieldData;

    iget v1, v1, Landroid/media/AudioConfig/SoundFieldData;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public switchBluetoothSource()V
    .locals 2

    const-string v0, "SpaceCapsuleControl"

    const-string v1, "carcontrol switchBluetoothSource sendBroadcast"

    .line 153
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.intent.action.SWITCH_TO_BLUETOOTH_SOURCE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 155
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 156
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

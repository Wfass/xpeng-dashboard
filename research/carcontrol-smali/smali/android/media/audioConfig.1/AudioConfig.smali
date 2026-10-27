.class public Landroid/media/audioConfig/AudioConfig;
.super Ljava/lang/Object;
.source "AudioConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audioConfig/AudioConfig$XpAudioCallBack;,
        Landroid/media/audioConfig/AudioConfig$AudioServiceListener;
    }
.end annotation


# static fields
.field public static final BAN_VOLCONTROL_MODE_LEVEL_1:I = 0x1

.field public static final BAN_VOLCONTROL_MODE_LEVEL_2:I = 0x2

.field public static final BAN_VOLCONTROL_MODE_NO_ACTIVE:I = 0x0

.field public static final BTCALL_CALLING_OUT:I = 0x3

.field public static final BTCALL_CONNECTTED:I = 0x2

.field public static final BTCALL_NOT_CONNECTTED:I = 0x0

.field public static final BTCALL_RINGING:I = 0x1

.field public static final BTCAllMODE_CDU:I = 0x1

.field public static final BTCAllMODE_PHONE:I = 0x0

.field public static final DANGEROUSTTS_VOLUME_HIGH:I = 0x3

.field public static final DANGEROUSTTS_VOLUME_LOW:I = 0x1

.field public static final DANGEROUSTTS_VOLUME_NORMAL:I = 0x2

.field public static final DISABLE_DANGEROUSTTS_MODE:I = 0x0

.field public static final ENABLE_DANGEROUSTTS_MODE:I = 0x1

.field public static final MAIN_DRIVER_MODE_DRIVER:I = 0x1

.field public static final MAIN_DRIVER_MODE_NO_ACTIVE:I = 0x0

.field public static final MAIN_DRIVER_MODE_SILENCE:I = 0x2

.field public static final SOUND_STYLE_LIVE_DYNAMIC:I = 0x3

.field public static final SOUND_STYLE_STRESS:I = 0x1

.field public static final SOUND_STYLE_SURROUND:I = 0x4

.field public static final SOUND_STYLE_VOICE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AudioConfig"

.field public static final TEMPVOLCHANGE_FLAG_AEB:I = 0x80

.field public static final TEMPVOLCHANGE_FLAG_BOOT:I = 0x40

.field public static final TEMPVOLCHANGE_FLAG_BTCALL:I = 0x4

.field public static final TEMPVOLCHANGE_FLAG_DANGERTTS:I = 0x8

.field public static final TEMPVOLCHANGE_FLAG_DOOR:I = 0x2

.field public static final TEMPVOLCHANGE_FLAG_GEAR:I = 0x1

.field public static final TEMPVOLCHANGE_FLAG_XUIALARM:I = 0x10

.field public static final TEMPVOLCHANGE_FLAG_ZENMODE:I = 0x20

.field public static final VOICE_POSITION_CENTER:I = 0x0

.field public static final VOICE_POSITION_FRONTLEFT:I = 0x1

.field public static final VOICE_POSITION_FRONTRIGHT:I = 0x2

.field public static final VOICE_POSITION_INVALID:I = -0x1

.field public static final VOICE_POSITION_REARLEFT:I = 0x3

.field public static final VOICE_POSITION_REARRIGHT:I = 0x4

.field public static final XUI_DYNAUDIO_TYPE_DYNAMIC:I = 0x3

.field public static final XUI_DYNAUDIO_TYPE_HUMAN:I = 0x4

.field public static final XUI_DYNAUDIO_TYPE_REAL:I = 0x1

.field public static final XUI_DYNAUDIO_TYPE_SOFT:I = 0x2

.field public static final XUI_SCENE_KTV:I = 0x3

.field public static final XUI_SCENE_LIVE:I = 0x2

.field public static final XUI_SCENE_STUDIO:I = 0x4

.field public static final XUI_SCENE_THEATRE:I = 0x1

.field public static final XUI_SOUND_MODE_DYNAUDIO:I = 0x3

.field public static final XUI_SOUND_MODE_ORIGIN:I = 0x4

.field public static final XUI_SOUND_MODE_SMART:I = 0x2

.field public static final XUI_SOUND_MODE_XSOUND:I = 0x1

.field public static final XUI_XSOUND_TYPE_CLASIC:I = 0x6

.field public static final XUI_XSOUND_TYPE_COMMON:I = 0x1

.field public static final XUI_XSOUND_TYPE_DISCO:I = 0x5

.field public static final XUI_XSOUND_TYPE_HUMAN:I = 0x2

.field public static final XUI_XSOUND_TYPE_JAZZ:I = 0x3

.field public static final XUI_XSOUND_TYPE_ORIGIN:I = 0x0

.field public static final XUI_XSOUND_TYPE_ROCK:I = 0x4

.field private static mAudioServiceListener:Landroid/media/audioConfig/AudioConfig$AudioServiceListener;

.field private static mXpAudioCallBack:Landroid/media/audioConfig/AudioConfig$XpAudioCallBack;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-nez p1, :cond_0

    const-string p1, "AudioConfig"

    const-string v0, "contex is null"

    .line 90
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "audio"

    .line 93
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    .line 94
    new-instance p1, Landroid/media/audioConfig/AudioConfig$XpAudioCallBack;

    invoke-direct {p1, p0, v0}, Landroid/media/audioConfig/AudioConfig$XpAudioCallBack;-><init>(Landroid/media/audioConfig/AudioConfig;Landroid/media/audioConfig/AudioConfig$1;)V

    sput-object p1, Landroid/media/audioConfig/AudioConfig;->mXpAudioCallBack:Landroid/media/audioConfig/AudioConfig$XpAudioCallBack;

    return-void
.end method

.method static synthetic access$100()Landroid/media/audioConfig/AudioConfig$AudioServiceListener;
    .locals 1

    .line 12
    sget-object v0, Landroid/media/audioConfig/AudioConfig;->mAudioServiceListener:Landroid/media/audioConfig/AudioConfig$AudioServiceListener;

    return-object v0
.end method


# virtual methods
.method public disableSystemSound()V
    .locals 1

    .line 173
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Landroid/media/AudioManager;->disableSystemSound()V

    :cond_0
    return-void
.end method

.method public doZenVolumeProcess(Z)V
    .locals 1

    .line 373
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->doZenVolumeProcess(Z)V

    :cond_0
    return-void
.end method

.method public enableSystemSound()V
    .locals 1

    .line 167
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Landroid/media/AudioManager;->enableSystemSound()V

    :cond_0
    return-void
.end method

.method public forceChangeToAmpChannel(IIIZ)V
    .locals 1

    .line 403
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/media/AudioManager;->forceChangeToAmpChannel(IIIZ)V

    :cond_0
    return-void
.end method

.method public getAudioFocusPackageNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {v0}, Landroid/media/AudioManager;->getAudioFocusPackageNameList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBanVolumeChangeMode(I)I
    .locals 1

    .line 434
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getBanVolumeChangeMode(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getBtCallMode()I
    .locals 1

    .line 304
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0}, Landroid/media/AudioManager;->getBtCallMode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBtCallOnFlag()I
    .locals 1

    .line 284
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {v0}, Landroid/media/AudioManager;->getBtCallOnFlag()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentAudioFocusPackageName()Ljava/lang/String;
    .locals 1

    .line 359
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {v0}, Landroid/media/AudioManager;->getCurrentAudioFocusPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDangerousTtsStatus()I
    .locals 1

    .line 455
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {v0}, Landroid/media/AudioManager;->getDangerousTtsStatus()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDangerousTtsVolLevel()I
    .locals 1

    .line 478
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {v0}, Landroid/media/AudioManager;->getDangerousTtsVolLevel()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMainDriverMode()I
    .locals 1

    .line 421
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMainDriverMode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSoundEffectMode()I
    .locals 1

    .line 121
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Landroid/media/AudioManager;->getSoundEffectMode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getSoundEffectParms(II)Landroid/media/SoundEffectParms;
    .locals 1

    .line 160
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0, p1, p2}, Landroid/media/AudioManager;->getSoundEffectParms(II)Landroid/media/SoundEffectParms;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSoundEffectScene(I)I
    .locals 1

    .line 147
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getSoundEffectScene(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getSoundEffectType(I)I
    .locals 1

    .line 134
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getSoundEffectType(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getSoundField(I)Landroid/media/audioConfig/SoundFieldData;
    .locals 2

    .line 104
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getSoundField(I)Landroid/media/SoundField;

    move-result-object p1

    if-nez p1, :cond_0

    .line 107
    new-instance p1, Landroid/media/audioConfig/SoundFieldData;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Landroid/media/audioConfig/SoundFieldData;-><init>(II)V

    return-object p1

    .line 109
    :cond_0
    new-instance v0, Landroid/media/audioConfig/SoundFieldData;

    iget v1, p1, Landroid/media/SoundField;->x:I

    iget p1, p1, Landroid/media/SoundField;->y:I

    invoke-direct {v0, v1, p1}, Landroid/media/audioConfig/SoundFieldData;-><init>(II)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getVoicePosition()I
    .locals 1

    .line 392
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {v0}, Landroid/media/AudioManager;->getVoicePosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVoiceStatus()I
    .locals 1

    .line 338
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0}, Landroid/media/AudioManager;->getVoiceStatus()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAnyStreamActive()Z
    .locals 1

    .line 238
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0}, Landroid/media/AudioManager;->isAnyStreamActive()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isBtCallOn()Z
    .locals 1

    .line 291
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBtCallOn()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isBtHeadPhoneOn()Z
    .locals 1

    .line 231
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBtHeadPhoneOn()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFixedVolume(I)Z
    .locals 1

    .line 352
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isFixedVolume(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isKaraokeOn()Z
    .locals 1

    .line 317
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0}, Landroid/media/AudioManager;->isKaraokeOn()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMainDriverOn()Z
    .locals 1

    .line 224
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMainDriverOn()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMusicLimitMode()Z
    .locals 1

    .line 251
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicLimitMode()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSpeechSurroundOn()Z
    .locals 1

    .line 217
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeechSurroundOn()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStereoAlarmOn()Z
    .locals 1

    .line 210
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0}, Landroid/media/AudioManager;->isStereoAlarmOn()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSystemSoundEnabled()Z
    .locals 1

    .line 179
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSystemSoundEnabled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isXiaoPOn()Z
    .locals 1

    .line 328
    invoke-virtual {p0}, Landroid/media/audioConfig/AudioConfig;->getVoiceStatus()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isZenVolume()Z
    .locals 1

    .line 379
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {v0}, Landroid/media/AudioManager;->isZenVolume()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public registerCallback(Landroid/media/audioConfig/AudioConfig$AudioServiceListener;)V
    .locals 2

    .line 517
    sput-object p1, Landroid/media/audioConfig/AudioConfig;->mAudioServiceListener:Landroid/media/audioConfig/AudioConfig$AudioServiceListener;

    .line 518
    iget-object p1, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz p1, :cond_0

    sget-object v0, Landroid/media/audioConfig/AudioConfig;->mXpAudioCallBack:Landroid/media/audioConfig/AudioConfig$XpAudioCallBack;

    if-eqz v0, :cond_0

    .line 520
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->registerCallback(Landroid/media/AudioManager$AudioCallBack;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerCallback "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioConfig"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public restoreMusicVolume()V
    .locals 1

    .line 409
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {v0}, Landroid/media/AudioManager;->restoreMusicVolume()V

    :cond_0
    return-void
.end method

.method public setBanVolumeChangeMode(II)V
    .locals 1

    .line 428
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {v0, p1, p2}, Landroid/media/AudioManager;->setBanVolumeChangeMode(II)V

    :cond_0
    return-void
.end method

.method public setBtCallMode(I)V
    .locals 1

    .line 298
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setBtCallMode(I)V

    :cond_0
    return-void
.end method

.method public setBtCallOn(Z)V
    .locals 1

    .line 258
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setBtCallOn(Z)V

    :cond_0
    return-void
.end method

.method public setBtCallOnFlag(I)V
    .locals 1

    .line 271
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setBtCallOnFlag(I)V

    :cond_0
    return-void
.end method

.method public setBtHeadPhone(Z)V
    .locals 1

    .line 204
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setBtHeadPhone(Z)V

    :cond_0
    return-void
.end method

.method public setDangerousTtsStatus(I)V
    .locals 1

    .line 445
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setDangerousTtsStatus(I)V

    :cond_0
    return-void
.end method

.method public setDangerousTtsVolLevel(I)V
    .locals 1

    .line 467
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setDangerousTtsVolLevel(I)V

    :cond_0
    return-void
.end method

.method public setFixedVolume(ZII)Z
    .locals 1

    .line 345
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->setFixedVolume(ZII)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setKaraokeOn(Z)V
    .locals 1

    .line 311
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setKaraokeOn(Z)V

    :cond_0
    return-void
.end method

.method public setMainDriver(Z)V
    .locals 1

    .line 198
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMainDriver(Z)V

    :cond_0
    return-void
.end method

.method public setMainDriverMode(I)V
    .locals 1

    .line 415
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMainDriverMode(I)V

    :cond_0
    return-void
.end method

.method public setMusicLimitMode(Z)V
    .locals 1

    .line 245
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMusicLimitMode(Z)V

    :cond_0
    return-void
.end method

.method public setSoundEffectMode(I)V
    .locals 1

    .line 115
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSoundEffectMode(I)V

    :cond_0
    return-void
.end method

.method public setSoundEffectParms(IIII)V
    .locals 1

    .line 154
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/media/AudioManager;->setSoundEffectParms(IIII)V

    :cond_0
    return-void
.end method

.method public setSoundEffectScene(II)V
    .locals 1

    .line 141
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0, p1, p2}, Landroid/media/AudioManager;->setSoundEffectScene(II)V

    :cond_0
    return-void
.end method

.method public setSoundEffectType(II)V
    .locals 1

    .line 128
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0, p1, p2}, Landroid/media/AudioManager;->setSoundEffectType(II)V

    :cond_0
    return-void
.end method

.method public setSoundField(III)V
    .locals 1

    .line 98
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->setSoundField(III)V

    :cond_0
    return-void
.end method

.method public setSpeechSurround(Z)V
    .locals 1

    .line 192
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeechSurround(Z)V

    :cond_0
    return-void
.end method

.method public setStereoAlarm(Z)V
    .locals 1

    .line 186
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setStereoAlarm(Z)V

    :cond_0
    return-void
.end method

.method public setVoicePosition(II)V
    .locals 1

    .line 386
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {v0, p1, p2}, Landroid/media/AudioManager;->setVoicePosition(II)V

    :cond_0
    return-void
.end method

.method public setVoiceStatus(I)V
    .locals 1

    .line 332
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setVoiceStatus(I)V

    :cond_0
    return-void
.end method

.method public setXiaoPOn(Z)V
    .locals 0

    .line 324
    invoke-virtual {p0, p1}, Landroid/media/audioConfig/AudioConfig;->setVoiceStatus(I)V

    return-void
.end method

.method public supportSurroundSoundEffect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public unRegisterCallback()V
    .locals 3

    const/4 v0, 0x0

    .line 534
    sput-object v0, Landroid/media/audioConfig/AudioConfig;->mAudioServiceListener:Landroid/media/audioConfig/AudioConfig$AudioServiceListener;

    .line 535
    iget-object v0, p0, Landroid/media/audioConfig/AudioConfig;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 537
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->unRegisterCallback()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unRegisterCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.class public Lcom/xiaopeng/speech/common/SpeechConstant;
.super Ljava/lang/Object;
.source "SpeechConstant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/common/SpeechConstant$REAR_SEAT_HEAT_POSITION;,
        Lcom/xiaopeng/speech/common/SpeechConstant$REAR_SEAT_HEAT_MODE;,
        Lcom/xiaopeng/speech/common/SpeechConstant$ELECTRIC_CURTAIN;,
        Lcom/xiaopeng/speech/common/SpeechConstant$NAVI;,
        Lcom/xiaopeng/speech/common/SpeechConstant$Windows;,
        Lcom/xiaopeng/speech/common/SpeechConstant$ChargePort;,
        Lcom/xiaopeng/speech/common/SpeechConstant$Speaker;,
        Lcom/xiaopeng/speech/common/SpeechConstant$FuncState;,
        Lcom/xiaopeng/speech/common/SpeechConstant$ThirdCMD;,
        Lcom/xiaopeng/speech/common/SpeechConstant$AppOpen;,
        Lcom/xiaopeng/speech/common/SpeechConstant$OOBE;,
        Lcom/xiaopeng/speech/common/SpeechConstant$SoundLocation;,
        Lcom/xiaopeng/speech/common/SpeechConstant$PhoneStatus;,
        Lcom/xiaopeng/speech/common/SpeechConstant$Vocab;,
        Lcom/xiaopeng/speech/common/SpeechConstant$AirWindDirection;,
        Lcom/xiaopeng/speech/common/SpeechConstant$TTS;
    }
.end annotation


# static fields
.field public static final ASR_NULL_RETRY_TIMES:I = 0x1

.field public static CLOUD_TIME:J = 0x0L

.field public static final DEFAULT_ENABLE_ANGLE_TIP:Z = false

.field public static final DEFAULT_ENABLE_ASR_INTERRUPT:Z = false

.field public static final DEFAULT_ENABLE_FASTWAKE:Z = true

.field public static final DEFAULT_ENABLE_INTERRUPT_WAKEUP:Z = false

.field public static final DEFAULT_ENABLE_ONESHOT:Z = true

.field public static final DEFAULT_ENABLE_SOUND_LOCATION:Z = true

.field public static final DEFAULT_ENABLE_SOUND_LOCK:Z = false

.field public static final DEFAULT_ENABLE_WAKEUP:Z = true

.field public static final DEFAULT_ENABLE_WELCOME:Z = true

.field public static final DEFAULT_SOUND_AREA_ENABLE:Z = true

.field public static final DM_ERROR_SOUND_TIME:I = 0x12c

.field public static final KEY_BF_ENABLED:Ljava/lang/String; = "SpeechEnv.enable_bf_check"

.field public static final KEY_CUSTOM_WAKEUP_CONFIG:Ljava/lang/String; = "key.custom.wakeup.config"

.field public static final KEY_CUSTOM_WAKEUP_INDEX:Ljava/lang/String; = "key.custom.wakeup_index"

.field public static final KEY_DATA_AUTHORIZED:Ljava/lang/String; = "key.speech.data.authorized"

.field public static final KEY_DATA_AUTHORIZED_ONCE:Ljava/lang/String; = "key.speech.data.authorized.once"

.field public static final KEY_DATA_AUTHORIZED_OPERATION:Ljava/lang/String; = "key.speech.data.authorized.operation"

.field public static final KEY_DIALOGUE_ENABLE:Ljava/lang/String; = "key.dialogue.enable"

.field public static final KEY_DIALOGUE_TIME:Ljava/lang/String; = "key.dialogue.time"

.field public static final KEY_ENABLE_ANGLE_TIP:Ljava/lang/String; = "SpeechConfig.angle_tip_enable"

.field public static final KEY_ENABLE_AUTO_CLOSE_NO_BODY_SOUND_AREA:Ljava/lang/String; = "key.enable.close.nobody.sound.area"

.field public static final KEY_ENABLE_BACK_LEFT:Ljava/lang/String; = "key.enable.back.left"

.field public static final KEY_ENABLE_BACK_RIGHT:Ljava/lang/String; = "key.enable.back.right"

.field public static final KEY_ENABLE_DOPPELGANGER:Ljava/lang/String; = "key.enable.doppelganger"

.field public static final KEY_ENABLE_DRIVER_LOCATION:Ljava/lang/String; = "key.enable.driver.location"

.field public static final KEY_ENABLE_EXTREME_SPEECH_DIALOG:Ljava/lang/String; = "key.enable.extreme.speech_dialog"

.field public static final KEY_ENABLE_PASSENGER_LOCATION:Ljava/lang/String; = "key.enable.passenger.location"

.field public static final KEY_ENABLE_REAR_LEFT:Ljava/lang/String; = "key.enable.rear.left"

.field public static final KEY_ENABLE_REAR_RIGHT:Ljava/lang/String; = "key.enable.rear.right"

.field public static final KEY_ENABLE_SPEECH_SCENE_TIP:Ljava/lang/String; = "speech.scene.tip.enable"

.field public static final KEY_ENABLE_WAIT_AWAKE:Ljava/lang/String; = "key.enable.wait.awake"

.field public static final KEY_INTERRUPTION_ENABLE:Ljava/lang/String; = "key.interruption.enable"

.field public static final KEY_MIC_WAKEUP_BY_TTS:Ljava/lang/String; = "key.mic.wakeup.by.tts"

.field public static final KEY_SPEECH_SCENE_ENABLE:Ljava/lang/String; = "key.speech.scene.enabke"

.field public static final KEY_SPEECH_SCENE_ENABLE_WITH_CALLBACK:Ljava/lang/String; = "key.speech.scene.enable.callback"

.field public static final KEY_SPEECH_SCENE_STATE:Ljava/lang/String; = "key.speech.scene.state"

.field public static final KEY_SPEECH_URL:Ljava/lang/String; = "key.speech.url"

.field public static final KEY_SUPER_DIALOGUE_SWITCH:Ljava/lang/String; = "key.super.dialogue.switch"

.field public static final KEY_TTS_ENGINE:Ljava/lang/String; = "SpeechConfig.tts_engine"

.field public static final KEY_UPGRADE_IMMEDIATELY:Ljava/lang/String; = "key_upgrade_immediately"

.field public static final KEY_USER_EXPRESSION_ENABLE:Ljava/lang/String; = "key.user.expression.enable"

.field public static final KEY_VISIBLE_ENABLE:Ljava/lang/String; = "key.visible.enable"

.field public static final KEY_WAKEUP_WORD_RECOMMEND:Ljava/lang/String; = "key.wakeup.word.recommend"

.field public static final SPEECH_SERVER_ACTION:Ljava/lang/String; = "carspeechservice.SpeechServer"

.field public static final SPEECH_SERVER_ACTION_DATA_AUTHOR:Ljava/lang/String; = "carspeechservice.action.data.author"

.field public static final SPEECH_SERVER_ACTION_DEBUG:Ljava/lang/String; = "carspeechservice.action.debug"

.field public static final SPEECH_SERVER_ACTION_START:Ljava/lang/String; = "carspeechservice.SpeechServer.Start"

.field public static final SPEECH_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.xiaopeng.carspeechservice"

.field public static final TTS_CHAR_TIME:I = 0xfa

.field public static TTS_DEFAULT_MODEL:I = 0x0

.field public static TTS_DEFAULT_SPEAKER:Ljava/lang/String; = null

.field public static final TTS_IFLYTEK:Ljava/lang/String; = "iflytek"

.field public static final TTS_MODE_CLOUD:I = 0x1

.field public static final TTS_MODE_LOCAL:I = 0x0

.field public static final TTS_SPEEX:Ljava/lang/String; = "speex"

.field public static final TTS_STREAM_NAVI:I = 0x9

.field public static final TTS_STREAM_SPEECH:I = -0x1

.field public static TTS_TIMEOUT:I = 0x0

.field public static TTS_TIMEOUT_TEST:I = 0x0

.field public static final VAD_PAUSE_TIME:I = 0x1f4

.field public static final VAD_TIMEOUT:I = 0x1b58


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 91
    const/4 v0, 0x0

    sput v0, Lcom/xiaopeng/speech/common/SpeechConstant;->TTS_DEFAULT_MODEL:I

    .line 92
    const-string v0, "zhilingfa"

    sput-object v0, Lcom/xiaopeng/speech/common/SpeechConstant;->TTS_DEFAULT_SPEAKER:Ljava/lang/String;

    .line 95
    const-wide/16 v0, 0x297

    sput-wide v0, Lcom/xiaopeng/speech/common/SpeechConstant;->CLOUD_TIME:J

    .line 97
    const/16 v0, 0x3e8

    sput v0, Lcom/xiaopeng/speech/common/SpeechConstant;->TTS_TIMEOUT:I

    .line 98
    const/16 v0, 0xbb8

    sput v0, Lcom/xiaopeng/speech/common/SpeechConstant;->TTS_TIMEOUT_TEST:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

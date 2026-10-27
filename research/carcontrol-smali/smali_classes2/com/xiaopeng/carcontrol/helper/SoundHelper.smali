.class public Lcom/xiaopeng/carcontrol/helper/SoundHelper;
.super Ljava/lang/Object;
.source "SoundHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/helper/SoundHelper$IFadeOutCallback;,
        Lcom/xiaopeng/carcontrol/helper/SoundHelper$StreamType;,
        Lcom/xiaopeng/carcontrol/helper/SoundHelper$SoundPath;
    }
.end annotation


# static fields
.field private static final DEFAULT_INVALID_STREAM_ID:I = 0x0

.field public static final PATH_AIR_PROTECT_1:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_air_protect_3.wav"

.field public static final PATH_AIR_PROTECT_2:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_air_protect_4.wav"

.field public static final PATH_AS_HEIGHT_HL0:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_as_height_hl0.wav"

.field public static final PATH_AS_HEIGHT_HL1:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_as_height_hl1.wav"

.field public static final PATH_AS_HEIGHT_HL2:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_as_height_hl2.wav"

.field public static final PATH_AS_HEIGHT_LL1:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_as_height_ll1.wav"

.field public static final PATH_AS_HEIGHT_LL2:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_as_height_ll2.wav"

.field public static final PATH_AS_HEIGHT_LL3:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_as_height_ll3.wav"

.field public static final PATH_AVAS_LOW_SPEED_1:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_avas_low_speed_1.wav"

.field public static final PATH_AVAS_LOW_SPEED_2:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_avas_low_speed_2.wav"

.field public static final PATH_AVAS_LOW_SPEED_3:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_avas_low_speed_3.wav"

.field public static final PATH_AVAS_LOW_SPEED_4:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_avas_low_speed_4.wav"

.field public static final PATH_AVAS_SAYHI_1:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_avas_sayhi_mode_1.wav"

.field public static final PATH_AVAS_SAYHI_2:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_avas_sayhi_mode_2.wav"

.field public static final PATH_AVAS_SAYHI_3:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_avas_sayhi_mode_3.wav"

.field public static final PATH_BOOT_1:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/boot/CDU_boot_01_aether.wav"

.field public static final PATH_BOOT_2:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/boot/CDU_boot_02_piano.wav"

.field public static final PATH_BOOT_3:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/boot/CDU_boot_03_sci-Fi.wav"

.field public static final PATH_BOOT_4:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/boot/CDU_boot_04_wave.wav"

.field public static final PATH_CLOSE_CHARGE:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_chargeport_off.wav"

.field public static final PATH_DRIVE_MODE_ANTISICK:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_drive_comfortable.wav"

.field public static final PATH_DRIVE_MODE_BOOST:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_drive_boost.wav"

.field public static final PATH_DRIVE_MODE_ECO:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_drive_eco.wav"

.field public static final PATH_DRIVE_MODE_GEEK:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_drive_geek.wav"

.field public static final PATH_DRIVE_MODE_MUD:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_drive_mud.wav"

.field public static final PATH_DRIVE_MODE_NORMAL:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_drive_normal.wav"

.field public static final PATH_DRIVE_MODE_NORMAL_NEW:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_drive_normal_new.wav"

.field public static final PATH_DRIVE_MODE_RACER:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_drive_racer.wav"

.field public static final PATH_DRIVE_MODE_SPORT:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_drive_sport.wav"

.field public static final PATH_DRIVE_MODE_XPEDAL:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_x_pedal.wav"

.field public static final PATH_FOLD_MIRROR:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_mirror_fold.wav"

.field public static final PATH_INVALID:Ljava/lang/String; = ""

.field public static final PATH_LAMP_HEIGHT_AUTO:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_lamp_height_auto.wav"

.field public static final PATH_LAMP_HEIGHT_HIGH:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_lamp_height_hight.wav"

.field public static final PATH_LAMP_HEIGHT_HIGHEST:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_lamp_height_highest.wav"

.field public static final PATH_LAMP_HEIGHT_LOW:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_lamp_height_low.wav"

.field public static final PATH_LAMP_HEIGHT_LOWEST:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_lamp_height_lowest.wav"

.field private static final PATH_NOTIFICATION_ARRAY:[Ljava/lang/String;

.field public static final PATH_OPEN_CHARGE:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_chargeport_on.wav"

.field public static final PATH_PHYSIC_FAIL:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_fail.wav"

.field public static final PATH_SEAT_ADJUST:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_seat_adjust.wav"

.field public static final PATH_SEAT_RHYTHM_MODE_1:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_seat_rhythm_mode_1.wav"

.field public static final PATH_SEAT_RHYTHM_MODE_2:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_seat_rhythm_mode_2.wav"

.field public static final PATH_SPACE_CAPSULE_CINEMA:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_drive_normal.wav"

.field public static final PATH_SPACE_CAPSULE_ENTER:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/ogg/enter_space_capsule.ogg"

.field public static final PATH_SPACE_CAPSULE_SLEEP:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_drive_sport.wav"

.field public static final PATH_STEER_ADJUST:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_steer_adjust.wav"

.field public static final PATH_SYS_READY:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_ready.wav"

.field public static final PATH_TRUNK_OFF:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_trunk_off.wav"

.field public static final PATH_TRUNK_ON:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_trunk_on.wav"

.field public static final PATH_UNFOLD_MIRROR:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_mirror_unfold.wav"

.field public static final PATH_WHEEL_SCROLL_1:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_wheel_scroll_1.wav"

.field public static final PATH_WHEEL_SCROLL_2:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_wheel_scroll_2.wav"

.field public static final PATH_WHEEL_SCROLL_7:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_wheel_scroll_7.wav"

.field public static final PATH_WHEEL_TIP_1:Ljava/lang/String; = "/system/media/audio/xiaopeng/cdu/wav/CDU_wheel_tip_1.wav"

.field public static final STREAM_MUSIC:I = 0x3

.field public static final STREAM_NOTIFICATION:I = 0x5

.field public static final STREAM_SYSTEM:I = 0x1

.field private static final SYSTEM_MEDIA_PLAYER_DISABLE:Ljava/lang/String; = "void.xppolicy.system.notplay"

.field private static final TAG:Ljava/lang/String; = "SoundHelper"

.field private static isInit:Z

.field private static mAudioConfig:Landroid/media/AudioConfig/AudioConfig;

.field private static sAudioManager:Landroid/media/AudioManager;

.field private static sFocusRequest:Landroid/media/AudioFocusRequest;

.field private static sPlayer:Landroid/media/MediaPlayer;

.field private static sSoundData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sSoundPool:Landroid/media/SoundPool;

.field private static sStreamId:I

.field private static sThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/system/media/audio/xiaopeng/cdu/wav/CDU_wheel_scroll_7.wav"

    .line 92
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->PATH_NOTIFICATION_ARRAY:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 118
    sput-boolean v0, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->isInit:Z

    .line 128
    sput v0, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sStreamId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fadeOut(Lcom/xiaopeng/carcontrol/helper/SoundHelper$IFadeOutCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    const/16 v0, 0xa

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    int-to-float v0, v1

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v0, v2

    .line 200
    sget-object v2, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    const-wide/16 v2, 0xa

    .line 202
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 204
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    move v0, v1

    goto :goto_0

    .line 207
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 208
    sget-object v0, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sPlayer:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    if-eqz p0, :cond_1

    .line 211
    invoke-interface {p0}, Lcom/xiaopeng/carcontrol/helper/SoundHelper$IFadeOutCallback;->onFadeOutFinish()V

    :cond_1
    return-void
.end method

.method public static init()V
    .locals 8

    .line 133
    sget-boolean v0, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->isInit:Z

    if-nez v0, :cond_1

    const-string v0, "SoundHelper"

    const-string v1, "init start"

    .line 134
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    sput-object v1, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sAudioManager:Landroid/media/AudioManager;

    .line 136
    new-instance v1, Landroid/media/AudioConfig/AudioConfig;

    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/AudioConfig/AudioConfig;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->mAudioConfig:Landroid/media/AudioConfig/AudioConfig;

    .line 137
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v1, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sPlayer:Landroid/media/MediaPlayer;

    .line 138
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x5

    .line 139
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 140
    new-instance v2, Landroid/media/SoundPool$Builder;

    invoke-direct {v2}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 141
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v1

    const/16 v2, 0xa

    .line 142
    invoke-virtual {v1, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v1

    .line 143
    invoke-virtual {v1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v1

    sput-object v1, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sSoundPool:Landroid/media/SoundPool;

    .line 144
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sSoundData:Ljava/util/Map;

    .line 145
    sget-object v1, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->PATH_NOTIFICATION_ARRAY:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_0

    aget-object v5, v1, v3

    .line 146
    sget-object v6, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sSoundData:Ljava/util/Map;

    sget-object v7, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v7, v5, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 148
    :cond_0
    invoke-static {v4}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 149
    sput-boolean v4, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->isInit:Z

    const-string v1, "init end"

    .line 150
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static isMusicPlaying()Z
    .locals 1

    .line 278
    sget-object v0, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    return v0
.end method

.method private static isPreviewSound(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    const-string v0, "/system/media/audio/xiaopeng/cdu/boot/CDU_boot_01_aether.wav"

    .line 290
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/system/media/audio/xiaopeng/cdu/boot/CDU_boot_02_piano.wav"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/system/media/audio/xiaopeng/cdu/boot/CDU_boot_03_sci-Fi.wav"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/system/media/audio/xiaopeng/cdu/wav/CDU_avas_sayhi_mode_1.wav"

    .line 291
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/system/media/audio/xiaopeng/cdu/wav/CDU_avas_sayhi_mode_2.wav"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/system/media/audio/xiaopeng/cdu/wav/CDU_avas_sayhi_mode_3.wav"

    .line 292
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/system/media/audio/xiaopeng/cdu/wav/CDU_avas_low_speed_1.wav"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/system/media/audio/xiaopeng/cdu/wav/CDU_avas_low_speed_2.wav"

    .line 293
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/system/media/audio/xiaopeng/cdu/wav/CDU_avas_low_speed_3.wav"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/system/media/audio/xiaopeng/cdu/wav/CDU_avas_low_speed_4.wav"

    .line 294
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic lambda$null$0(Ljava/lang/String;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "path",
            "requestFocus",
            "streamType"
        }
    .end annotation

    .line 176
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->realPlay(Ljava/lang/String;ZI)V

    return-void
.end method

.method static synthetic lambda$play$1(Ljava/lang/String;ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "path",
            "requestFocus",
            "streamType"
        }
    .end annotation

    .line 175
    sget-object v0, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    new-instance v0, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$SoundHelper$exIgnm4aL2LXSjFm6sl2d6yi5mM;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$SoundHelper$exIgnm4aL2LXSjFm6sl2d6yi5mM;-><init>(Ljava/lang/String;ZI)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->fadeOut(Lcom/xiaopeng/carcontrol/helper/SoundHelper$IFadeOutCallback;)V

    goto :goto_0

    .line 178
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->realPlay(Ljava/lang/String;ZI)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$realPlay$3(ZLandroid/media/AudioAttributes;Landroid/media/MediaPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "requestFocus",
            "audioAttributes",
            "mp"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 250
    new-instance p0, Landroid/media/AudioFocusRequest$Builder;

    const/4 p2, 0x3

    invoke-direct {p0, p2}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 252
    invoke-virtual {p0, p1}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object p0

    sput-object p0, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sFocusRequest:Landroid/media/AudioFocusRequest;

    .line 253
    sget-object p1, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    .line 254
    sget-object p0, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    const-string p1, "SoundHelper"

    const-string p2, "request audio focus failed"

    .line 256
    invoke-static {p1, p2, p0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 259
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    :goto_0
    return-void
.end method

.method static synthetic lambda$realPlay$4(ZLandroid/media/MediaPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "requestFocus",
            "mp"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 263
    sget-object p0, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sFocusRequest:Landroid/media/AudioFocusRequest;

    if-eqz p0, :cond_0

    .line 264
    sget-object p1, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    const/4 p0, 0x0

    .line 265
    sput-object p0, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sFocusRequest:Landroid/media/AudioFocusRequest;

    :cond_0
    return-void
.end method

.method static synthetic lambda$stopAllSound$2()V
    .locals 1

    .line 190
    sget-object v0, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    sget-object v0, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$SoundHelper$vbRfRuyt6rLip5CHK926lg75T40;->INSTANCE:Lcom/xiaopeng/carcontrol/helper/-$$Lambda$SoundHelper$vbRfRuyt6rLip5CHK926lg75T40;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->fadeOut(Lcom/xiaopeng/carcontrol/helper/SoundHelper$IFadeOutCallback;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$vbRfRuyt6rLip5CHK926lg75T40()V
    .locals 0

    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->reset()V

    return-void
.end method

.method public static pauseNotification()V
    .locals 2

    .line 322
    sget-object v0, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    sget v1, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sStreamId:I

    if-eqz v1, :cond_0

    .line 323
    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->pause(I)V

    :cond_0
    return-void
.end method

.method public static play(Ljava/lang/String;ZI)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "path",
            "requestFocus",
            "streamType"
        }
    .end annotation

    .line 159
    sget-object v0, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->mAudioConfig:Landroid/media/AudioConfig/AudioConfig;

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioConfig/AudioConfig;->isSystemSoundEnabled()Z

    move-result v0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play sound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestFocus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", streamType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isSystemSoundEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SoundHelper"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x5

    if-ne p2, v1, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-eqz v3, :cond_3

    .line 172
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->stopNotification()V

    .line 174
    :cond_3
    sget-object v0, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$SoundHelper$0NSBADz7iwiBYjc-u0jTbIU3iGc;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$SoundHelper$0NSBADz7iwiBYjc-u0jTbIU3iGc;-><init>(Ljava/lang/String;ZI)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static play(Ljava/lang/String;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "path",
            "requestFocus",
            "isNotification"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 p2, 0x5

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 155
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->play(Ljava/lang/String;ZI)V

    return-void
.end method

.method public static playNotification(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "soundType"
        }
    .end annotation

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playNotification sound effect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundHelper"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "void.xppolicy.system.notplay"

    const/4 v2, 0x0

    .line 299
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 302
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->stopNotification()V

    .line 304
    sget-object v0, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sSoundData:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    .line 306
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_1
    move v4, v2

    .line 308
    sget-object v3, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sSoundPool:Landroid/media/SoundPool;

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    .line 309
    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result p0

    sput p0, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sStreamId:I

    .line 310
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "playNotification sound effect sStreamId = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v0, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sStreamId:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static playSoundEffect(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    .line 184
    sget-object v0, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->playSoundEffect(I)V

    return-void
.end method

.method private static realPlay(Ljava/lang/String;ZI)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "path",
            "requestFocus",
            "type"
        }
    .end annotation

    const-string v0, "SoundHelper"

    .line 229
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->reset()V

    const-string v1, ""

    .line 231
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 235
    :cond_0
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v1, p2}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x3

    if-ne v2, p2, :cond_1

    const/high16 p2, 0x100000

    .line 237
    invoke-virtual {v1, p2}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    .line 239
    :cond_1
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p2

    .line 240
    sget-object v1, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p2}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 243
    :try_start_0
    sget-object v1, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 248
    sget-object p0, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$SoundHelper$fm2geiLaurLfAz8b8pNcER0-VkI;

    invoke-direct {v1, p1, p2}, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$SoundHelper$fm2geiLaurLfAz8b8pNcER0-VkI;-><init>(ZLandroid/media/AudioAttributes;)V

    invoke-virtual {p0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 262
    sget-object p0, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sPlayer:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$SoundHelper$CpLn60J8pwb8dU9GE6gu97m6gUA;

    invoke-direct {p2, p1}, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$SoundHelper$CpLn60J8pwb8dU9GE6gu97m6gUA;-><init>(Z)V

    invoke-virtual {p0, p2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 271
    :try_start_1
    sget-object p0, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "prepareAsync"

    .line 273
    invoke-static {v0, p1, p0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :catch_1
    move-exception p0

    const-string/jumbo p1, "setDataSource failed"

    .line 245
    invoke-static {v0, p1, p0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static reset()V
    .locals 2

    .line 282
    sget-object v0, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 283
    sget-object v0, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sFocusRequest:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_0

    .line 284
    sget-object v1, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    const/4 v0, 0x0

    .line 285
    sput-object v0, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sFocusRequest:Landroid/media/AudioFocusRequest;

    :cond_0
    return-void
.end method

.method public static resumeNotification()V
    .locals 2

    .line 328
    sget-object v0, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    sget v1, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sStreamId:I

    if-eqz v1, :cond_0

    .line 329
    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->resume(I)V

    :cond_0
    return-void
.end method

.method public static stopAllSound()V
    .locals 2

    .line 189
    sget-object v0, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sThreadPool:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$SoundHelper$LWplnmoldyae9GQ1jAac4D3Nq2w;->INSTANCE:Lcom/xiaopeng/carcontrol/helper/-$$Lambda$SoundHelper$LWplnmoldyae9GQ1jAac4D3Nq2w;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static stopNotification()V
    .locals 2

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopNotification last sound effect sStreamId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sStreamId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundHelper"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    sget-object v0, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    sget v1, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->sStreamId:I

    if-eqz v1, :cond_0

    .line 317
    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    :cond_0
    return-void
.end method

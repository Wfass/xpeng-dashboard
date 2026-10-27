.class public Lcom/xiaopeng/xuiservice/mediacenter/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static final A2dpAutoSwitch:Z

.field public static final CAPTURE_SIZE:I

.field public static final DBG:Z

.field public static final DynamicExtremebufferLen:I

.field public static final Fft_Print_Size:I

.field public static final Load_Media_Lyric:Z

.field public static final MediaButtonControl:Z

.field public static final MediaLaunchPolicy:I

.field public static final MuteAutoSwitch:Z

.field public static final SendXpMusicInfoToIcm:Z

.field public static final ShowSourceLLULimit:Z

.field public static final Show_Seize_Dialog:Z

.field public static final XP_Music_Session_Control:Z

.field public static final fftTimeGap:I

.field public static final fftaverageGap:F

.field public static final fftkaraokeGap:F

.field public static final rateSpeed:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 7
    const-string v0, "persist.media.center.logger"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/mediacenter/Config;->DBG:Z

    .line 8
    const-string v0, "persist.fft.capture.size"

    const/16 v2, 0x400

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/xuiservice/mediacenter/Config;->CAPTURE_SIZE:I

    .line 9
    const-string v0, "persist.dynamic.extreme.BufLen"

    const/16 v2, 0xa

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/xuiservice/mediacenter/Config;->DynamicExtremebufferLen:I

    .line 10
    const-string v0, "persist.fft.timeGap"

    const/16 v2, 0x28

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/xuiservice/mediacenter/Config;->fftTimeGap:I

    .line 11
    const-string v0, "persist.fft.averageGap"

    const-wide/16 v2, 0x14

    invoke-static {v0, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    long-to-float v0, v4

    sput v0, Lcom/xiaopeng/xuiservice/mediacenter/Config;->fftaverageGap:F

    .line 12
    const-string v0, "persist.karaoke.fft.minGap"

    invoke-static {v0, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-float v0, v2

    sput v0, Lcom/xiaopeng/xuiservice/mediacenter/Config;->fftkaraokeGap:F

    .line 13
    const-string v0, "persist.sys.xp.a2dp.switch"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/mediacenter/Config;->A2dpAutoSwitch:Z

    .line 14
    const-string v0, "persist.sys.xp.mute.switch"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/mediacenter/Config;->MuteAutoSwitch:Z

    .line 15
    const-string v0, "persist.autoshow.llu.limit"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/mediacenter/Config;->ShowSourceLLULimit:Z

    .line 16
    const-string v0, "persist.sys.send.xpmusic.toicm"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/mediacenter/Config;->SendXpMusicInfoToIcm:Z

    .line 17
    const-string v0, "persist.visualizer.rate"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/xuiservice/mediacenter/Config;->rateSpeed:I

    .line 18
    const-string v0, "persist.sys.media.button.control"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/mediacenter/Config;->MediaButtonControl:Z

    .line 19
    sget v0, Lcom/xiaopeng/util/FeatureOption;->FO_MEDIA_LAUNCHER_POLICY:I

    sput v0, Lcom/xiaopeng/xuiservice/mediacenter/Config;->MediaLaunchPolicy:I

    .line 20
    const-string v0, "persist.sys.load.media.lyric"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/mediacenter/Config;->Load_Media_Lyric:Z

    .line 21
    const-string v0, "persist.sys.media.fft.size"

    const/16 v3, 0x14

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/xuiservice/mediacenter/Config;->Fft_Print_Size:I

    .line 22
    const-string v0, "persist.sys.media.seize.dialog"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/mediacenter/Config;->Show_Seize_Dialog:Z

    .line 23
    const-string v0, "persist.sys.xp.music.session"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/mediacenter/Config;->XP_Music_Session_Control:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

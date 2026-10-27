.class public Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;
.super Ljava/lang/Object;
.source "OtaVideoPlayer.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;
    }
.end annotation


# static fields
.field private static final PATH:Ljava/lang/String; = "/data/xuiservice/ota/media/upgraded.mp4"

.field private static final TAG:Ljava/lang/String; = "OtaVideoPlayer"


# instance fields
.field private final mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mLayout:Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation
.end field

.field private final mPlayer:Landroid/media/MediaPlayer;

.field private final mScreenTaskListener:Lcom/xiaopeng/screen/ScreenTaskListener;

.field private final mScreenTaskManager:Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

.field private mStatus:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;

.field private final mUserScenarioListener:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$UserScenarioListener;

.field private mUserScenarioManager:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;

.field private final mWindowManager:Landroid/view/WindowManager;

.field private final processor:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;

.field private shouldPlay:Z


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;)V
    .locals 3
    .param p1, "processor"    # Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->shouldPlay:Z

    .line 48
    nop

    .line 49
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 50
    const v1, 0x7f0c0035

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mLayout:Landroid/view/View;

    .line 51
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "window"

    .line 52
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mWindowManager:Landroid/view/WindowManager;

    .line 53
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "audio"

    .line 54
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 55
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;->STOPPED:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mStatus:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;

    .line 61
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$Vwxj-VDMUKShHNbvAAR0CRcg3Dc;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$Vwxj-VDMUKShHNbvAAR0CRcg3Dc;-><init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 78
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mScreenTaskManager:Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    .line 79
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$1;-><init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mScreenTaskListener:Lcom/xiaopeng/screen/ScreenTaskListener;

    .line 98
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$euputK6QDylyy0s4_q4eLOsp94U;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$euputK6QDylyy0s4_q4eLOsp94U;-><init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mUserScenarioListener:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$UserScenarioListener;

    .line 269
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->processor:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;

    .line 270
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$8P4xVuUZb7Dpt7vEcYU2-Wi_Ol0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$8P4xVuUZb7Dpt7vEcYU2-Wi_Ol0;-><init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 271
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;)Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->processor:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;

    return-object v0
.end method

.method private checkAndPlay(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 156
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->shouldPlay:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mStatus:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;->PREPARED:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 157
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->isUserScenarioAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 158
    const-string v0, "OtaVideoPlayer"

    const-string v1, "play failed, could not enter user scenario"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;->STOPPED:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mStatus:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;

    .line 161
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mLayout:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->processor:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->processor:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;->afterProcess()V

    .line 166
    :cond_1
    return-void

    .line 169
    :cond_2
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;->PLAYING:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mStatus:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mUserScenarioManager:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mUserScenarioListener:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$UserScenarioListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->registerListener(Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$UserScenarioListener;)V

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mScreenTaskManager:Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mScreenTaskListener:Lcom/xiaopeng/screen/ScreenTaskListener;

    .line 172
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 171
    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->registerTaskListener(Lcom/xiaopeng/screen/IScreenTaskListener;Ljava/util/List;)V

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-nez v0, :cond_3

    .line 177
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 180
    :cond_3
    const-string v0, "OtaVideoPlayer"

    const-string v1, "checkAndPlay, start play"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OtaVideoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v1, "start media play failed"

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->finishedMediaPlay(Landroid/media/MediaPlayer;Ljava/lang/String;)V

    .line 188
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 156
    :cond_4
    :goto_1
    return-void
.end method

.method private checkBootVideoFile()Z
    .locals 6

    .line 106
    const-string v0, "/data/xuiservice/ota/media/upgraded.mp4"

    const-string v1, "\\.[^.]+$"

    const-string v2, ".hash"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "summaryPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/xuiservice/ota/media/upgraded.mp4"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/utils/DigestUtils;->getSha256Hash(Ljava/io/File;)[B

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->bytesToHexString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "hashCode":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/String;

    invoke-static {v0, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    invoke-static {v4}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 112
    .end local v2    # "hashCode":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 113
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "OtaVideoPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkBootVideoFile failed, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return v1

    .line 118
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/xuiservice/ota/media/upgraded.mp4"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private finishedMediaPlay(Landroid/media/MediaPlayer;Ljava/lang/String;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "reason"    # Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mStatus:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;->STOPPED:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 124
    :cond_0
    const-string v0, "OtaVideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", finishedMediaPlay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;->STOPPED:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mStatus:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mUserScenarioManager:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mUserScenarioManager:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mUserScenarioListener:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$UserScenarioListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->unregisterListener(Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$UserScenarioListener;)V

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mUserScenarioManager:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;

    const-string v1, "boot_video_mode"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->exitUserScenario(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mScreenTaskManager:Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mScreenTaskListener:Lcom/xiaopeng/screen/ScreenTaskListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->unregisterTaskListener(Lcom/xiaopeng/screen/IScreenTaskListener;)V

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 133
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mLayout:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 135
    const-string v0, "persist.sys.xiaopeng.ota_play_media"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->processor:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->processor:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;->afterProcess()V

    .line 139
    :cond_2
    return-void
.end method

.method private isUserScenarioAvailable()Z
    .locals 4

    .line 143
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuimanager/XUIManager;->getInstance()Lcom/xiaopeng/xuimanager/XUIManager;

    move-result-object v0

    const-string v1, "userscenario"

    .line 144
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/XUIManager;->getXUIServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mUserScenarioManager:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OtaVideoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getXUIServiceManager failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mUserScenarioManager:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mUserScenarioManager:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;

    const-string v1, "boot_video_mode"

    const-string v2, "activity"

    .line 150
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->enterUserScenario(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "success"

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 149
    :goto_1
    return v0
.end method

.method public static synthetic lambda$8P4xVuUZb7Dpt7vEcYU2-Wi_Ol0(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->prepareMediaPlay()V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;I)V
    .locals 3
    .param p1, "onChange"    # I

    .line 63
    const-string v0, "OtaVideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusChangeListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 69
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 70
    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 75
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$new$1(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;I)V
    .locals 2
    .param p1, "onChange"    # I

    .line 62
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$XIk3bjEI40yiX9faEOpUUcXzRds;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$XIk3bjEI40yiX9faEOpUUcXzRds;-><init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 76
    return-void
.end method

.method public static synthetic lambda$new$2(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;Ljava/lang/String;I)V
    .locals 2
    .param p1, "scenario"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 99
    const-string v0, "boot_video_mode"

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 100
    const-string v0, "OtaVideoPlayer"

    const-string v1, "UserScenarioListener, stop media play"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->stop()V

    .line 103
    :cond_0
    return-void
.end method

.method public static synthetic lambda$play$11(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;)V
    .locals 2

    .line 276
    const-string v0, "OtaVideoPlayer"

    const-string v1, "play"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->shouldPlay:Z

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->checkAndPlay(Landroid/media/MediaPlayer;)V

    .line 279
    return-void
.end method

.method public static synthetic lambda$prepareMediaPlay$10(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 216
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$rcPN91cLN141pKg4Q7ZGWnG_jQs;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$rcPN91cLN141pKg4Q7ZGWnG_jQs;-><init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;Landroid/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic lambda$prepareMediaPlay$3(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;Landroid/media/MediaPlayer;II)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "media play error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->finishedMediaPlay(Landroid/media/MediaPlayer;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$prepareMediaPlay$4(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .line 207
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$-f_9XuWVwF1FXQDYFoZztqKUI7k;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$-f_9XuWVwF1FXQDYFoZztqKUI7k;-><init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;Landroid/media/MediaPlayer;II)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$prepareMediaPlay$5(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 213
    const-string v0, "media play completed"

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->finishedMediaPlay(Landroid/media/MediaPlayer;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$prepareMediaPlay$6(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 212
    const-string v0, "OtaVideoPlayer"

    const-string v1, "onCompletionListener, finishedMediaPlay"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$wupfOsBk2-W1bwhPWgzSU8YwEAg;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$wupfOsBk2-W1bwhPWgzSU8YwEAg;-><init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;Landroid/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 214
    return-void
.end method

.method public static synthetic lambda$prepareMediaPlay$7(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 220
    const-string v0, "click exit button"

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->finishedMediaPlay(Landroid/media/MediaPlayer;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$prepareMediaPlay$8(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;Landroid/media/MediaPlayer;Landroid/view/View;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "v"    # Landroid/view/View;

    .line 220
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$sF4C4ygpAN9YDaBDl_rG3dgao_w;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$sF4C4ygpAN9YDaBDl_rG3dgao_w;-><init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;Landroid/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic lambda$prepareMediaPlay$9(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 217
    const-string v0, "OtaVideoPlayer"

    const-string v1, "onPreparedListener, checkAndPlay"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mLayout:Landroid/view/View;

    const v1, 0x7f09004b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 220
    .local v0, "button":Landroid/widget/ImageButton;
    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$DISRgmppwOsrSV7PRj-8gLeqiHc;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$DISRgmppwOsrSV7PRj-8gLeqiHc;-><init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;Landroid/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 222
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;->PREPARED:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mStatus:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;

    .line 223
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->checkAndPlay(Landroid/media/MediaPlayer;)V

    .line 224
    return-void
.end method

.method public static synthetic lambda$release$13(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;)V
    .locals 3

    .line 295
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mStatus:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;->STOPPED:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;

    if-ne v0, v1, :cond_0

    return-void

    .line 297
    :cond_0
    const-string v0, "OtaVideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release, mStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mStatus:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mStatus:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;->PLAYING:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;

    if-ne v0, v1, :cond_2

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mUserScenarioManager:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mUserScenarioManager:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mUserScenarioListener:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$UserScenarioListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->unregisterListener(Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager$UserScenarioListener;)V

    .line 301
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mUserScenarioManager:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;

    const-string v1, "boot_video_mode"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;->exitUserScenario(Ljava/lang/String;)Ljava/lang/String;

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mScreenTaskManager:Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mScreenTaskListener:Lcom/xiaopeng/screen/ScreenTaskListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->unregisterTaskListener(Lcom/xiaopeng/screen/IScreenTaskListener;)V

    .line 304
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 307
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mLayout:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 308
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;->STOPPED:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mStatus:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;

    .line 309
    return-void
.end method

.method public static synthetic lambda$stop$12(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;)V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mStatus:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;->PLAYING:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;

    if-ne v0, v1, :cond_0

    .line 286
    const-string v0, "OtaVideoPlayer"

    const-string v1, "stop"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    const-string v1, "stop by user"

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->finishedMediaPlay(Landroid/media/MediaPlayer;Ljava/lang/String;)V

    .line 289
    :cond_0
    return-void
.end method

.method private prepareMediaPlay()V
    .locals 6

    .line 191
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->checkBootVideoFile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    const-string v0, "OtaVideoPlayer"

    const-string v1, "check ota file failed"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->processor:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->processor:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;->afterProcess()V

    .line 196
    :cond_0
    return-void

    .line 199
    :cond_1
    const-string v0, "OtaVideoPlayer"

    const-string v1, "prepareMediaPlay"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x1

    .line 202
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x2

    .line 203
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 204
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 201
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$vMI9rPyB03WMJ1HyWzcx9UCMrPo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$vMI9rPyB03WMJ1HyWzcx9UCMrPo;-><init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$4l6xqATC-b8Earh0lpNCNW5dn74;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$4l6xqATC-b8Earh0lpNCNW5dn74;-><init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$D4jpf9KJfkUsrxJqXTLPQs-Avvw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$D4jpf9KJfkUsrxJqXTLPQs-Avvw;-><init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mLayout:Landroid/view/View;

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x845

    const/16 v4, 0x408

    const/4 v5, -0x1

    invoke-direct {v2, v3, v4, v5}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->mLayout:Landroid/view/View;

    const v1, 0x7f090126

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 233
    .local v0, "surfaceView":Landroid/view/SurfaceView;
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$2;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$2;-><init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;)V

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 266
    return-void
.end method


# virtual methods
.method public play()V
    .locals 2

    .line 275
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$TYWG_ahlNV-r_8FQajc9j-C0WN8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$TYWG_ahlNV-r_8FQajc9j-C0WN8;-><init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 280
    return-void
.end method

.method public release()V
    .locals 2

    .line 294
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$CQjb01x45RyBF1a47NKU_sLZp1o;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$CQjb01x45RyBF1a47NKU_sLZp1o;-><init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 310
    return-void
.end method

.method public stop()V
    .locals 2

    .line 284
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$zKCbqi9Q6ioxKNEU8Ey_-YQHFMk;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$zKCbqi9Q6ioxKNEU8Ey_-YQHFMk;-><init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 290
    return-void
.end method

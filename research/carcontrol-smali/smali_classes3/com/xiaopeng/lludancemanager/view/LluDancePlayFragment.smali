.class public Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;
.super Lcom/xiaopeng/lludancemanager/view/LluBaseFragment;
.source "LluDancePlayFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final START_PLAY_DANCE_COUNT_DOWN_INTERVAL:I = 0x3e8

.field private static final START_PLAY_DANCE_COUNT_DOWN_IN_FEATURE:I = 0x3a98

.field private static final TAG:Ljava/lang/String; = "LluDancePlayFragment"


# instance fields
.field private isInterruptByUser:Z

.field private isSupportLluVideo:Z

.field private isVideoPrepared:Z

.field private mAudioConfig:Landroid/media/AudioConfig/AudioConfig;

.field private mCountDownControlContainer:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private mCountDownSecond:Lcom/xiaopeng/xui/widget/XTextView;

.field private mDanceMusicAuthor:Lcom/xiaopeng/xui/widget/XTextView;

.field private mDanceMusicIcon:Lcom/xiaopeng/xui/widget/XImageView;

.field private mDanceMusicTitle:Lcom/xiaopeng/xui/widget/XTextView;

.field private mDancePlayFallback:Lcom/xiaopeng/xui/widget/XImageView;

.field private mDanceStartObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDanceStop:Lcom/xiaopeng/xui/widget/XButton;

.field private mDanceStopPlay:Lcom/xiaopeng/xui/widget/XButton;

.field private mDanceVideoView:Landroid/widget/VideoView;

.field private mOrderPlay:Z

.field private mPlayingDanceViewData:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

.field private mStartPlayCountDownTimer:Landroid/os/CountDownTimer;

.field private mStopCountDownContainerInCountDown:Lcom/xiaopeng/xui/widget/XLinearLayout;

.field private mTTSSpeakId:Ljava/lang/String;

.field private mTipsText:Lcom/xiaopeng/xui/widget/XTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mAudioConfig:Landroid/media/AudioConfig/AudioConfig;

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mOrderPlay:Z

    .line 59
    iput-boolean v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->isInterruptByUser:Z

    const-string v0, "isSupportLluVideo"

    .line 61
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->isSupportLluVideo:Z

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;)Lcom/xiaopeng/xui/widget/XTextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mCountDownSecond:Lcom/xiaopeng/xui/widget/XTextView;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->executeDancePlay()V

    return-void
.end method

.method private breakDanceTTS()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mTTSSpeakId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mTTSSpeakId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->stop(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private disableVoiceAssistant()V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->disableWakeup()V

    .line 289
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getSpeechState()Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->isDMStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->TAG:Ljava/lang/String;

    const-string v1, "Karl log now speech active , break it"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->stopDialog()V

    :cond_0
    return-void
.end method

.method private enableVoiceAssistant()V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->enableWakeup()V

    return-void
.end method

.method private executeDancePlay()V
    .locals 4

    .line 246
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Karl log open time optimize start play dance id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mPlayingDanceViewData:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    invoke-virtual {v2}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " count down timer finished\uff0cis Interrupt by user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->isInterruptByUser:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-boolean v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->isInterruptByUser:Z

    if-eqz v1, :cond_0

    return-void

    .line 250
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lludancemanager/LluDanceHelper;->checkLightDanceAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 251
    iget-boolean v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->isSupportLluVideo:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_1

    .line 252
    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mTipsText:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_0

    .line 254
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mTipsText:Lcom/xiaopeng/xui/widget/XTextView;

    sget v3, Lcom/xiaopeng/lludancemanager/R$string;->llu_dance_showing_prompt:I

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 256
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mCountDownSecond:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 257
    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    iget-object v2, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mPlayingDanceViewData:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->startPlay(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)I

    move-result v1

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Karl log open time optimize start play result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    .line 260
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->exitPlayFragment()V

    goto :goto_1

    .line 264
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->exitPlayFragment()V

    :cond_3
    :goto_1
    return-void
.end method

.method private exitPlayFragment()V
    .locals 1

    .line 283
    invoke-virtual {p0}, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    return-void
.end method

.method private fillDanceData()V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mPlayingDanceViewData:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    if-eqz v0, :cond_0

    .line 274
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mPlayingDanceViewData:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    invoke-virtual {v1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getImageThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mDanceMusicIcon:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mPlayingDanceViewData:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getVideoPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->prepareVideo(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mDanceMusicTitle:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mPlayingDanceViewData:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    invoke-virtual {v1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mDanceMusicAuthor:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mPlayingDanceViewData:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    invoke-virtual {v1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    sget-object v0, Lcom/xiaopeng/track/constant/BID;->llu_filldata:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {v0}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private playDanceTTS()V
    .locals 2

    .line 208
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/lludancemanager/R$string;->llu_dance_ready_to_show_prompt:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mTTSSpeakId:Ljava/lang/String;

    return-void
.end method

.method private playVideo()Z
    .locals 3

    .line 322
    iget-boolean v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->isSupportLluVideo:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 323
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->TAG:Ljava/lang/String;

    const-string v2, "Not support llu video in playVideo"

    invoke-static {v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 326
    :cond_0
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->TAG:Ljava/lang/String;

    const-string v2, "start to play video."

    invoke-static {v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-boolean v2, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->isVideoPrepared:Z

    if-eqz v2, :cond_2

    .line 328
    iget-object v2, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mDanceVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 329
    iget-object v2, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mDanceVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2, v1}, Landroid/widget/VideoView;->seekTo(I)V

    const-string v1, "seek to start."

    .line 330
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mDanceVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    goto :goto_0

    .line 334
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mDanceVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    const-string v1, "no prepared, video will play later by VideoView targetState!"

    .line 335
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :goto_0
    iget-boolean v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->isVideoPrepared:Z

    return v0
.end method

.method private prepareForCountDown()V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mTipsText:Lcom/xiaopeng/xui/widget/XTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mTipsText:Lcom/xiaopeng/xui/widget/XTextView;

    sget v1, Lcom/xiaopeng/lludancemanager/R$string;->llu_dance_ready_to_show_prompt:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    return-void
.end method

.method private prepareVideo(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoPath"
        }
    .end annotation

    .line 300
    iget-boolean v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->isSupportLluVideo:Z

    if-nez v0, :cond_0

    .line 301
    sget-object p1, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->TAG:Ljava/lang/String;

    const-string v0, "Not support llu video in prepareVideo"

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 304
    :cond_0
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare video path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mDanceVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/xiaopeng/lludancemanager/view/-$$Lambda$LluDancePlayFragment$tvIvufY-JUNtRVAXPPsE4LlJggw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lludancemanager/view/-$$Lambda$LluDancePlayFragment$tvIvufY-JUNtRVAXPPsE4LlJggw;-><init>(Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 308
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mDanceVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/xiaopeng/lludancemanager/view/-$$Lambda$LluDancePlayFragment$7oMOrjljHqpgInyi9mFeFCKpwlE;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lludancemanager/view/-$$Lambda$LluDancePlayFragment$7oMOrjljHqpgInyi9mFeFCKpwlE;-><init>(Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    if-eqz p1, :cond_1

    .line 316
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mDanceVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private resumeVideo()V
    .locals 2

    .line 354
    iget-boolean v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->isSupportLluVideo:Z

    if-nez v0, :cond_0

    .line 355
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->TAG:Ljava/lang/String;

    const-string v1, "Not support llu video in resumeVideo"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 358
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->isVideoPrepared:Z

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mDanceVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->resume()V

    goto :goto_0

    .line 361
    :cond_1
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->TAG:Ljava/lang/String;

    const-string v1, "no prepared,no resume"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private startCountDown()V
    .locals 7

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mStartPlayCountDownTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment$1;

    const-wide/16 v3, 0x3a98

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment$1;-><init>(Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;JJ)V

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mStartPlayCountDownTimer:Landroid/os/CountDownTimer;

    .line 241
    :cond_0
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->TAG:Ljava/lang/String;

    const-string v1, "Karl log open time optimize start play mStartPlayCountDownTimer"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mStartPlayCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private stopCountDown()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mStartPlayCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 220
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->TAG:Ljava/lang/String;

    const-string v1, "mStartPlayCountDownTimer cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mStartPlayCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method private suspendVideo()V
    .locals 2

    .line 341
    iget-boolean v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->isSupportLluVideo:Z

    if-nez v0, :cond_0

    .line 342
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->TAG:Ljava/lang/String;

    const-string v1, "Not support llu video in suspendVideo"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 345
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->isVideoPrepared:Z

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mDanceVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->suspend()V

    goto :goto_0

    .line 348
    :cond_1
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->TAG:Ljava/lang/String;

    const-string v1, "no prepared,no suspend"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private unRegisterLiveDataObserver()V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->getLluDanceStartPlayData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mDanceStartObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->removeLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method protected getRootLayoutId()I
    .locals 1

    .line 102
    sget v0, Lcom/xiaopeng/lludancemanager/R$layout;->fragment_llu_dance_play_layout_root:I

    return v0
.end method

.method protected initViewModel()V
    .locals 2

    .line 88
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lludancemanager/viewmodel/ILluDanceViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->getLluDanceStartPlayData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mDanceStartObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected initViewModelObserver()V
    .locals 1

    .line 73
    new-instance v0, Lcom/xiaopeng/lludancemanager/view/-$$Lambda$LluDancePlayFragment$oXOIByug11rk8sizxMkwgdyr16M;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lludancemanager/view/-$$Lambda$LluDancePlayFragment$oXOIByug11rk8sizxMkwgdyr16M;-><init>(Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mDanceStartObserver:Landroidx/lifecycle/Observer;

    return-void
.end method

.method public synthetic lambda$initViewModelObserver$0$LluDancePlayFragment(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "danceStartPlay"
        }
    .end annotation

    .line 74
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 75
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->preliminaryWork()V

    .line 76
    iget-boolean p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->isSupportLluVideo:Z

    if-eqz p1, :cond_2

    .line 77
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mCountDownControlContainer:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVisibility(I)V

    .line 78
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->playVideo()Z

    move-result p1

    .line 79
    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mDancePlayFallback:Lcom/xiaopeng/xui/widget/XImageView;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    goto :goto_1

    .line 82
    :cond_1
    sget-object p1, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->TAG:Ljava/lang/String;

    const-string v0, "llu dance playing is broken in framework, reset ui to dance list item page"

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public synthetic lambda$onViewCreated$1$LluDancePlayFragment()V
    .locals 0

    .line 130
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->executeDancePlay()V

    return-void
.end method

.method public synthetic lambda$prepareVideo$2$LluDancePlayFragment(Landroid/media/MediaPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mp"
        }
    .end annotation

    const/4 p1, 0x1

    .line 306
    iput-boolean p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->isVideoPrepared:Z

    return-void
.end method

.method public synthetic lambda$prepareVideo$3$LluDancePlayFragment(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "mp",
            "what",
            "extra"
        }
    .end annotation

    .line 309
    sget-object p1, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video error... Error info: what - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "     extra - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mDanceVideoView:Landroid/widget/VideoView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 311
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mDanceVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->stopPlayback()V

    const/4 p1, 0x0

    .line 312
    iput-boolean p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->isVideoPrepared:Z

    const/4 p1, 0x1

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 179
    sget v0, Lcom/xiaopeng/lludancemanager/R$id;->llu_activity_dance_video_stop_play:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 181
    iput-boolean p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->isInterruptByUser:Z

    .line 182
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->stopPlayLlu()V

    .line 183
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->exitPlayFragment()V

    goto :goto_0

    .line 184
    :cond_0
    sget v0, Lcom/xiaopeng/lludancemanager/R$id;->llu_play_fragment_dance_video_stop_count_down:I

    if-ne p1, v0, :cond_1

    .line 186
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->stopCountDown()V

    .line 187
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->exitPlayFragment()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 94
    invoke-super {p0, p1}, Lcom/xiaopeng/lludancemanager/view/LluBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    sget-object p1, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->TAG:Ljava/lang/String;

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance p1, Landroid/media/AudioConfig/AudioConfig;

    invoke-virtual {p0}, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/media/AudioConfig/AudioConfig;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mAudioConfig:Landroid/media/AudioConfig/AudioConfig;

    const/4 p1, 0x0

    .line 97
    iput-boolean p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->isInterruptByUser:Z

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 171
    invoke-super {p0}, Lcom/xiaopeng/lludancemanager/view/LluBaseFragment;->onDestroy()V

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mDanceVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 173
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 146
    invoke-super {p0}, Lcom/xiaopeng/lludancemanager/view/LluBaseFragment;->onDestroyView()V

    .line 147
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->unRegisterLiveDataObserver()V

    return-void
.end method

.method public onPause()V
    .locals 4

    .line 153
    invoke-super {p0}, Lcom/xiaopeng/lludancemanager/view/LluBaseFragment;->onPause()V

    .line 154
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->suspendVideo()V

    .line 155
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mAudioConfig:Landroid/media/AudioConfig/AudioConfig;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioConfig/AudioConfig;->setBanVolumeChangeMode(II)V

    const-string v1, "onPause mAudioConfig.setBanVolumeChangeMode(AudioManager.STREAM_MUSIC, AudioConfig.BAN_VOLCONTROL_MODE_NO_ACTIVE);"

    .line 157
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->breakDanceTTS()V

    .line 159
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->stopCountDown()V

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->stopPlayLlu()V

    .line 161
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->enableVoiceAssistant()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 136
    invoke-super {p0}, Lcom/xiaopeng/lludancemanager/view/LluBaseFragment;->onResume()V

    .line 137
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mAudioConfig:Landroid/media/AudioConfig/AudioConfig;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioConfig/AudioConfig;->setBanVolumeChangeMode(II)V

    const-string v1, "onResume mAudioConfig.setBanVolumeChangeMode(AudioManager.STREAM_MUSIC, AudioConfig.BAN_VOLCONTROL_MODE_LEVEL_1)"

    .line 139
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->resumeVideo()V

    .line 141
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->disableVoiceAssistant()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "savedInstanceState"
        }
    .end annotation

    .line 107
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/lludancemanager/view/LluBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 108
    sget-object p2, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->TAG:Ljava/lang/String;

    const-string v0, "onViewCreated"

    invoke-static {p2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sget p2, Lcom/xiaopeng/lludancemanager/R$id;->llu_activity_dance_video:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/VideoView;

    iput-object p2, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mDanceVideoView:Landroid/widget/VideoView;

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p2, v0}, Landroid/widget/VideoView;->setAudioFocusRequest(I)V

    .line 111
    sget p2, Lcom/xiaopeng/lludancemanager/R$id;->llu_activity_dance_music_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object p2, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mDanceMusicIcon:Lcom/xiaopeng/xui/widget/XImageView;

    .line 112
    sget p2, Lcom/xiaopeng/lludancemanager/R$id;->llu_activity_dance_music_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p2, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mDanceMusicTitle:Lcom/xiaopeng/xui/widget/XTextView;

    .line 113
    sget p2, Lcom/xiaopeng/lludancemanager/R$id;->llu_activity_dance_music_author:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p2, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mDanceMusicAuthor:Lcom/xiaopeng/xui/widget/XTextView;

    .line 114
    sget p2, Lcom/xiaopeng/lludancemanager/R$id;->llu_activity_dance_video_stop_play:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XButton;

    iput-object p2, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mDanceStopPlay:Lcom/xiaopeng/xui/widget/XButton;

    .line 115
    invoke-virtual {p2, p0}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    sget p2, Lcom/xiaopeng/lludancemanager/R$id;->llu_dance_fragment_count_down_control_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object p2, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mCountDownControlContainer:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 118
    sget p2, Lcom/xiaopeng/lludancemanager/R$id;->llu_activity_video_fail_fallback:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object p2, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mDancePlayFallback:Lcom/xiaopeng/xui/widget/XImageView;

    .line 119
    sget p2, Lcom/xiaopeng/lludancemanager/R$id;->llu_play_fragment_dance_video_stop_count_down:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XButton;

    iput-object p2, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mDanceStop:Lcom/xiaopeng/xui/widget/XButton;

    .line 120
    invoke-virtual {p2, p0}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    sget p2, Lcom/xiaopeng/lludancemanager/R$id;->llu_dance_play_fragment_count_down:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p2, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mCountDownSecond:Lcom/xiaopeng/xui/widget/XTextView;

    .line 122
    sget p2, Lcom/xiaopeng/lludancemanager/R$id;->llu_dance_play_fragment_count_down_tips:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p2, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mTipsText:Lcom/xiaopeng/xui/widget/XTextView;

    .line 124
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->fillDanceData()V

    .line 125
    iget-boolean p2, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mOrderPlay:Z

    if-nez p2, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->startCountDown()V

    .line 127
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->prepareForCountDown()V

    .line 128
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->playDanceTTS()V

    goto :goto_0

    .line 130
    :cond_0
    new-instance p2, Lcom/xiaopeng/lludancemanager/view/-$$Lambda$LluDancePlayFragment$55M8JE9j1HT1bHa7tMMBXMBqP6I;

    invoke-direct {p2, p0}, Lcom/xiaopeng/lludancemanager/view/-$$Lambda$LluDancePlayFragment$55M8JE9j1HT1bHa7tMMBXMBqP6I;-><init>(Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public setOrderPlay(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orderPlay"
        }
    .end annotation

    .line 68
    iput-boolean p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mOrderPlay:Z

    return-void
.end method

.method public setPlayingDanceViewData(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playingDanceViewData"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mPlayingDanceViewData:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    return-void
.end method

.method public stopDanceByMeditationMode()V
    .locals 3

    .line 192
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->TAG:Ljava/lang/String;

    const-string v1, "stop llu play by meditation."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 193
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->stopCountDown()V

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->mDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->stopPlayLlu()V

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->exitPlayFragment()V

    :cond_1
    return-void
.end method

.method protected supportVui()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

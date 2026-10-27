.class public Lcom/xiaopeng/xuiservice/xapp/speech/XAppSpeechService;
.super Ljava/lang/Object;
.source "XAppSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/xapp/speech/XAppSpeechService$InstanceHolder;
    }
.end annotation


# instance fields
.field private mAppAndAppletQueryModel:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechAppQueryModel;

.field private mMediaQueryModel:Lcom/xiaopeng/xuiservice/xapp/speech/MediaQueryModel;

.field private mSpeechMediaModel:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;

.field private mSpeechVideoModel:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechAppQueryModel;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechAppQueryModel;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/XAppSpeechService;->mAppAndAppletQueryModel:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechAppQueryModel;

    .line 11
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/XAppSpeechService;->mSpeechVideoModel:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;

    .line 12
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/XAppSpeechService;->mSpeechMediaModel:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;

    .line 13
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/speech/MediaQueryModel;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/xapp/speech/MediaQueryModel;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/XAppSpeechService;->mMediaQueryModel:Lcom/xiaopeng/xuiservice/xapp/speech/MediaQueryModel;

    .line 14
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/xapp/speech/XAppSpeechService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/xapp/speech/XAppSpeechService$1;

    .line 3
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/speech/XAppSpeechService;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/xapp/speech/XAppSpeechService;
    .locals 1

    .line 24
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/speech/XAppSpeechService$InstanceHolder;->access$000()Lcom/xiaopeng/xuiservice/xapp/speech/XAppSpeechService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/XAppSpeechService;->mAppAndAppletQueryModel:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechAppQueryModel;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechAppQueryModel;->subscribe()V

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/XAppSpeechService;->mSpeechVideoModel:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;->subscribe()V

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/XAppSpeechService;->mSpeechMediaModel:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->subscribe()V

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/XAppSpeechService;->mMediaQueryModel:Lcom/xiaopeng/xuiservice/xapp/speech/MediaQueryModel;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/speech/MediaQueryModel;->subscribe()V

    .line 21
    return-void
.end method

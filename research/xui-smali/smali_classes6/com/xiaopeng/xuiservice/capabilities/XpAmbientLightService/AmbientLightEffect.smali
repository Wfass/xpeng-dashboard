.class public Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;
.super Ljava/lang/Object;
.source "AmbientLightEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$BrightPara;,
        Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$SpeechPara;,
        Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$GroupNum;,
        Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$AmbilentPara;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final DEFAULT_DOUBLE_1ST_COLOR:I = 0x1

.field public static final DEFAULT_DOUBLE_2ND_COLOR:I = 0x6

.field public static final DEFAULT_MONO_COLOR:I = 0xe

.field private static final DEFAULT_MUSIC_LIGHT_GROUP:I = 0x3

.field public static final LIGHT_COLOR_1:I = 0x1

.field public static final LIGHT_COLOR_10:I = 0xa

.field public static final LIGHT_COLOR_11:I = 0xb

.field public static final LIGHT_COLOR_12:I = 0xc

.field public static final LIGHT_COLOR_13:I = 0xd

.field public static final LIGHT_COLOR_14:I = 0xe

.field public static final LIGHT_COLOR_15:I = 0xf

.field public static final LIGHT_COLOR_16:I = 0x10

.field public static final LIGHT_COLOR_17:I = 0x11

.field public static final LIGHT_COLOR_18:I = 0x12

.field public static final LIGHT_COLOR_19:I = 0x13

.field public static final LIGHT_COLOR_2:I = 0x2

.field public static final LIGHT_COLOR_20:I = 0x14

.field public static final LIGHT_COLOR_3:I = 0x3

.field public static final LIGHT_COLOR_4:I = 0x4

.field public static final LIGHT_COLOR_5:I = 0x5

.field public static final LIGHT_COLOR_6:I = 0x6

.field public static final LIGHT_COLOR_7:I = 0x7

.field public static final LIGHT_COLOR_8:I = 0x8

.field public static final LIGHT_COLOR_9:I = 0x9

.field private static final TAG:Ljava/lang/String; = "AmbientLightEffect"


# instance fields
.field private defaultFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final defaultOrMusicGroupNum:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$GroupNum;

.field private lastAtlLogTime:J

.field private final mAmbilentParaList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$AmbilentPara;",
            ">;"
        }
    .end annotation
.end field

.field private final mBrightPara:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$BrightPara;

.field private mCarAtlManagerAgent:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;

.field private mLightEffectManager:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;

.field private final mSpeechPara:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$SpeechPara;

.field private speechEnable:Z

.field private speechFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private speechGroupNum:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->lastAtlLogTime:J

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->speechEnable:Z

    .line 64
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->getCarAtlManagerAgent()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;

    .line 65
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->getLightEffectManager()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;

    .line 66
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$GroupNum;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$GroupNum;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$1;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->defaultOrMusicGroupNum:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$GroupNum;

    .line 67
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$SpeechPara;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$SpeechPara;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$1;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->mSpeechPara:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$SpeechPara;

    .line 68
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$BrightPara;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$BrightPara;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$1;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->mBrightPara:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$BrightPara;

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->defaultOrMusicGroupNum:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$GroupNum;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$GroupNum;->setGroupNum(I)V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->mAmbilentParaList:Ljava/util/ArrayList;

    .line 71
    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$GroupNum;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->defaultOrMusicGroupNum:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$GroupNum;

    return-object v0
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->mAmbilentParaList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$BrightPara;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->mBrightPara:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$BrightPara;

    return-object v0
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$SpeechPara;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->mSpeechPara:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$SpeechPara;

    return-object v0
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;

    .line 17
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->speechEnable:Z

    return v0
.end method

.method static synthetic access$900(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->printDebugLog(Ljava/lang/String;II)V

    return-void
.end method

.method private getCarAtlManagerAgent()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;
    .locals 2

    .line 370
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->mCarAtlManagerAgent:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;

    if-nez v0, :cond_0

    .line 371
    const-string v0, "AmbientLightEffect"

    const-string v1, "getCarAtlManagerAgent()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->getInstance()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->mCarAtlManagerAgent:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;

    .line 374
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->mCarAtlManagerAgent:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->init()V

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->mCarAtlManagerAgent:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;

    return-object v0
.end method

.method private getLightEffectManager()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->mLightEffectManager:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;

    if-nez v0, :cond_0

    .line 384
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;->getInstance()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->mLightEffectManager:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->mLightEffectManager:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;

    return-object v0
.end method

.method private printAtlLog(IBBB)V
    .locals 6
    .param p1, "groupNum"    # I
    .param p2, "color"    # B
    .param p3, "bright"    # B
    .param p4, "fade"    # B

    .line 393
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 394
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->lastAtlLogTime:J

    sub-long v2, v0, v2

    sget v4, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->xuiLogInterval:I

    mul-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 395
    const-string v2, "AmbientLightEffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "printAtlLog groupNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", color:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", bright:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", fade:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->lastAtlLogTime:J

    .line 398
    :cond_0
    return-void
.end method

.method private printDebugLog(Ljava/lang/String;II)V
    .locals 6
    .param p1, "func"    # Ljava/lang/String;
    .param p2, "flag1"    # I
    .param p3, "flag2"    # I

    .line 401
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 402
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->lastAtlLogTime:J

    sub-long v2, v0, v2

    sget v4, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->xuiLogInterval:I

    mul-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 403
    const-string v2, "AmbientLightEffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "printDebugLog func:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->lastAtlLogTime:J

    .line 406
    :cond_0
    return-void
.end method

.method private startAmbientLightEffect(J)V
    .locals 12
    .param p1, "delaytime"    # J

    .line 207
    const-wide/16 v0, 0x0

    .line 208
    .local v0, "period_time":J
    const/4 v2, 0x0

    move-wide v9, v0

    move v0, v2

    .local v0, "i":I
    .local v9, "period_time":J
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->mAmbilentParaList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->mAmbilentParaList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$AmbilentPara;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$AmbilentPara;->getFade()I

    move-result v1

    int-to-long v3, v1

    add-long/2addr v9, v3

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    .end local v0    # "i":I
    :cond_0
    move-wide v0, p1

    .line 212
    .local v0, "delay_time":J
    nop

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->mAmbilentParaList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 213
    const-string v3, "AmbientLightEffect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "started timerTask mAmbilentParaList.size():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->mAmbilentParaList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    move v11, v2

    .line 216
    .local v11, "num":I
    new-instance v3, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$1;

    invoke-direct {v3, p0, v11}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$1;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;I)V

    .line 223
    .local v3, "timerTask":Ljava/lang/Runnable;
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v4, v0

    move-wide v6, v9

    invoke-static/range {v3 .. v8}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->defaultFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 224
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->mAmbilentParaList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$AmbilentPara;

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$AmbilentPara;->getFade()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 212
    .end local v3    # "timerTask":Ljava/lang/Runnable;
    .end local v11    # "num":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 226
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private startSpeechEffect([I[B[B[I)V
    .locals 22
    .param p1, "groupNum"    # [I
    .param p2, "color"    # [B
    .param p3, "bright"    # [B
    .param p4, "fade"    # [I

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    .line 257
    move-object/from16 v8, p4

    const-wide/16 v0, 0x0

    .line 258
    .local v0, "period_time":J
    const-wide/16 v2, 0x0

    .line 259
    .local v2, "delay_time":J
    const-string v4, "AmbientLightEffect"

    const-string v5, "startSpeechEffect()"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    move-object/from16 v9, p1

    iput-object v9, v6, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->speechGroupNum:[I

    .line 262
    const/4 v4, 0x0

    move-wide/from16 v16, v0

    move v0, v4

    .local v0, "i":I
    .local v16, "period_time":J
    :goto_0
    array-length v1, v8

    if-ge v0, v1, :cond_0

    .line 263
    aget v1, v8, v0

    int-to-long v10, v1

    add-long v16, v16, v10

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->speechEnable:Z

    .line 266
    move-wide/from16 v18, v2

    .end local v2    # "delay_time":J
    .local v4, "i":I
    .local v18, "delay_time":J
    :goto_1
    move v15, v4

    .end local v4    # "i":I
    .local v15, "i":I
    array-length v0, v7

    if-ge v15, v0, :cond_1

    .line 267
    const-string v0, "AmbientLightEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "started speechTimer length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    aget-byte v20, v7, v15

    .line 269
    .local v20, "color_value":B
    aget-byte v21, p3, v15

    .line 270
    .local v21, "bright_value":B
    aget v0, v8, v15

    div-int/lit8 v0, v0, 0x14

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-byte v13, v0

    .line 272
    .local v13, "fade_value":B
    new-instance v10, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$2;

    move-object v0, v10

    move-object v1, v6

    move-object v2, v9

    move/from16 v3, v20

    move/from16 v4, v21

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$2;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;[IBBB)V

    .line 283
    .local v10, "timerTask":Ljava/lang/Runnable;
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v11, v18

    move v1, v13

    move-wide/from16 v13, v16

    .end local v13    # "fade_value":B
    .local v1, "fade_value":B
    move v2, v15

    move-object v15, v0

    .end local v15    # "i":I
    .local v2, "i":I
    invoke-static/range {v10 .. v15}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, v6, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->speechFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 284
    aget v0, v8, v2

    int-to-long v3, v0

    add-long v18, v18, v3

    .line 266
    .end local v1    # "fade_value":B
    .end local v10    # "timerTask":Ljava/lang/Runnable;
    .end local v20    # "color_value":B
    .end local v21    # "bright_value":B
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    .line 286
    .end local v4    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public setAllLightData([B[B[B)V
    .locals 2
    .param p1, "color"    # [B
    .param p2, "bright"    # [B
    .param p3, "fade"    # [B

    .line 362
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->getCarAtlManagerAgent()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->setAllLightData(Z[B[B[B)V

    .line 363
    return-void
.end method

.method public setAmbientLightBrightPara(I)V
    .locals 1
    .param p1, "bright"    # I

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->mBrightPara:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$BrightPara;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$BrightPara;->setBright(I)V

    .line 152
    return-void
.end method

.method public setAmbientLightDefaultGroupEffect(BBB)V
    .locals 1
    .param p1, "color"    # B
    .param p2, "bright"    # B
    .param p3, "fade"    # B

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->defaultOrMusicGroupNum:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$GroupNum;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$GroupNum;->getGroupNum()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->setGroupLightData(IBBB)V

    .line 294
    return-void
.end method

.method public setAmbientLightEffect(Ljava/lang/String;ZIII)V
    .locals 19
    .param p1, "effectType"    # Ljava/lang/String;
    .param p2, "doubleThemeColorEnable"    # Z
    .param p3, "firstThemeColor"    # I
    .param p4, "secondThemeColor"    # I
    .param p5, "bright_low"    # I

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    .line 74
    move/from16 v3, p5

    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->getLightEffectManager()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;->getAmbientLightEffectList()Ljava/util/ArrayList;

    move-result-object v4

    .line 75
    .local v4, "mAmbientLightEffectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_9

    .line 76
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_9

    .line 81
    const-wide/16 v7, 0x0

    .line 82
    .local v7, "delay_time":J
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;

    invoke-virtual {v9}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->getEffect_type()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v10, p1

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->stopAllAmbilentEffect()V

    .line 84
    iget-object v9, v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->mAmbilentParaList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 85
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;

    invoke-virtual {v9}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->getEffect_init()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 86
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;

    invoke-virtual {v9}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->getEffect_init()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    .line 88
    .local v9, "num":I
    move-wide v11, v7

    const/4 v7, 0x0

    .local v7, "j":I
    .local v11, "delay_time":J
    :goto_1
    if-ge v7, v9, :cond_1

    .line 89
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;

    invoke-virtual {v8}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->getEffect_init()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_init;

    invoke-virtual {v8}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_init;->getBright()I

    move-result v8

    int-to-byte v8, v8

    .line 90
    .local v8, "bright":B
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;

    invoke-virtual {v13}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->getEffect_init()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_init;

    invoke-virtual {v13}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_init;->getFade()I

    move-result v13

    .line 95
    .local v13, "fade":I
    int-to-long v14, v13

    add-long/2addr v11, v14

    .line 96
    iget-object v14, v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->defaultOrMusicGroupNum:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$GroupNum;

    invoke-virtual {v14}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$GroupNum;->getGroupNum()I

    move-result v14

    int-to-byte v15, v1

    iget-object v5, v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->mBrightPara:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$BrightPara;

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$BrightPara;->getBright()I

    move-result v5

    mul-int/2addr v5, v8

    div-int/lit8 v5, v5, 0x64

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-byte v5, v5

    move/from16 v16, v8

    div-int/lit8 v8, v13, 0x14

    .end local v8    # "bright":B
    .local v16, "bright":B
    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-byte v8, v8

    invoke-virtual {v0, v14, v15, v5, v8}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->setGroupLightData(IBBB)V

    .line 88
    .end local v13    # "fade":I
    .end local v16    # "bright":B
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 100
    .end local v9    # "num":I
    .end local v11    # "delay_time":J
    .local v7, "delay_time":J
    :cond_0
    move-wide v11, v7

    .end local v7    # "delay_time":J
    .restart local v11    # "delay_time":J
    :cond_1
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->getEffect_period()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_8

    .line 101
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->getEffect_period()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 103
    .local v5, "num":I
    new-array v7, v5, [B

    .line 104
    .local v7, "color":[B
    new-array v8, v5, [B

    .line 105
    .local v8, "bright":[B
    new-array v9, v5, [I

    .line 106
    .local v9, "fade":[I
    move v13, v1

    .line 107
    .local v13, "color_state":I
    move v14, v13

    const/4 v13, 0x0

    .local v13, "j":I
    .local v14, "color_state":I
    :goto_2
    if-ge v13, v5, :cond_7

    .line 108
    if-eqz p2, :cond_4

    .line 109
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v5

    move-object/from16 v5, v16

    check-cast v5, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;

    .end local v5    # "num":I
    .local v17, "num":I
    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->getEffect_period()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_period;

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_period;->getColorswitch()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 110
    if-ne v14, v1, :cond_2

    .line 111
    int-to-byte v5, v2

    aput-byte v5, v7, v13

    .line 112
    move v5, v2

    .line 124
    .end local v14    # "color_state":I
    .local v5, "color_state":I
    :goto_3
    move v14, v5

    goto :goto_4

    .line 113
    .end local v5    # "color_state":I
    .restart local v14    # "color_state":I
    :cond_2
    if-ne v14, v2, :cond_5

    .line 114
    int-to-byte v5, v1

    aput-byte v5, v7, v13

    .line 115
    move v5, v1

    goto :goto_3

    .line 118
    :cond_3
    int-to-byte v5, v14

    aput-byte v5, v7, v13

    goto :goto_4

    .line 121
    .end local v17    # "num":I
    .local v5, "num":I
    :cond_4
    move/from16 v17, v5

    .end local v5    # "num":I
    .restart local v17    # "num":I
    int-to-byte v5, v1

    aput-byte v5, v7, v13

    .line 124
    :cond_5
    :goto_4
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->getEffect_period()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_period;

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_period;->getBright()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v8, v13

    .line 125
    aget-byte v5, v8, v13

    int-to-byte v1, v3

    if-ge v5, v1, :cond_6

    int-to-byte v1, v3

    aput-byte v1, v8, v13

    .line 126
    :cond_6
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->getEffect_period()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_period;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_period;->getFade()I

    move-result v1

    aput v1, v9, v13

    .line 130
    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$AmbilentPara;

    const/4 v5, 0x0

    invoke-direct {v1, v0, v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$AmbilentPara;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$1;)V

    .line 131
    .local v1, "mAmbilentPara":Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$AmbilentPara;
    aget-byte v5, v7, v13

    invoke-virtual {v1, v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$AmbilentPara;->setColor(B)V

    .line 132
    aget-byte v5, v8, v13

    invoke-virtual {v1, v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$AmbilentPara;->setBright(B)V

    .line 133
    aget v5, v9, v13

    invoke-virtual {v1, v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$AmbilentPara;->setFade(I)V

    .line 134
    iget-object v5, v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->mAmbilentParaList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .end local v1    # "mAmbilentPara":Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$AmbilentPara;
    add-int/lit8 v13, v13, 0x1

    move/from16 v5, v17

    move/from16 v1, p3

    goto/16 :goto_2

    .line 136
    .end local v13    # "j":I
    .end local v17    # "num":I
    .restart local v5    # "num":I
    :cond_7
    move/from16 v17, v5

    .end local v5    # "num":I
    .restart local v17    # "num":I
    invoke-direct {v0, v11, v12}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->startAmbientLightEffect(J)V

    .line 76
    .end local v7    # "color":[B
    .end local v8    # "bright":[B
    .end local v9    # "fade":[I
    .end local v11    # "delay_time":J
    .end local v14    # "color_state":I
    .end local v17    # "num":I
    :cond_8
    add-int/lit8 v6, v6, 0x1

    move/from16 v1, p3

    goto/16 :goto_0

    .line 141
    .end local v6    # "i":I
    :cond_9
    move-object/from16 v10, p1

    return-void
.end method

.method public setDefaultOrMusicGroup(I)V
    .locals 1
    .param p1, "groupNum"    # I

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->defaultOrMusicGroupNum:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$GroupNum;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$GroupNum;->setGroupNum(I)V

    .line 145
    return-void
.end method

.method public setFollowCarSpeedEffect(IFI)V
    .locals 4
    .param p1, "color"    # I
    .param p2, "speed"    # F
    .param p3, "fade"    # I

    .line 312
    const/4 v0, 0x1

    .line 313
    .local v0, "bright":B
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_1

    .line 314
    const/high16 v1, 0x42a00000    # 80.0f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    const/high16 v1, 0x42c60000    # 99.0f

    mul-float/2addr v1, p2

    const/high16 v2, 0x41a00000    # 20.0f

    sub-float/2addr v1, v2

    const/high16 v2, 0x429e0000    # 79.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-byte v1, v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x64

    :goto_0
    move v0, v1

    .line 316
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->defaultOrMusicGroupNum:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$GroupNum;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$GroupNum;->getGroupNum()I

    move-result v1

    int-to-byte v2, p1

    int-to-byte v3, p3

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->setGroupLightData(IBBB)V

    .line 317
    return-void
.end method

.method public setGroupLightData(IBBB)V
    .locals 11
    .param p1, "groupNum"    # I
    .param p2, "color"    # B
    .param p3, "bright"    # B
    .param p4, "fade"    # B

    .line 351
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->printAtlLog(IBBB)V

    .line 352
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    .line 353
    .local v0, "groupNumber":B
    const/4 v9, 0x0

    .line 354
    .local v9, "solution":B
    const/4 v10, 0x0

    .line 355
    .local v10, "lightlist":I
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->getCarAtlManagerAgent()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;

    move-result-object v1

    const/4 v5, 0x0

    move v2, v0

    move v3, v9

    move v4, v10

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->setGroutLightData(BBIZBBB)V

    .line 356
    return-void
.end method

.method public setIgOnStatus(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 366
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->getCarAtlManagerAgent()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->setIgOnStatus(Z)V

    .line 367
    return-void
.end method

.method public setMusicSpectrumEffect(BBB)V
    .locals 1
    .param p1, "color"    # B
    .param p2, "bright"    # B
    .param p3, "fade"    # B

    .line 289
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->defaultOrMusicGroupNum:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$GroupNum;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$GroupNum;->getGroupNum()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->setGroupLightData(IBBB)V

    .line 290
    return-void
.end method

.method public setSpeechEffect([ILjava/lang/String;)V
    .locals 9
    .param p1, "groupNum"    # [I
    .param p2, "effectType"    # Ljava/lang/String;

    .line 229
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->getLightEffectManager()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;->getAmbientLightEffectList()Ljava/util/ArrayList;

    move-result-object v0

    .line 230
    .local v0, "mAmbientLightEffectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 231
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 232
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->getEffect_type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->getEffect_period()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 237
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->getEffect_period()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 238
    .local v3, "num":I
    new-array v4, v3, [B

    .line 239
    .local v4, "color":[B
    new-array v5, v3, [B

    .line 240
    .local v5, "bright":[B
    new-array v6, v3, [I

    .line 241
    .local v6, "fade":[I
    move v7, v1

    .local v7, "j":I
    :goto_1
    if-ge v7, v3, :cond_0

    .line 242
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;

    invoke-virtual {v8}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->getEffect_period()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_period;

    invoke-virtual {v8}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_period;->getColor()I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 243
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;

    invoke-virtual {v8}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->getEffect_period()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_period;

    invoke-virtual {v8}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_period;->getBright()I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 244
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;

    invoke-virtual {v8}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->getEffect_period()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_period;

    invoke-virtual {v8}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_period;->getFade()I

    move-result v8

    aput v8, v6, v7

    .line 241
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 249
    .end local v7    # "j":I
    :cond_0
    invoke-direct {p0, p1, v4, v5, v6}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->startSpeechEffect([I[B[B[I)V

    .line 231
    .end local v3    # "num":I
    .end local v4    # "color":[B
    .end local v5    # "bright":[B
    .end local v6    # "fade":[I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 254
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public setSpeechEffectEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->mSpeechPara:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$SpeechPara;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$SpeechPara;->setEnable(Z)V

    .line 298
    return-void
.end method

.method public setSpeechSpectrumEffect(BBB)V
    .locals 2
    .param p1, "color"    # B
    .param p2, "bright"    # B
    .param p3, "fade"    # B

    .line 301
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->speechGroupNum:[I

    if-eqz v0, :cond_0

    .line 302
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->speechGroupNum:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->speechGroupNum:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->setGroupLightData(IBBB)V

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setTwoLightData(B[B[B[B[B)V
    .locals 9
    .param p1, "protocol"    # B
    .param p2, "lightPosition"    # [B
    .param p3, "color"    # [B
    .param p4, "bright"    # [B
    .param p5, "fade"    # [B

    .line 342
    const-string v0, "AmbientLightEffect"

    const-string v1, "setTwoLightData()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->getCarAtlManagerAgent()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;

    move-result-object v2

    const/4 v5, 0x0

    move v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->setTwoLightData(B[BZ[B[B[B)V

    .line 345
    return-void
.end method

.method public stopAllAmbilentEffect()V
    .locals 0

    .line 336
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->stopDefaultEffect()V

    .line 337
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->stopSpeechEffect()V

    .line 338
    return-void
.end method

.method public stopDefaultEffect()V
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->defaultFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->defaultFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->defaultFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 324
    :cond_0
    return-void
.end method

.method public stopSpeechEffect()V
    .locals 2

    .line 327
    const-string v0, "AmbientLightEffect"

    const-string v1, "stopSpeechEffect()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->speechFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->speechFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->speechFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 332
    :cond_0
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->speechEnable:Z

    .line 333
    return-void
.end method

.method public updateLightEffectPara(Ljava/lang/String;ZIII)V
    .locals 18
    .param p1, "effectType"    # Ljava/lang/String;
    .param p2, "doubleThemeColorEnable"    # Z
    .param p3, "firstThemeColor"    # I
    .param p4, "secondThemeColor"    # I
    .param p5, "bright_low"    # I

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    .line 155
    move/from16 v3, p5

    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->getLightEffectManager()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;->getAmbientLightEffectList()Ljava/util/ArrayList;

    move-result-object v4

    .line 157
    .local v4, "mAmbientLightEffectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;>;"
    iget-object v5, v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->defaultOrMusicGroupNum:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$GroupNum;

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$GroupNum;->getGroupNum()I

    move-result v5

    int-to-byte v6, v1

    iget-object v7, v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->mBrightPara:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$BrightPara;

    invoke-virtual {v7}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$BrightPara;->getBright()I

    move-result v7

    const/16 v8, 0x64

    mul-int/2addr v7, v8

    div-int/2addr v7, v8

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-byte v7, v7

    const/16 v8, 0x14

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->setGroupLightData(IBBB)V

    .line 158
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 159
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 163
    const-wide/16 v7, 0x0

    .line 164
    .local v7, "delay_time":J
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;

    invoke-virtual {v9}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->getEffect_type()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v10, p1

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 166
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;

    invoke-virtual {v9}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->getEffect_period()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_5

    .line 167
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;

    invoke-virtual {v9}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->getEffect_period()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    .line 169
    .local v9, "num":I
    new-array v11, v9, [B

    .line 170
    .local v11, "color":[B
    new-array v12, v9, [B

    .line 171
    .local v12, "bright":[B
    new-array v13, v9, [I

    .line 172
    .local v13, "fade":[I
    move v14, v1

    .line 173
    .local v14, "color_state":I
    move v15, v14

    const/4 v14, 0x0

    .local v14, "j":I
    .local v15, "color_state":I
    :goto_1
    if-ge v14, v9, :cond_5

    .line 174
    if-eqz p2, :cond_2

    .line 175
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->getEffect_period()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_period;

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_period;->getColorswitch()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 176
    if-ne v15, v1, :cond_0

    .line 177
    int-to-byte v5, v2

    aput-byte v5, v11, v14

    .line 178
    move v5, v2

    .line 190
    .end local v15    # "color_state":I
    .local v5, "color_state":I
    :goto_2
    move v15, v5

    goto :goto_3

    .line 179
    .end local v5    # "color_state":I
    .restart local v15    # "color_state":I
    :cond_0
    if-ne v15, v2, :cond_3

    .line 180
    int-to-byte v5, v1

    aput-byte v5, v11, v14

    .line 181
    move v5, v1

    goto :goto_2

    .line 184
    :cond_1
    int-to-byte v5, v15

    aput-byte v5, v11, v14

    goto :goto_3

    .line 187
    :cond_2
    int-to-byte v5, v1

    aput-byte v5, v11, v14

    .line 190
    :cond_3
    :goto_3
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->getEffect_period()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_period;

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_period;->getBright()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v12, v14

    .line 191
    aget-byte v5, v12, v14

    int-to-byte v1, v3

    if-ge v5, v1, :cond_4

    int-to-byte v1, v3

    aput-byte v1, v12, v14

    .line 192
    :cond_4
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->getEffect_period()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_period;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect$Effect_period;->getFade()I

    move-result v1

    aput v1, v13, v14

    .line 196
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->mAmbilentParaList:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$AmbilentPara;

    aget-byte v5, v11, v14

    invoke-virtual {v1, v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$AmbilentPara;->setColor(B)V

    .line 197
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->mAmbilentParaList:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$AmbilentPara;

    aget-byte v5, v12, v14

    invoke-virtual {v1, v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$AmbilentPara;->setBright(B)V

    .line 198
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->mAmbilentParaList:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$AmbilentPara;

    aget v5, v13, v14

    invoke-virtual {v1, v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$AmbilentPara;->setFade(I)V

    .line 173
    add-int/lit8 v14, v14, 0x1

    move/from16 v1, p3

    goto/16 :goto_1

    .line 159
    .end local v7    # "delay_time":J
    .end local v9    # "num":I
    .end local v11    # "color":[B
    .end local v12    # "bright":[B
    .end local v13    # "fade":[I
    .end local v14    # "j":I
    .end local v15    # "color_state":I
    :cond_5
    add-int/lit8 v6, v6, 0x1

    move/from16 v1, p3

    goto/16 :goto_0

    .line 204
    .end local v6    # "i":I
    :cond_6
    move-object/from16 v10, p1

    return-void
.end method

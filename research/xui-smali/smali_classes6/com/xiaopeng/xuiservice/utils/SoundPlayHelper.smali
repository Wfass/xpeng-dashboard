.class public Lcom/xiaopeng/xuiservice/utils/SoundPlayHelper;
.super Ljava/lang/Object;
.source "SoundPlayHelper.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SoundPlayHelper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSoundIdMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SoundPlayHelper;->mSoundIdMap:Landroid/util/ArrayMap;

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/utils/SoundPlayHelper;->mContext:Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/utils/SoundPlayHelper;->createSoundPoolIfNeeded()V

    .line 28
    return-void
.end method

.method private createSoundPoolIfNeeded()V
    .locals 2

    .line 31
    const-string v0, "SoundPlayHelper"

    const-string v1, "createSoundPoolIfNeeded"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SoundPlayHelper;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    .line 34
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x2

    .line 35
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 38
    .local v0, "audioAttributes":Landroid/media/AudioAttributes;
    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 39
    invoke-virtual {v1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v1

    .line 40
    invoke-virtual {v1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/utils/SoundPlayHelper;->mSoundPool:Landroid/media/SoundPool;

    .line 42
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/SoundPlayHelper;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 44
    .end local v0    # "audioAttributes":Landroid/media/AudioAttributes;
    :cond_0
    return-void
.end method

.method private playMayWait(I)V
    .locals 4
    .param p1, "audioId"    # I

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SoundPlayHelper;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/SoundPlayHelper;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    .line 67
    .local v0, "sampleId":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/SoundPlayHelper;->mSoundIdMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v1, "SoundPlayHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playMayWait, audioId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", sampleId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 9
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "sampleId"    # I
    .param p3, "status"    # I

    .line 18
    const-string v0, "SoundPlayHelper"

    const-string v1, "onLoadComplete enter"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SoundPlayHelper;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 20
    const-string v0, "SoundPlayHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadComplete play "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/utils/SoundPlayHelper;->mSoundPool:Landroid/media/SoundPool;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move v3, p2

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 23
    :cond_0
    return-void
.end method

.method public playNote(I)V
    .locals 3
    .param p1, "audioId"    # I

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SoundPlayHelper;->mSoundIdMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/utils/SoundPlayHelper;->playMayWait(I)V

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SoundPlayHelper;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/SoundPlayHelper;->mSoundIdMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/xuiservice/utils/SoundPlayHelper;->onLoadComplete(Landroid/media/SoundPool;II)V

    .line 52
    :goto_0
    return-void
.end method

.method public releaseSoundPool()V
    .locals 4

    .line 55
    const-string v0, "SoundPlayHelper"

    const-string v1, "releaseSoundPool"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SoundPlayHelper;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SoundPlayHelper;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->autoPause()V

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SoundPlayHelper;->mSoundIdMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 59
    .local v1, "soundId":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/utils/SoundPlayHelper;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/SoundPool;->unload(I)Z

    .line 60
    .end local v1    # "soundId":Ljava/lang/Integer;
    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SoundPlayHelper;->mSoundIdMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 63
    :cond_1
    return-void
.end method

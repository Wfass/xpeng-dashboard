.class public Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;
.super Lcom/xiaopeng/xuimanager/soundresource/ISoundResource$Stub;
.source "SoundResourceService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/XUIServiceBase;
.implements Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$ResourceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService$SoundResourceServiceHolder;,
        Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService$EventHandler;
    }
.end annotation


# static fields
.field private static final MSG_SOUND_RESOURCE_ACTIVE_CHANGE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SoundResourceService"


# instance fields
.field private final listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
            "Lcom/xiaopeng/xuimanager/soundresource/ISoundResourceListener;",
            ">;"
        }
    .end annotation
.end field

.field private mEventHandler:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService$EventHandler;

.field private mSoundResourceLoader:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/soundresource/ISoundResource$Stub;-><init>()V

    .line 35
    new-instance v0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    const-string v1, "SoundResourceService"

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    .line 36
    invoke-static {}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->getInstance()Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->mSoundResourceLoader:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->mEventHandler:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService$EventHandler;

    .line 66
    new-instance v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService$EventHandler;

    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService$EventHandler;-><init>(Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->mEventHandler:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService$EventHandler;

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService$1;

    .line 32
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->dispatchResourceEvent(II)V

    return-void
.end method

.method private dispatchResourceEvent(II)V
    .locals 6
    .param p1, "resId"    # I
    .param p2, "event"    # I

    .line 335
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/soundresource/ISoundResourceListener;

    .line 337
    .local v1, "listener":Lcom/xiaopeng/xuimanager/soundresource/ISoundResourceListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/soundresource/ISoundResourceListener;->onResourceEvent(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    goto :goto_1

    .line 338
    :catch_0
    move-exception v2

    .line 339
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SoundResourceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleCallbackTest e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .end local v1    # "listener":Lcom/xiaopeng/xuimanager/soundresource/ISoundResourceListener;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 342
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;
    .locals 1

    .line 70
    invoke-static {}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService$SoundResourceServiceHolder;->access$200()Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;

    move-result-object v0

    return-object v0
.end method

.method private handleCallbackTest()V
    .locals 7

    .line 323
    const/4 v0, 0x1

    .line 324
    .local v0, "i":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/soundresource/ISoundResourceListener;

    .line 326
    .local v2, "listener":Lcom/xiaopeng/xuimanager/soundresource/ISoundResourceListener;
    :try_start_0
    invoke-interface {v2, v0, v0}, Lcom/xiaopeng/xuimanager/soundresource/ISoundResourceListener;->onResourceEvent(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    goto :goto_1

    .line 327
    :catch_0
    move-exception v3

    .line 328
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "SoundResourceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleCallbackTest e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 331
    .end local v2    # "listener":Lcom/xiaopeng/xuimanager/soundresource/ISoundResourceListener;
    goto :goto_0

    .line 332
    :cond_0
    return-void
.end method

.method private handleDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 244
    const-string v0, "dump:SoundResourceService"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    if-eqz p2, :cond_13

    array-length v0, p2

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto/16 :goto_e

    .line 250
    :cond_0
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_12

    .line 251
    aget-object v3, p2, v2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x77f245fb

    const/4 v6, -0x1

    if-eq v4, v5, :cond_4

    const v5, -0x57de579b

    if-eq v4, v5, :cond_3

    const/16 v5, 0x5d4

    if-eq v4, v5, :cond_2

    const/16 v5, 0x5e7

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "-t"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v0

    goto :goto_2

    :cond_2
    const-string v4, "-a"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v1

    goto :goto_2

    :cond_3
    const-string v4, "-bootactive"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x3

    goto :goto_2

    :cond_4
    const-string v4, "-bootload"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x2

    goto :goto_2

    :cond_5
    :goto_1
    move v3, v6

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 317
    return-void

    .line 309
    :pswitch_0
    add-int/lit8 v3, v2, 0x1

    array-length v4, p2

    if-ge v3, v4, :cond_6

    .line 310
    add-int/lit8 v3, v2, 0x1

    aget-object v3, p2, v3

    .line 311
    .local v3, "activeIdx":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->mSoundResourceLoader:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->setBootSoundResource(I)I

    .line 312
    .end local v3    # "activeIdx":Ljava/lang/String;
    goto :goto_5

    .line 313
    :cond_6
    const-string v3, "boot active but lack of flag!"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 315
    goto :goto_5

    .line 293
    :pswitch_1
    add-int/lit8 v3, v2, 0x1

    array-length v4, p2

    if-ge v3, v4, :cond_9

    .line 294
    add-int/lit8 v3, v2, 0x1

    aget-object v3, p2, v3

    .line 295
    .local v3, "path":Ljava/lang/String;
    nop

    .line 296
    invoke-static {v3}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->loadBootRscFromDisk(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 297
    .local v4, "resourceList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;>;"
    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_3

    :cond_7
    move v5, v0

    .line 298
    .local v5, "count":I
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "load count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",resources:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    if-lez v5, :cond_8

    .line 300
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;

    .line 301
    .local v7, "res":Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    .end local v7    # "res":Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;
    goto :goto_4

    .line 304
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "resourceList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;>;"
    .end local v5    # "count":I
    :cond_8
    goto :goto_5

    .line 305
    :cond_9
    const-string v3, "load boot sound resource but lack of load path!"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 307
    nop

    .line 250
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 268
    :pswitch_2
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->mSoundResourceLoader:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->getAvailableThemes()[Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;

    move-result-object v1

    .line 269
    .local v1, "themes":[Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;
    if-eqz v1, :cond_b

    .line 270
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->mSoundResourceLoader:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->getActiveSoundTheme()Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;

    move-result-object v3

    .line 271
    .local v3, "activeTheme":Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sound theme active="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 272
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sound theme count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",data:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 273
    array-length v4, v1

    move v5, v0

    :goto_6
    if-ge v5, v4, :cond_a

    aget-object v6, v1, v5

    .line 274
    .local v6, "theme":Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 273
    .end local v6    # "theme":Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 276
    .end local v3    # "activeTheme":Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;
    :cond_a
    goto :goto_7

    .line 277
    :cond_b
    const-string v3, "no sound themes"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 279
    :goto_7
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->mSoundResourceLoader:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->getBootSoundResource()[Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;

    move-result-object v3

    .line 280
    .local v3, "resources":[Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;
    if-eqz v3, :cond_d

    .line 281
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->mSoundResourceLoader:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->getActiveBootSoundResource()Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;

    move-result-object v4

    .line 282
    .local v4, "activeBoot":Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "boot sound active="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "boot sound last active id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->mSoundResourceLoader:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;

    invoke-virtual {v6}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->getLastBootSoundIdx()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "boot sound count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",data:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    array-length v5, v3

    :goto_8
    if-ge v0, v5, :cond_c

    aget-object v6, v3, v0

    .line 286
    .local v6, "res":Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    .end local v6    # "res":Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 288
    .end local v4    # "activeBoot":Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;
    :cond_c
    goto :goto_9

    .line 289
    :cond_d
    const-string v0, "no boot sound resource"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 291
    .end local v1    # "themes":[Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;
    .end local v3    # "resources":[Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;
    :goto_9
    return-void

    .line 253
    :pswitch_3
    add-int/lit8 v1, v2, 0x1

    array-length v3, p2

    if-ge v1, v3, :cond_11

    .line 254
    add-int/lit8 v1, v2, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0xa43dfbb

    if-eq v3, v4, :cond_e

    goto :goto_a

    :cond_e
    const-string v3, "callback"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_b

    :cond_f
    :goto_a
    move v0, v6

    :goto_b
    if-eqz v0, :cond_10

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown param "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v2, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c

    .line 256
    :cond_10
    const-string v0, "callback test"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->handleCallbackTest()V

    .line 258
    nop

    .line 261
    :goto_c
    goto :goto_d

    .line 264
    :cond_11
    const-string v0, "please add test params"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    :goto_d
    return-void

    .line 320
    .end local v2    # "i":I
    :cond_12
    return-void

    .line 246
    :cond_13
    :goto_e
    const-string v0, "please input params"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$init$0(Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 214
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->handleDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public static synthetic lambda$init$1(Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;)V
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->mSoundResourceLoader:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->loadRsc()V

    .line 220
    const-string v0, "SoundResourceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init done,load theme size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->mSoundResourceLoader:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->getThemeMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 236
    return-void
.end method

.method public getActiveBootSoundResource()Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 189
    const-string v0, "SoundResourceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveBootSoundResource,pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->mSoundResourceLoader:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->getActiveBootSoundResource()Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;

    move-result-object v0

    .line 193
    .local v0, "resource":Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;
    return-object v0
.end method

.method public getActiveSoundEffectResource(I)Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;
    .locals 3
    .param p1, "effectType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    const-string v0, "SoundResourceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveSoundEffectResource,type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->mSoundResourceLoader:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->getActiveSoundEffectResource(I)Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;

    move-result-object v0

    .line 148
    .local v0, "resource":Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;
    return-object v0
.end method

.method public getActiveSoundEffectTheme()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    const-string v0, "SoundResourceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveSoundEffectTheme,pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->mSoundResourceLoader:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->getActiveSoundThemeIndex()I

    move-result v0

    .line 107
    .local v0, "index":I
    return v0
.end method

.method public getAvailableThemes()[Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    const-string v0, "SoundResourceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAvailableThemes,pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->mSoundResourceLoader:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->getAvailableThemes()[Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;

    move-result-object v0

    .line 98
    .local v0, "themes":[Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;
    return-object v0
.end method

.method public getBootSoundOnOff()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    const-string v0, "SoundResourceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBootSoundOnOff,pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->mSoundResourceLoader:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->getBootSoundOnOff()I

    move-result v0

    .line 166
    .local v0, "ret":I
    return v0
.end method

.method public getBootSoundResource()[Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    const-string v0, "SoundResourceService"

    const-string v1, "getBootSoundResource"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->mSoundResourceLoader:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->getBootSoundResource()[Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;

    move-result-object v0

    .line 175
    .local v0, "resources":[Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;
    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 240
    const-string v0, "SoundResourceService"

    return-object v0
.end method

.method public getSoundEffectPlayResource(I)[Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;
    .locals 3
    .param p1, "themeId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    const-string v0, "SoundResourceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSoundEffectPlayResource,id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->mSoundResourceLoader:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->getSoundEffectPlayResource(I)[Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;

    move-result-object v0

    .line 130
    .local v0, "resources":[Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;
    return-object v0
.end method

.method public getSoundEffectPreviewResource(I)[Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;
    .locals 3
    .param p1, "themeId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    const-string v0, "SoundResourceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSoundEffectPreviewResource,id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->mSoundResourceLoader:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->getSoundEffectPreviewResource(I)[Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;

    move-result-object v0

    .line 139
    .local v0, "resources":[Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;
    return-object v0
.end method

.method public init()V
    .locals 2

    .line 212
    const-string v0, "SoundResourceService"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v0, "soundresource"

    new-instance v1, Lcom/xiaopeng/xuiservice/soundresource/-$$Lambda$SoundResourceService$Ax6TjYYEvko9ial5s0kM_qL8MyA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/soundresource/-$$Lambda$SoundResourceService$Ax6TjYYEvko9ial5s0kM_qL8MyA;-><init>(Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->registerDump(Ljava/lang/String;Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;)V

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->mSoundResourceLoader:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->setResourceListener(Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$ResourceListener;)V

    .line 217
    invoke-static {}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;->getInstance()Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;->init()V

    .line 218
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/soundresource/-$$Lambda$SoundResourceService$wyII6UXmmhOWy3D-NLov2H9z-fc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/soundresource/-$$Lambda$SoundResourceService$wyII6UXmmhOWy3D-NLov2H9z-fc;-><init>(Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 222
    return-void
.end method

.method public onResourceEvent(II)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "event"    # I

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->mEventHandler:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService$EventHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService$EventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 44
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    const-string v0, "SndResourceSvc"

    .line 76
    .local v0, "module":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "info":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderEnter(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 v2, 0x1

    .line 81
    .local v2, "ret":Z
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/soundresource/ISoundResource$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 86
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderLeave(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    nop

    .line 89
    return v2

    .line 86
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 82
    :catch_0
    move-exception v3

    .line 83
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "SoundResourceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTransact e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderLeave(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method

.method public registerListener(Lcom/xiaopeng/xuimanager/soundresource/ISoundResourceListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/soundresource/ISoundResourceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->registerListener(Landroid/os/IInterface;)Z

    .line 199
    return-void
.end method

.method public release()V
    .locals 2

    .line 229
    const-string v0, "SoundResourceService"

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->clear()V

    .line 231
    return-void
.end method

.method public selectSoundEffectTheme(I)I
    .locals 3
    .param p1, "themeId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    const-string v0, "SoundResourceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectSoundEffectTheme,id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->mSoundResourceLoader:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->setActiveSoundThemIndex(I)I

    move-result v0

    .line 116
    .local v0, "ret":I
    if-nez v0, :cond_0

    .line 117
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->mEventHandler:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService$EventHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, v2}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService$EventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 118
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 121
    :cond_0
    return v0
.end method

.method public setBootSoundOnOff(Z)I
    .locals 3
    .param p1, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    const-string v0, "SoundResourceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBootSoundOnOff,flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->mSoundResourceLoader:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->setBootSoundOnOff(Z)I

    move-result v0

    .line 157
    .local v0, "ret":I
    return v0
.end method

.method public setBootSoundResource(I)I
    .locals 3
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    const-string v0, "SoundResourceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBootSoundResource,id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->mSoundResourceLoader:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->setBootSoundResource(I)I

    move-result v0

    .line 184
    .local v0, "ret":I
    return v0
.end method

.method public unRegisterListener(Lcom/xiaopeng/xuimanager/soundresource/ISoundResourceListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/soundresource/ISoundResourceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->unregisterListener(Landroid/os/IInterface;)Z

    .line 204
    return-void
.end method

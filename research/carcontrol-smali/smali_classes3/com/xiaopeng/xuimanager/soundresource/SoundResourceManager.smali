.class public Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;
.super Ljava/lang/Object;
.source "SoundResourceManager.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/XUIManagerBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager$SoundResourceManagerHolder;,
        Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager$SoundResourceListenerImpl;,
        Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager$SoundResourceListener;
    }
.end annotation


# static fields
.field private static final MSG_RESOURCE_EVENT:I = 0x1

.field public static final SOUND_RESOURCE_AI_PUSH:I = 0x8

.field public static final SOUND_RESOURCE_BREAK_PRESS_READY:I = 0x7

.field public static final SOUND_RESOURCE_COMMON_HINT_1:I = 0x4

.field public static final SOUND_RESOURCE_COMMON_HINT_2:I = 0x5

.field public static final SOUND_RESOURCE_DRIVE_MODE:I = 0x6

.field public static final SOUND_RESOURCE_EVENT_BOOT_SOUND_SWITCH:I = 0x64

.field public static final SOUND_RESOURCE_EVENT_READY_ALL:I = 0x3e8

.field public static final SOUND_RESOURCE_EVENT_THEME_SWITCH:I = 0x1

.field public static final SOUND_RESOURCE_NO_SEATBELT:I = 0x2

.field public static final SOUND_RESOURCE_PREVIEW_SWITCH:I = 0xb

.field public static final SOUND_RESOURCE_PREVIEW_TOUCH:I = 0xa

.field public static final SOUND_RESOURCE_RADAR:I = 0x3

.field public static final SOUND_RESOURCE_SYSTEM_EFFECT:I = 0x9

.field public static final SOUND_RESOURCE_TURN_SIGNAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SoundResourceManager"

.field private static mServiceName:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager$SoundResourceListener;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;

.field private serverDisconnected:Z

.field private soundResourceListenerImpl:Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager$SoundResourceListenerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->serverDisconnected:Z

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->mService:Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;

    .line 98
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->mListeners:Landroid/util/ArraySet;

    .line 99
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->soundResourceListenerImpl:Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager$SoundResourceListenerImpl;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager$1;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;-><init>()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;Landroid/os/Message;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->handleEventMessage(Landroid/os/Message;)V

    return-void
.end method

.method private dispatchResourceEvent(II)V
    .locals 3

    .line 467
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->mListeners:Landroid/util/ArraySet;

    monitor-enter v0

    .line 468
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager$SoundResourceListener;

    .line 469
    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager$SoundResourceListener;->onResourceEvent(II)V

    goto :goto_0

    .line 471
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static getInstance()Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;
    .locals 1

    .line 134
    invoke-static {}, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager$SoundResourceManagerHolder;->access$100()Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;

    move-result-object v0

    return-object v0
.end method

.method private handleEventMessage(Landroid/os/Message;)V
    .locals 3

    .line 456
    sget-object v0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEventMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 459
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->dispatchResourceEvent(II)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getActiveBootSoundResource()Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;
    .locals 4

    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->mService:Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;->getActiveBootSoundResource()Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 403
    sget-object v1, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActiveBootSoundResource e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 406
    :goto_0
    sget-object v1, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActiveBootSoundResource,r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getActiveSoundEffectResource(I)Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;
    .locals 3

    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->mService:Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;->getActiveSoundEffectResource(I)Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 314
    sget-object v0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveSoundEffectResource e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 317
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveSoundEffectResource, res="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public getActiveSoundEffectTheme()I
    .locals 4

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->mService:Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;->getActiveSoundEffectTheme()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 242
    sget-object v1, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActiveSoundEffectTheme e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 245
    :goto_0
    sget-object v1, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActiveSoundEffectTheme,id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getAvailableThemes()[Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;
    .locals 4

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->mService:Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;->getAvailableThemes()[Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 225
    sget-object v1, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAvailableThemes e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 228
    :goto_0
    sget-object v1, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAvailableThemes,r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getBootSoundOnOff()I
    .locals 4

    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->mService:Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;->getBootSoundOnOff()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 350
    sget-object v1, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBootSoundOnOff e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 353
    :goto_0
    sget-object v1, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBootSoundOnOff,onOff="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getBootSoundResource()[Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;
    .locals 4

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->mService:Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;->getBootSoundResource()[Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 367
    sget-object v1, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBootSoundResource e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 370
    :goto_0
    sget-object v1, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBootSoundResource,r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 185
    sget-object v0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->mServiceName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->mServiceName:Ljava/lang/String;

    .line 188
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getSoundEffectPlayResource(I)[Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;
    .locals 3

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->mService:Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;->getSoundEffectPlayResource(I)[Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 278
    sget-object v0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSoundEffectPlayResource e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 281
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSoundEffectPlayResource,r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public getSoundEffectPreviewResource(I)[Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;
    .locals 3

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->mService:Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;->getSoundEffectPreviewResource(I)[Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 296
    sget-object v0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSoundEffectPreviewResource e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 299
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSoundEffectPreviewResource,r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    .line 199
    sget-object v0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create UserScenarioManager,context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ",handler="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/soundresource/ISoundResource$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->mService:Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;

    .line 201
    new-instance p1, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager$1;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager$1;-><init>(Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onServerDisconnected()V
    .locals 2

    .line 193
    sget-object v0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->TAG:Ljava/lang/String;

    const-string v1, "onServerDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 194
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->serverDisconnected:Z

    return-void
.end method

.method public onXUIConnected(Landroid/os/IBinder;)V
    .locals 3

    if-nez p1, :cond_0

    .line 159
    sget-object p1, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->TAG:Ljava/lang/String;

    const-string v0, "onXUIConnected,service binder is null"

    invoke-static {p1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->mService:Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 163
    sget-object v0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onXUIConnected,service is the same:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 166
    :cond_1
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/soundresource/ISoundResource$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->mService:Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->soundResourceListenerImpl:Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager$SoundResourceListenerImpl;

    if-eqz v0, :cond_2

    .line 171
    :try_start_0
    invoke-interface {p1, v0}, Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;->registerListener(Lcom/xiaopeng/xuimanager/soundresource/ISoundResourceListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 173
    sget-object v0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onXUIConnected e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public onXUIDisconnected()V
    .locals 5

    .line 139
    sget-object v0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->TAG:Ljava/lang/String;

    const-string v1, "onXUIDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->mListeners:Landroid/util/ArraySet;

    monitor-enter v0

    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 142
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->soundResourceListenerImpl:Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager$SoundResourceListenerImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 146
    :try_start_1
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->mService:Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;

    invoke-interface {v2, v0}, Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;->unRegisterListener(Lcom/xiaopeng/xuimanager/soundresource/ISoundResourceListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 148
    sget-object v2, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onXUIDisconnected,unregisterListener e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_0
    iput-object v1, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->soundResourceListenerImpl:Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager$SoundResourceListenerImpl;

    .line 153
    :cond_0
    iput-object v1, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->mHandler:Landroid/os/Handler;

    return-void

    :catchall_0
    move-exception v1

    .line 142
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public declared-synchronized registerListener(Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager$SoundResourceListener;)V
    .locals 4

    monitor-enter p0

    .line 415
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string p1, "registerListener null!"

    .line 417
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 418
    monitor-exit p0

    return-void

    .line 421
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->soundResourceListenerImpl:Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager$SoundResourceListenerImpl;

    if-nez v0, :cond_1

    .line 422
    new-instance v0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager$SoundResourceListenerImpl;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager$SoundResourceListenerImpl;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->soundResourceListenerImpl:Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager$SoundResourceListenerImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 424
    :try_start_2
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->mService:Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;

    invoke-interface {v1, v0}, Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;->registerListener(Lcom/xiaopeng/xuimanager/soundresource/ISoundResourceListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 426
    :try_start_3
    sget-object v1, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerListener e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->mListeners:Landroid/util/ArraySet;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 431
    :try_start_4
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 432
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 433
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 432
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public selectSoundEffectTheme(I)I
    .locals 3

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->mService:Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;->selectSoundEffectTheme(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 260
    sget-object v0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectSoundEffectTheme e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    .line 263
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectSoundEffectTheme,ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public setBootSoundOnOff(Z)I
    .locals 3

    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->mService:Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;->setBootSoundOnOff(Z)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 333
    sget-object v0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBootSoundOnOff e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    .line 336
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBootSoundOnOff,ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public setBootSoundResource(I)I
    .locals 3

    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->mService:Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;->setBootSoundResource(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 386
    sget-object v0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBootSoundResource e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    .line 389
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBootSoundResource,ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0

    .line 180
    sput-object p1, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->mServiceName:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized unRegisterListener(Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager$SoundResourceListener;)V
    .locals 3

    monitor-enter p0

    .line 440
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegisterListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->mListeners:Landroid/util/ArraySet;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 443
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 444
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 445
    :try_start_2
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_0

    .line 447
    :try_start_3
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->mService:Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->soundResourceListenerImpl:Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager$SoundResourceListenerImpl;

    invoke-interface {p1, v0}, Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;->unRegisterListener(Lcom/xiaopeng/xuimanager/soundresource/ISoundResourceListener;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 449
    :try_start_4
    sget-object v0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterListener e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x0

    .line 451
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->soundResourceListenerImpl:Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager$SoundResourceListenerImpl;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 453
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 444
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

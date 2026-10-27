.class public Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager;
.super Ljava/lang/Object;
.source "UnitConversionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager$UnitChangeListener;,
        Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager$SingletonHolder;,
        Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager$KEY;,
        Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager$SPEED;,
        Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager$AIR_PRESSURE;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UnitConversionManager"


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager$UnitChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnitConversionManager: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitConversionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager;->registerContentObserver()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager$1;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager;->handleSpeedUnitChanged(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager;->handleAirPressureUnitChanged(I)V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager;
    .locals 1

    .line 55
    sget-object v0, Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager$SingletonHolder;->sInstance:Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager;

    return-object v0
.end method

.method private handleAirPressureUnitChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager$UnitChangeListener;

    .line 97
    invoke-interface {v1, p1}, Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager$UnitChangeListener;->onAirPressureUnitChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleSpeedUnitChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager$UnitChangeListener;

    .line 91
    invoke-interface {v1, p1}, Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager$UnitChangeListener;->onSpeedUnitChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private registerContentObserver()V
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager$1;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ThreadUtils;->getHandler(I)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager$1;-><init>(Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager;->mContentObserver:Landroid/database/ContentObserver;

    .line 83
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "speed_unit"

    .line 84
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager;->mContentObserver:Landroid/database/ContentObserver;

    .line 83
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 85
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "air_pressure_unit"

    .line 86
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager;->mContentObserver:Landroid/database/ContentObserver;

    .line 85
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public addUnitChangeListener(Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager$UnitChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public convertOrRemoveTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager;->getSpeechUnitType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 157
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/UnitConversionUtils;->convertAndReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 159
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/UnitConversionUtils;->removeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getAirPressureUnitType()I
    .locals 3

    .line 125
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_pressure_unit"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSpeechUnitType()I
    .locals 3

    .line 116
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "speed_unit"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public removeUnitChangeListener(Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager$UnitChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setAirPressureUnitType(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAirPressureUnitType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitConversionManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_pressure_unit"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setSpeedUnitType(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSpeedUnitType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitConversionManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "speed_unit"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

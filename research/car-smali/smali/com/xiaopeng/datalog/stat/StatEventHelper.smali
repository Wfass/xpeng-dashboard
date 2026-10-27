.class public Lcom/xiaopeng/datalog/stat/StatEventHelper;
.super Ljava/lang/Object;
.source "StatEventHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StatEventHelper"

.field private static volatile sInstance:Lcom/xiaopeng/datalog/stat/StatEventHelper;


# instance fields
.field private mStatDelegate:Lcom/xiaopeng/datalog/stat/AbstractStatDelegate;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "sApplicationContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sApplicationContext"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;

    invoke-direct {v0, p1}, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/datalog/stat/StatEventHelper;->mStatDelegate:Lcom/xiaopeng/datalog/stat/AbstractStatDelegate;

    .line 23
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/datalog/stat/StatEventHelper;
    .locals 2

    .line 33
    sget-object v0, Lcom/xiaopeng/datalog/stat/StatEventHelper;->sInstance:Lcom/xiaopeng/datalog/stat/StatEventHelper;

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lcom/xiaopeng/datalog/stat/StatEventHelper;->sInstance:Lcom/xiaopeng/datalog/stat/StatEventHelper;

    return-object v0

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "has not init the StatEventHeler"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/xiaopeng/datalog/stat/StatEventHelper;

    invoke-direct {v0, p0}, Lcom/xiaopeng/datalog/stat/StatEventHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaopeng/datalog/stat/StatEventHelper;->sInstance:Lcom/xiaopeng/datalog/stat/StatEventHelper;

    .line 30
    return-void
.end method


# virtual methods
.method public uploadCan(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/StatEventHelper;->mStatDelegate:Lcom/xiaopeng/datalog/stat/AbstractStatDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/datalog/stat/AbstractStatDelegate;->uploadCan(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public uploadCdu(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/StatEventHelper;->mStatDelegate:Lcom/xiaopeng/datalog/stat/AbstractStatDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/datalog/stat/AbstractStatDelegate;->uploadCdu(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;)V

    .line 47
    return-void
.end method

.method public uploadCdu(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/StatEventHelper;->mStatDelegate:Lcom/xiaopeng/datalog/stat/AbstractStatDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/datalog/stat/AbstractStatDelegate;->uploadCdu(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V

    .line 42
    return-void
.end method

.method public uploadCduWithFiles(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;Ljava/util/List;)V
    .locals 1
    .param p1, "event"    # Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "filePaths"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p2, "filePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/StatEventHelper;->mStatDelegate:Lcom/xiaopeng/datalog/stat/AbstractStatDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/datalog/stat/AbstractStatDelegate;->uploadCduWithFiles(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;Ljava/util/List;)V

    .line 61
    return-void
.end method

.method public uploadFiles(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePaths"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p1, "filePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/StatEventHelper;->mStatDelegate:Lcom/xiaopeng/datalog/stat/AbstractStatDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/datalog/stat/AbstractStatDelegate;->uploadFiles(Ljava/util/List;)V

    .line 65
    return-void
.end method

.method public uploadLogImmediately(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventName",
            "data"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/StatEventHelper;->mStatDelegate:Lcom/xiaopeng/datalog/stat/AbstractStatDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/datalog/stat/AbstractStatDelegate;->uploadLogImmediately(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public uploadLogOrigin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventName",
            "data"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/StatEventHelper;->mStatDelegate:Lcom/xiaopeng/datalog/stat/AbstractStatDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/datalog/stat/AbstractStatDelegate;->uploadLogOrigin(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public uploadRecentSystemLog()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/StatEventHelper;->mStatDelegate:Lcom/xiaopeng/datalog/stat/AbstractStatDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/datalog/stat/AbstractStatDelegate;->uploadRecentSystemLog()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

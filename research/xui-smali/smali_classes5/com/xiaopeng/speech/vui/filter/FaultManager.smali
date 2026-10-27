.class public Lcom/xiaopeng/speech/vui/filter/FaultManager;
.super Ljava/lang/Object;
.source "FaultManager.java"


# static fields
.field private static volatile faultManager:Lcom/xiaopeng/speech/vui/filter/FaultManager;


# instance fields
.field private mFaultChain:Lcom/xiaopeng/speech/vui/filter/FaultFilterChain;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/xiaopeng/speech/vui/filter/FaultFilterChain;

    invoke-direct {v0}, Lcom/xiaopeng/speech/vui/filter/FaultFilterChain;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/filter/FaultManager;->mFaultChain:Lcom/xiaopeng/speech/vui/filter/FaultFilterChain;

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/filter/FaultManager;->init()V

    .line 18
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/speech/vui/filter/FaultManager;
    .locals 2

    .line 21
    sget-object v0, Lcom/xiaopeng/speech/vui/filter/FaultManager;->faultManager:Lcom/xiaopeng/speech/vui/filter/FaultManager;

    if-nez v0, :cond_1

    .line 22
    const-class v0, Lcom/xiaopeng/speech/vui/filter/FaultManager;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/xiaopeng/speech/vui/filter/FaultManager;->faultManager:Lcom/xiaopeng/speech/vui/filter/FaultManager;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lcom/xiaopeng/speech/vui/filter/FaultManager;

    invoke-direct {v1}, Lcom/xiaopeng/speech/vui/filter/FaultManager;-><init>()V

    sput-object v1, Lcom/xiaopeng/speech/vui/filter/FaultManager;->faultManager:Lcom/xiaopeng/speech/vui/filter/FaultManager;

    .line 26
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 28
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/speech/vui/filter/FaultManager;->faultManager:Lcom/xiaopeng/speech/vui/filter/FaultManager;

    return-object v0
.end method

.method private init()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/filter/FaultManager;->mFaultChain:Lcom/xiaopeng/speech/vui/filter/FaultFilterChain;

    new-instance v1, Lcom/xiaopeng/speech/vui/filter/ListClickEventFaultFilter;

    invoke-direct {v1}, Lcom/xiaopeng/speech/vui/filter/ListClickEventFaultFilter;-><init>()V

    .line 36
    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/filter/FaultFilterChain;->addFilter(Lcom/xiaopeng/speech/vui/filter/IFilter;)Lcom/xiaopeng/speech/vui/filter/FaultFilterChain;

    .line 38
    return-void
.end method


# virtual methods
.method public addFilter(Lcom/xiaopeng/speech/vui/filter/IFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/xiaopeng/speech/vui/filter/IFilter;

    .line 54
    if-eqz p1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/filter/FaultManager;->mFaultChain:Lcom/xiaopeng/speech/vui/filter/FaultFilterChain;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/filter/FaultFilterChain;->addFilter(Lcom/xiaopeng/speech/vui/filter/IFilter;)Lcom/xiaopeng/speech/vui/filter/FaultFilterChain;

    .line 57
    :cond_0
    return-void
.end method

.method public removeAllFilter()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/filter/FaultManager;->mFaultChain:Lcom/xiaopeng/speech/vui/filter/FaultFilterChain;

    iget-object v0, v0, Lcom/xiaopeng/speech/vui/filter/FaultFilterChain;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 64
    return-void
.end method

.method public removeFilter(Lcom/xiaopeng/speech/vui/filter/IFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/xiaopeng/speech/vui/filter/IFilter;

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/filter/FaultManager;->mFaultChain:Lcom/xiaopeng/speech/vui/filter/FaultFilterChain;

    iget-object v0, v0, Lcom/xiaopeng/speech/vui/filter/FaultFilterChain;->mFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public startFault(Lcom/xiaopeng/vui/commons/model/VuiElement;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 1
    .param p1, "vuiScene"    # Lcom/xiaopeng/vui/commons/model/VuiElement;

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/filter/FaultManager;->mFaultChain:Lcom/xiaopeng/speech/vui/filter/FaultFilterChain;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/filter/FaultFilterChain;->doFilter(Lcom/xiaopeng/vui/commons/model/VuiElement;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

    return-object v0
.end method

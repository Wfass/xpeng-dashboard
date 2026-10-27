.class public Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher;
.super Ljava/lang/Object;
.source "PreDownloadedAppFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$AppIcons;,
        Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApp;,
        Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApps;,
        Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadAppsRes;,
        Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$OnFetchListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PreDownloadedAppFetcher"


# instance fields
.field private mListener:Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$OnFetchListener;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$OnFetchListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$OnFetchListener;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher;->mListener:Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$OnFetchListener;

    .line 26
    return-void
.end method

.method private doFetch()V
    .locals 4

    .line 39
    const-string v0, "PreDownloadedAppFetcher"

    const-string v1, "doFetch"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->get()Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/applist/utils/-$$Lambda$PreDownloadedAppFetcher$skbw8v5NWMaQ8930FmrmUq4UL6E;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/applist/utils/-$$Lambda$PreDownloadedAppFetcher$skbw8v5NWMaQ8930FmrmUq4UL6E;-><init>(Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->fetchPreLoadApps(Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$FetchPreLoadAppsCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PreDownloadedAppFetcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doFetch,exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher;->onComplete(ZLjava/lang/String;)V

    .line 47
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static synthetic lambda$skbw8v5NWMaQ8930FmrmUq4UL6E(Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher;->onComplete(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$xfQwpvVOXMBXF1tUWgqkfEBNF24(Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher;->doFetch()V

    return-void
.end method

.method private onComplete(ZLjava/lang/String;)V
    .locals 7
    .param p1, "success"    # Z
    .param p2, "content"    # Ljava/lang/String;

    .line 50
    const-string v0, "PreDownloadedAppFetcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onComplete,success="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",content="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "res":Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadAppsRes;
    const/4 v1, 0x0

    .line 53
    .local v1, "apps":Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApps;
    if-eqz p1, :cond_2

    .line 55
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadAppsRes;

    invoke-virtual {v2, p2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadAppsRes;

    move-object v0, v2

    goto :goto_0

    .line 61
    :catch_0
    move-exception v2

    goto :goto_1

    .line 59
    :cond_0
    const-string v2, "PreDownloadedAppFetcher"

    const-string v3, "onComplete,content is empty"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    goto :goto_2

    .line 61
    :goto_1
    nop

    .line 62
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "PreDownloadedAppFetcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onComplete,parse json failed,e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    if-eqz v0, :cond_1

    const-string v2, "success"

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadAppsRes;->msg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadAppsRes;->data:Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApps;

    .line 66
    iget-object v2, v0, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadAppsRes;->data:Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApps;

    iget-object v2, v2, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApps;->apps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApp;

    .line 67
    .local v3, "app":Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApp;
    const-string v4, "PreDownloadedAppFetcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onComplete,content supportScreen="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApp;->supportScreen:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .end local v3    # "app":Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApp;
    goto :goto_3

    .line 71
    :cond_1
    const/4 p1, 0x0

    .line 74
    :cond_2
    const-string v2, "PreDownloadedAppFetcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onComplete,res="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher;->mListener:Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$OnFetchListener;

    if-eqz v2, :cond_3

    .line 76
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher;->mListener:Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$OnFetchListener;

    invoke-interface {v2, p1, v1}, Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$OnFetchListener;->onComplete(ZLcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher$PreLoadApps;)V

    .line 78
    :cond_3
    return-void
.end method


# virtual methods
.method public startFetch(J)V
    .locals 3
    .param p1, "delay"    # J

    .line 29
    const-string v0, "PreDownloadedAppFetcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startFetch,delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 31
    new-instance v0, Lcom/xiaopeng/xuiservice/applist/utils/-$$Lambda$PreDownloadedAppFetcher$xfQwpvVOXMBXF1tUWgqkfEBNF24;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/applist/utils/-$$Lambda$PreDownloadedAppFetcher$xfQwpvVOXMBXF1tUWgqkfEBNF24;-><init>(Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher;)V

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Lcom/xiaopeng/xuiservice/applist/utils/-$$Lambda$PreDownloadedAppFetcher$xfQwpvVOXMBXF1tUWgqkfEBNF24;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/applist/utils/-$$Lambda$PreDownloadedAppFetcher$xfQwpvVOXMBXF1tUWgqkfEBNF24;-><init>(Lcom/xiaopeng/xuiservice/applist/utils/PreDownloadedAppFetcher;)V

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    .line 36
    :goto_0
    return-void
.end method

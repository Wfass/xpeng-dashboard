.class public final Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$Factory;
.super Lcom/google/android/exoplayer2/upstream/HttpDataSource$BaseFactory;
.source "CronetDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private connectTimeoutMs:I

.field private contentTypePredicate:Lcom/google/common/base/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/p<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final cronetEngine:Lorg/chromium/net/d;

.field private final defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

.field private final executor:Ljava/util/concurrent/Executor;

.field private fallbackFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

.field private handleSetCookieRequests:Z

.field private keepPostFor302Redirects:Z

.field private readTimeoutMs:I

.field private requestPriority:I

.field private resetTimeoutOnRedirects:Z

.field private transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/chromium/net/d;Ljava/util/concurrent/Executor;Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$BaseFactory;-><init>()V

    .line 109
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/net/d;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$Factory;->cronetEngine:Lorg/chromium/net/d;

    .line 110
    iput-object p2, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$Factory;->executor:Ljava/util/concurrent/Executor;

    .line 111
    new-instance p1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$Factory;->defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    const/4 p1, 0x3

    .line 112
    iput p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$Factory;->requestPriority:I

    const/16 p1, 0x1f40

    .line 113
    iput p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$Factory;->connectTimeoutMs:I

    .line 114
    iput p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$Factory;->readTimeoutMs:I

    .line 115
    iput-object p3, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$Factory;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    return-void
.end method


# virtual methods
.method public createDataSourceInternal(Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)Lcom/google/android/exoplayer2/upstream/HttpDataSource;
    .locals 14

    .line 229
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$Factory;->cronetEngine:Lorg/chromium/net/d;

    if-nez v1, :cond_1

    .line 230
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$Factory;->fallbackFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    if-eqz p1, :cond_0

    .line 231
    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/HttpDataSource;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1

    .line 234
    :cond_1
    new-instance v13, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$Factory;->executor:Ljava/util/concurrent/Executor;

    iget v3, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$Factory;->requestPriority:I

    iget v4, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$Factory;->connectTimeoutMs:I

    iget v5, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$Factory;->readTimeoutMs:I

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$Factory;->resetTimeoutOnRedirects:Z

    iget-boolean v7, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$Factory;->handleSetCookieRequests:Z

    iget-object v8, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$Factory;->userAgent:Ljava/lang/String;

    iget-object v10, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$Factory;->contentTypePredicate:Lcom/google/common/base/p;

    iget-boolean v11, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$Factory;->keepPostFor302Redirects:Z

    iget-object v12, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$Factory;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    move-object v0, v13

    move-object v9, p1

    invoke-direct/range {v0 .. v12}, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;-><init>(Lorg/chromium/net/d;Ljava/util/concurrent/Executor;IIIZZLjava/lang/String;Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;Lcom/google/common/base/p;ZLcom/google/android/exoplayer2/upstream/TransferListener;)V

    return-object v13
.end method

.method public setConnectionTimeoutMs(I)Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$Factory;
    .locals 0

    .line 157
    iput p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$Factory;->connectTimeoutMs:I

    return-object p0
.end method

.method public setContentTypePredicate(Lcom/google/common/base/p;)Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$Factory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/p<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$Factory;"
        }
    .end annotation

    .line 213
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$Factory;->contentTypePredicate:Lcom/google/common/base/p;

    return-object p0
.end method

.method public setHandleSetCookieRequests(Z)Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$Factory;
    .locals 0

    .line 185
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$Factory;->handleSetCookieRequests:Z

    return-object p0
.end method

.method public setKeepPostFor302Redirects(Z)Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$Factory;
    .locals 0

    .line 222
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$Factory;->keepPostFor302Redirects:Z

    return-object p0
.end method

.method public setReadTimeoutMs(I)Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$Factory;
    .locals 0

    .line 198
    iput p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$Factory;->readTimeoutMs:I

    return-object p0
.end method

.method public setRequestPriority(I)Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$Factory;
    .locals 0

    .line 144
    iput p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$Factory;->requestPriority:I

    return-object p0
.end method

.method public setResetTimeoutOnRedirects(Z)Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$Factory;
    .locals 0

    .line 170
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$Factory;->resetTimeoutOnRedirects:Z

    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$Factory;
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$Factory;->userAgent:Ljava/lang/String;

    return-object p0
.end method

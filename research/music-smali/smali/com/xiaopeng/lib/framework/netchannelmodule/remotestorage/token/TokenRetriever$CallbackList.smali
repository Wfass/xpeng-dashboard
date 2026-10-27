.class Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$CallbackList;
.super Ljava/lang/Object;
.source "TokenRetriever.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackList"
.end annotation


# instance fields
.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$IRetrievingCallback;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$CallbackList;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$CallbackList;->mCallbacks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$IRetrievingCallback;)V
    .locals 1

    monitor-enter p0

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$CallbackList;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V
    .locals 2

    monitor-enter p0

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$CallbackList;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$IRetrievingCallback;

    .line 199
    invoke-interface {v1, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$IRetrievingCallback;->onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V

    goto :goto_0

    .line 202
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$CallbackList;->mCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSuccess(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;)V
    .locals 2

    monitor-enter p0

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$CallbackList;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$IRetrievingCallback;

    .line 207
    invoke-interface {v1, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$IRetrievingCallback;->onSuccess(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;)V

    goto :goto_0

    .line 210
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$CallbackList;->mCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.class Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator;
.super Ljava/lang/Object;
.source "NetworkChannelsEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mClassType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile mInstance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 68
    .local p0, "this":Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator;, "Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator<TT;>;"
    .local p1, "classz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator;->mClassType:Ljava/lang/Class;

    .line 70
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "lockObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 73
    .local p0, "this":Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator;, "Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator<TT;>;"
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator;->mInstance:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 74
    monitor-enter p1

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator;->mInstance:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 77
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator;->mClassType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator;->mInstance:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to initialize the channel."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_0
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 84
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator;->mInstance:Ljava/lang/Object;

    return-object v0
.end method

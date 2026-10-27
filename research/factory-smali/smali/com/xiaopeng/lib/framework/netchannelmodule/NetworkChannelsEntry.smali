.class public Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;
.super Ljava/lang/Object;
.source "NetworkChannelsEntry.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/module/IModuleEntry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator;
    }
.end annotation


# instance fields
.field private final mHttpChannel:Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator<",
            "Lcom/xiaopeng/lib/framework/netchannelmodule/http/HttpImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessagingChannel:Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator<",
            "Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/MessagingImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteStorageChannel:Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator<",
            "+",
            "Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final mWebSocketChannel:Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator<",
            "Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator;

    const-class v1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/MessagingImpl;

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;->mMessagingChannel:Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator;

    .line 17
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator;

    const-class v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/HttpImpl;

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;->mHttpChannel:Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator;

    .line 18
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator;

    const-class v1, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketImpl;

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;->mWebSocketChannel:Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator;

    .line 22
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/DeviceInfoUtils;->isInternationalVer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator;

    const-class v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteAwsStorageImpl;

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;->mRemoteStorageChannel:Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator;

    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator;

    const-class v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;->mRemoteStorageChannel:Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator;

    .line 27
    :goto_0
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "interfaceClass"    # Ljava/lang/Class;

    .line 31
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging;

    if-ne v0, p1, :cond_0

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;->mMessagingChannel:Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 33
    :cond_0
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage;

    if-ne v0, p1, :cond_1

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;->mRemoteStorageChannel:Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 35
    :cond_1
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    if-ne v0, p1, :cond_2

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;->mHttpChannel:Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 37
    :cond_2
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IRxWebSocket;

    if-ne v0, p1, :cond_3

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;->mWebSocketChannel:Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry$Creator;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 41
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

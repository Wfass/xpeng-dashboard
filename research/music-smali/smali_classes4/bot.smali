.class public Lbot;
.super Lbos;
.source "DuiFMNode.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Lbos;-><init>()V

    .line 14
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/FmLocalOnCommand;

    const-string v1, "command://fm.local.on"

    invoke-virtual {p0, v1, v0}, Lbot;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 15
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/FmLocalOffCommand;

    const-string v1, "command://fm.local.off"

    invoke-virtual {p0, v1, v0}, Lbot;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 16
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/FmNetworkOnCommand;

    const-string v1, "command://fm.network.on"

    invoke-virtual {p0, v1, v0}, Lbot;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 17
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/FmNetworkOffCommand;

    const-string v1, "command://fm.network.off"

    invoke-virtual {p0, v1, v0}, Lbot;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 18
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/PlayFmChannelCommand;

    const-string v1, "command://fm.play.channel"

    invoke-virtual {p0, v1, v0}, Lbot;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 19
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/PlayFmNameCommand;

    const-string v1, "native://fm.play.channelname"

    invoke-virtual {p0, v1, v0}, Lbot;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 20
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/PlayCollectFmCommand;

    const-string v1, "command://fm.play.collection"

    invoke-virtual {p0, v1, v0}, Lbot;->a(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.class public abstract Lcom/xiaopeng/speech/protocol/node/fm/AbsFMListener;
.super Ljava/lang/Object;
.source "AbsFMListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/protocol/node/fm/FMListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFmLocalOff()V
    .locals 0

    .line 16
    return-void
.end method

.method public onFmLocalOn()V
    .locals 0

    .line 12
    return-void
.end method

.method public onFmNetworkOff()V
    .locals 0

    .line 24
    return-void
.end method

.method public onFmNetworkOn()V
    .locals 0

    .line 20
    return-void
.end method

.method public onFmPlayChannel(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 30
    return-void
.end method

.method public onFmPlayChannelName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 35
    return-void
.end method

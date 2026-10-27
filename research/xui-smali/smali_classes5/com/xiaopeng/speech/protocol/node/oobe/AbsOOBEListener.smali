.class public abstract Lcom/xiaopeng/speech/protocol/node/oobe/AbsOOBEListener;
.super Ljava/lang/Object;
.source "AbsOOBEListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/protocol/node/oobe/OOBEListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onASRError()V
    .locals 0

    .line 48
    return-void
.end method

.method public onAddressSet(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 23
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 33
    return-void
.end method

.method public onNetWorkError()V
    .locals 0

    .line 53
    return-void
.end method

.method public onRecordInput(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 18
    return-void
.end method

.method public onRecordResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 13
    return-void
.end method

.method public onSearchError()V
    .locals 0

    .line 43
    return-void
.end method

.method public onSkip()V
    .locals 0

    .line 28
    return-void
.end method

.method public onVolumeChange(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 38
    return-void
.end method

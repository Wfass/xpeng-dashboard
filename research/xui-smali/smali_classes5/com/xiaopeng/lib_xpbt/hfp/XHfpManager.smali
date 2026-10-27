.class public interface abstract Lcom/xiaopeng/lib_xpbt/hfp/XHfpManager;
.super Ljava/lang/Object;
.source "XHfpManager.java"


# virtual methods
.method public abstract acceptCall()Z
.end method

.method public abstract connect(Ljava/lang/String;)Z
.end method

.method public abstract dialNumber(Ljava/lang/String;)Z
.end method

.method public abstract disconnect(Ljava/lang/String;)Z
.end method

.method public abstract getAudioSource()I
.end method

.method public abstract getHfpConnectedAddress()Ljava/lang/String;
.end method

.method public abstract getHfpConnectionState()I
.end method

.method public abstract getHfpConnectionState(Ljava/lang/String;)I
.end method

.method public abstract getRemotePhoneBattery()I
.end method

.method public abstract getRemotePhoneNumber()Ljava/lang/String;
.end method

.method public abstract isHfpInBandRingtoneSupport()Z
.end method

.method public abstract reqHfpSendDtmf(Ljava/lang/String;)Z
.end method

.method public abstract setAudioSource(I)Z
.end method

.method public abstract terminateCall(I)Z
.end method

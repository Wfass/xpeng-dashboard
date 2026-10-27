.class public interface abstract Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;
.super Ljava/lang/Object;
.source "IXiaoPengMicVendor.java"


# virtual methods
.method public abstract create(Ljava/lang/String;ILjava/lang/String;)I
.end method

.method public abstract destroy()I
.end method

.method public abstract enableCarMicrophone(ZI)I
.end method

.method public abstract enableVocalRemove(ZI)I
.end method

.method public abstract enableVocalRemoveDynamic(Z)V
.end method

.method public abstract getBgmVolume()I
.end method

.method public abstract getCarMicrophonePosition()I
.end method

.method public abstract getHandShakeStatus()I
.end method

.method public abstract getMicPowerStatus()I
.end method

.method public abstract getMicStatus()I
.end method

.method public abstract getToken()I
.end method

.method public abstract getVocalRemoveLevel()I
.end method

.method public abstract getVolume(I)I
.end method

.method public abstract isCarMicrophoneEnable()Z
.end method

.method public abstract isVocalRemoveDynamicEnable()Z
.end method

.method public abstract isVocalRemoveEnable()Z
.end method

.method public abstract micCreate(III)I
.end method

.method public abstract micDestroy()I
.end method

.method public abstract micGetAvail()I
.end method

.method public abstract micGetMinBuf(II)I
.end method

.method public abstract micRead([BI)I
.end method

.method public abstract pause()I
.end method

.method public abstract pausePlay()I
.end method

.method public abstract read([BI)I
.end method

.method public abstract recCreate(III)I
.end method

.method public abstract recDestroy()I
.end method

.method public abstract recGetAvail()I
.end method

.method public abstract recGetMinBuf(II)I
.end method

.method public abstract recStart()I
.end method

.method public abstract recStop()I
.end method

.method public abstract registCallback(Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;)I
.end method

.method public abstract releaseKaraokeResource(Ljava/lang/String;)I
.end method

.method public abstract requestKaraokeResource(Ljava/lang/String;Z)I
.end method

.method public abstract resume()I
.end method

.method public abstract resumePlay()I
.end method

.method public abstract saveRec(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract setBgmVolume(I)V
.end method

.method public abstract setBypassFilter(IZZZ)I
.end method

.method public abstract setCommonData(ILjava/lang/String;)I
.end method

.method public abstract setOutPutPath(ZLjava/lang/String;)V
.end method

.method public abstract setRecMode(I)I
.end method

.method public abstract setSignedToken(Ljava/lang/String;)I
.end method

.method public abstract setVolume(II)I
.end method

.method public abstract stopSaveRec()I
.end method

.method public abstract trackCreate(III)I
.end method

.method public abstract trackDestroy()I
.end method

.method public abstract trackGetAvail()I
.end method

.method public abstract trackGetLatency()I
.end method

.method public abstract trackGetMinBuf(II)I
.end method

.method public abstract unRegistCallback()I
.end method

.method public abstract write([BII)I
.end method

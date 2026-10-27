.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IRadioController;
.super Ljava/lang/Object;
.source "IRadioController.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ILifeCycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IRadioController$RadioInfoEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IRadioController$AudioDspInfoEventMsg;
    }
.end annotation


# static fields
.field public static final BAND_AM:I = 0x3

.field public static final BAND_FM:I = 0x0

.field public static final TEF663x_PCHANNEL:I = 0x100

.field public static final X_SOUND_BASS:I = 0x7

.field public static final X_SOUND_CLASSICAL:I = 0x2

.field public static final X_SOUND_CUSTOMIZE:I = 0xa

.field public static final X_SOUND_DEFAULT:I = 0x0

.field public static final X_SOUND_DYNAMIC:I = 0x8

.field public static final X_SOUND_ELEGANT:I = 0xc

.field public static final X_SOUND_HIFI:I = 0xb

.field public static final X_SOUND_JAZZ:I = 0x4

.field public static final X_SOUND_POPULAR:I = 0x5

.field public static final X_SOUND_PUREVOICE:I = 0x9

.field public static final X_SOUND_ROCK:I = 0x1

.field public static final X_SOUND_SURROUND:I = 0x6

.field public static final X_SOUND_VOICE:I = 0x3


# virtual methods
.method public abstract enableAudioDpsInfoCallback()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getAudioDspInfo()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getAudioMode()[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getRadioBand()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getRadioFrequency()[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getRadioInfo()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getRadioVolumeAutoFocus()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getRadioVolumePercent()[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getTunerPowerStatus()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getXSoundType()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setAudioBalanceFader(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setAudioGEQParams(IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setExhibitionModeVolume(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setFmVolume(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setMainAudioMode(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setPowerOffTuner()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setPowerOnTuner()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setRadioBand(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setRadioFrequency(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setRadioSearchDown()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setRadioSearchUp()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setRadioVolumeAutoFocus(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setRadioVolumePercent(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setStartFullBandScan()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setStopFullBandScan()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setXSoundType(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

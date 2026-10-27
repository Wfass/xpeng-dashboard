.class public interface abstract Lcom/loostone/libtuning/inf/extern/IMicControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loostone/libtuning/inf/extern/IMicControl$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u001c\n\u0002\u0010\u0006\n\u0002\u0008\u0008\u0008f\u0018\u00002\u00020\u0001J\u0017\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0006\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\t\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\t\u0010\u0005J\u0017\u0010\n\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\n\u0010\u0005J\u0017\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u000b\u0010\u0005J\u0017\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u000c\u0010\u0005J\u0017\u0010\r\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\r\u0010\u0005J\u0017\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u000e\u0010\u0005J\u0017\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u000f\u0010\u0005J\u0017\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0010\u0010\u0005J\u0017\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0011\u0010\u0005J\u000f\u0010\u0012\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0012\u0010\u0007J\u000f\u0010\u0013\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0013\u0010\u0007J\u000f\u0010\u0014\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0014\u0010\u0007J\u000f\u0010\u0015\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0015\u0010\u0007J\u000f\u0010\u0016\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0016\u0010\u0007J\u000f\u0010\u0017\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0017\u0010\u0007J\u000f\u0010\u0018\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0018\u0010\u0007J\u000f\u0010\u0019\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0019\u0010\u0007J\u000f\u0010\u001a\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u001a\u0010\u0007J\u0017\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u001c\u0010\u0005J\u0017\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u001e\u0010\u0005J\u0017\u0010 \u001a\u00020\u001f2\u0006\u0010\u001d\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008 \u0010!J\u0017\u0010\"\u001a\u00020\u001f2\u0006\u0010\u001d\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\"\u0010!J\u0017\u0010#\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008#\u0010\u0005J\u000f\u0010$\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008$\u0010\u0007J\u0017\u0010&\u001a\u00020\u00022\u0006\u0010%\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008&\u0010\u0005\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/loostone/libtuning/inf/extern/IMicControl;",
        "",
        "",
        "type",
        "setAudioEffect",
        "(I)I",
        "getAudioEffect",
        "()I",
        "value",
        "setMicEQ1",
        "setMicEQ2",
        "setMicEQ3",
        "setMicEQ4",
        "setMicEQ5",
        "setMicEQ6",
        "setMicEQ7",
        "setMicEQ8",
        "setMicEQ9",
        "getMicEQ1",
        "getMicEQ2",
        "getMicEQ3",
        "getMicEQ4",
        "getMicEQ5",
        "getMicEQ6",
        "getMicEQ7",
        "getMicEQ8",
        "getMicEQ9",
        "status",
        "setMicSwitch",
        "mic",
        "getBaseStatus",
        "",
        "getMicBattery",
        "(I)D",
        "getMicBatteryPercentage",
        "getMicVolumeHW",
        "getMicShiftFrequency",
        "fsEnable",
        "setMicShiftFrequency",
        "libTuning_CAR_XIAOPENGRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# virtual methods
.method public abstract getAudioEffect()I
.end method

.method public abstract getBaseStatus(I)I
.end method

.method public abstract getMicBattery(I)D
.end method

.method public abstract getMicBatteryPercentage(I)D
.end method

.method public abstract getMicEQ1()I
.end method

.method public abstract getMicEQ2()I
.end method

.method public abstract getMicEQ3()I
.end method

.method public abstract getMicEQ4()I
.end method

.method public abstract getMicEQ5()I
.end method

.method public abstract getMicEQ6()I
.end method

.method public abstract getMicEQ7()I
.end method

.method public abstract getMicEQ8()I
.end method

.method public abstract getMicEQ9()I
.end method

.method public abstract getMicShiftFrequency()I
.end method

.method public abstract getMicVolumeHW(I)I
.end method

.method public abstract setAudioEffect(I)I
.end method

.method public abstract setMicEQ1(I)I
.end method

.method public abstract setMicEQ2(I)I
.end method

.method public abstract setMicEQ3(I)I
.end method

.method public abstract setMicEQ4(I)I
.end method

.method public abstract setMicEQ5(I)I
.end method

.method public abstract setMicEQ6(I)I
.end method

.method public abstract setMicEQ7(I)I
.end method

.method public abstract setMicEQ8(I)I
.end method

.method public abstract setMicEQ9(I)I
.end method

.method public abstract setMicShiftFrequency(I)I
.end method

.method public abstract setMicSwitch(I)I
.end method

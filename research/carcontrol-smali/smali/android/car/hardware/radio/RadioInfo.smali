.class public Landroid/car/hardware/radio/RadioInfo;
.super Ljava/lang/Object;
.source "RadioInfo.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final BAND_AM:I = 0x0

.field public static final BAND_FM:I = 0x1

.field public static final TUNER_POWER_OFF:I = 0x0

.field public static final TUNER_POWER_ON:I = 0x1


# instance fields
.field private audio_status_callback:I

.field private bassGain:I

.field private freqPoint:I

.field private gBanlanceLevel:I

.field private gFaderLevel:I

.field private heroLoudnessOn:I

.field private mMuteState:I

.field private mTunerLevel:I

.field private midGain:I

.field private pInputSource:I

.field private primaryVolume:I

.field private radioCurrentBand:I

.field private radioCurrentFreq:I

.field private state:I

.field private trebleGain:I

.field private tunerpower:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Landroid/car/hardware/radio/RadioInfo;->audio_status_callback:I

    return-void
.end method

.method public constructor <init>(Landroid/hardware/radio/RadioManager$ProgramInfo;Z)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Landroid/car/hardware/radio/RadioInfo;->audio_status_callback:I

    .line 48
    iput p2, p0, Landroid/car/hardware/radio/RadioInfo;->tunerpower:I

    if-eqz p1, :cond_1

    .line 49
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 50
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/radio/ProgramSelector;->getProgramType()I

    move-result p2

    const/4 v0, 0x1

    if-ne v0, p2, :cond_0

    const/4 p2, 0x0

    .line 52
    iput p2, p0, Landroid/car/hardware/radio/RadioInfo;->radioCurrentBand:I

    goto :goto_0

    .line 54
    :cond_0
    iput v0, p0, Landroid/car/hardware/radio/RadioInfo;->radioCurrentBand:I

    .line 56
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/hardware/radio/ProgramSelector;->getFirstId(I)J

    move-result-wide v0

    long-to-int p2, v0

    iput p2, p0, Landroid/car/hardware/radio/RadioInfo;->radioCurrentFreq:I

    .line 57
    iput p2, p0, Landroid/car/hardware/radio/RadioInfo;->freqPoint:I

    .line 58
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSignalStrength()I

    move-result p2

    iput p2, p0, Landroid/car/hardware/radio/RadioInfo;->mTunerLevel:I

    .line 60
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getVendorInfo()Ljava/util/Map;

    move-result-object p1

    const-string p2, "audio_status_callback"

    .line 61
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/car/hardware/radio/RadioInfo;->StringToInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Landroid/car/hardware/radio/RadioInfo;->audio_status_callback:I

    const-string p2, "primaryVolume"

    .line 64
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/car/hardware/radio/RadioInfo;->StringToInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/car/hardware/radio/RadioInfo;->primaryVolume:I

    const-string/jumbo v0, "radioCurrentBand"

    .line 65
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/car/hardware/radio/RadioInfo;->StringToInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/car/hardware/radio/RadioInfo;->radioCurrentBand:I

    const-string v0, "freqPoint"

    .line 66
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/car/hardware/radio/RadioInfo;->StringToInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/car/hardware/radio/RadioInfo;->freqPoint:I

    const-string v0, "pInputSource"

    .line 67
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/car/hardware/radio/RadioInfo;->StringToInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/car/hardware/radio/RadioInfo;->pInputSource:I

    const-string/jumbo v0, "tunerpower"

    .line 68
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/car/hardware/radio/RadioInfo;->StringToInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/car/hardware/radio/RadioInfo;->tunerpower:I

    const-string v0, "mMuteState"

    .line 69
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/car/hardware/radio/RadioInfo;->StringToInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/car/hardware/radio/RadioInfo;->mMuteState:I

    const-string v0, "mTunerLevel"

    .line 70
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/car/hardware/radio/RadioInfo;->StringToInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/car/hardware/radio/RadioInfo;->mTunerLevel:I

    const-string/jumbo v0, "state"

    .line 71
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/car/hardware/radio/RadioInfo;->StringToInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/car/hardware/radio/RadioInfo;->state:I

    .line 72
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/car/hardware/radio/RadioInfo;->StringToInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/radio/RadioInfo;->primaryVolume:I

    :cond_1
    return-void
.end method

.method public static StringToInt(Ljava/lang/String;)I
    .locals 0

    .line 39
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\"primaryVolume\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/hardware/radio/RadioInfo;->primaryVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \"radioCurrentBand\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/hardware/radio/RadioInfo;->radioCurrentBand:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \"radioCurrentFreq\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/hardware/radio/RadioInfo;->radioCurrentFreq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \"freqPoint\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/hardware/radio/RadioInfo;->freqPoint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \"pInputSource\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/hardware/radio/RadioInfo;->pInputSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \"tunerpower\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/hardware/radio/RadioInfo;->tunerpower:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \"bassGain\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/hardware/radio/RadioInfo;->bassGain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \"midGain\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/hardware/radio/RadioInfo;->midGain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \"trebleGain\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/hardware/radio/RadioInfo;->trebleGain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \"gBanlanceLevel\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/hardware/radio/RadioInfo;->gBanlanceLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \"gFaderLevel\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/hardware/radio/RadioInfo;->gFaderLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \"heroLoudnessOn\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/hardware/radio/RadioInfo;->heroLoudnessOn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \"mMuteState\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/hardware/radio/RadioInfo;->mMuteState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \"mTunerLevel\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/hardware/radio/RadioInfo;->mTunerLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \"state\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/hardware/radio/RadioInfo;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

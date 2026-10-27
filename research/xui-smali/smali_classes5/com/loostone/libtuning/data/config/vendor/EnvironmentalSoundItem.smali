.class public final Lcom/loostone/libtuning/data/config/vendor/EnvironmentalSoundItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u001e\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008!\u0010\"J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R\"\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\"\u0010\u000c\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\u0007\u001a\u0004\u0008\r\u0010\t\"\u0004\u0008\u000e\u0010\u000bR\"\u0010\u000f\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0007\u001a\u0004\u0008\u0010\u0010\t\"\u0004\u0008\u0011\u0010\u000bR\"\u0010\u0012\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0007\u001a\u0004\u0008\u0013\u0010\t\"\u0004\u0008\u0014\u0010\u000bR\"\u0010\u0015\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0007\u001a\u0004\u0008\u0016\u0010\t\"\u0004\u0008\u0017\u0010\u000bR\"\u0010\u0018\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0007\u001a\u0004\u0008\u0019\u0010\t\"\u0004\u0008\u001a\u0010\u000bR\"\u0010\u001b\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u0007\u001a\u0004\u0008\u001c\u0010\t\"\u0004\u0008\u001d\u0010\u000bR\"\u0010\u001e\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u0007\u001a\u0004\u0008\u001f\u0010\t\"\u0004\u0008 \u0010\u000b\u00a8\u0006#"
    }
    d2 = {
        "Lcom/loostone/libtuning/data/config/vendor/EnvironmentalSoundItem;",
        "",
        "",
        "toString",
        "()Ljava/lang/String;",
        "",
        "aef2EchoTime",
        "I",
        "getAef2EchoTime",
        "()I",
        "setAef2EchoTime",
        "(I)V",
        "aef2EchoFeedback",
        "getAef2EchoFeedback",
        "setAef2EchoFeedback",
        "aef2ReverbMode",
        "getAef2ReverbMode",
        "setAef2ReverbMode",
        "aef2ReverbTime",
        "getAef2ReverbTime",
        "setAef2ReverbTime",
        "aef2EchoGain",
        "getAef2EchoGain",
        "setAef2EchoGain",
        "type",
        "getType",
        "setType",
        "aef2ReverbVolume",
        "getAef2ReverbVolume",
        "setAef2ReverbVolume",
        "aef2EchoMode",
        "getAef2EchoMode",
        "setAef2EchoMode",
        "<init>",
        "()V",
        "libTuning_CAR_XIAOPENGRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private aef2EchoFeedback:I

.field private aef2EchoGain:I

.field private aef2EchoMode:I

.field private aef2EchoTime:I

.field private aef2ReverbMode:I

.field private aef2ReverbTime:I

.field private aef2ReverbVolume:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x2

    iput v0, p0, Lcom/loostone/libtuning/data/config/vendor/EnvironmentalSoundItem;->aef2EchoMode:I

    return-void
.end method


# virtual methods
.method public final getAef2EchoFeedback()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/loostone/libtuning/data/config/vendor/EnvironmentalSoundItem;->aef2EchoFeedback:I

    return v0
.end method

.method public final getAef2EchoGain()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/loostone/libtuning/data/config/vendor/EnvironmentalSoundItem;->aef2EchoGain:I

    return v0
.end method

.method public final getAef2EchoMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/loostone/libtuning/data/config/vendor/EnvironmentalSoundItem;->aef2EchoMode:I

    return v0
.end method

.method public final getAef2EchoTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/loostone/libtuning/data/config/vendor/EnvironmentalSoundItem;->aef2EchoTime:I

    return v0
.end method

.method public final getAef2ReverbMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/loostone/libtuning/data/config/vendor/EnvironmentalSoundItem;->aef2ReverbMode:I

    return v0
.end method

.method public final getAef2ReverbTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/loostone/libtuning/data/config/vendor/EnvironmentalSoundItem;->aef2ReverbTime:I

    return v0
.end method

.method public final getAef2ReverbVolume()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/loostone/libtuning/data/config/vendor/EnvironmentalSoundItem;->aef2ReverbVolume:I

    return v0
.end method

.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/loostone/libtuning/data/config/vendor/EnvironmentalSoundItem;->type:I

    return v0
.end method

.method public final setAef2EchoFeedback(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/loostone/libtuning/data/config/vendor/EnvironmentalSoundItem;->aef2EchoFeedback:I

    return-void
.end method

.method public final setAef2EchoGain(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/loostone/libtuning/data/config/vendor/EnvironmentalSoundItem;->aef2EchoGain:I

    return-void
.end method

.method public final setAef2EchoMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/loostone/libtuning/data/config/vendor/EnvironmentalSoundItem;->aef2EchoMode:I

    return-void
.end method

.method public final setAef2EchoTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/loostone/libtuning/data/config/vendor/EnvironmentalSoundItem;->aef2EchoTime:I

    return-void
.end method

.method public final setAef2ReverbMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/loostone/libtuning/data/config/vendor/EnvironmentalSoundItem;->aef2ReverbMode:I

    return-void
.end method

.method public final setAef2ReverbTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/loostone/libtuning/data/config/vendor/EnvironmentalSoundItem;->aef2ReverbTime:I

    return-void
.end method

.method public final setAef2ReverbVolume(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/loostone/libtuning/data/config/vendor/EnvironmentalSoundItem;->aef2ReverbVolume:I

    return-void
.end method

.method public final setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/loostone/libtuning/data/config/vendor/EnvironmentalSoundItem;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EnvironmentalSoundItem(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/loostone/libtuning/data/config/vendor/EnvironmentalSoundItem;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lst_aef2ReverbMode_tsl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/loostone/libtuning/data/config/vendor/EnvironmentalSoundItem;->aef2ReverbMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lst_aef2ReverbVolume_tsl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/loostone/libtuning/data/config/vendor/EnvironmentalSoundItem;->aef2ReverbVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lst_aef2ReverbTime_tsl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/loostone/libtuning/data/config/vendor/EnvironmentalSoundItem;->aef2ReverbTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lst_aef2EchoMode_tsl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/loostone/libtuning/data/config/vendor/EnvironmentalSoundItem;->aef2EchoMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lst_aef2EchoGain_tsl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/loostone/libtuning/data/config/vendor/EnvironmentalSoundItem;->aef2EchoGain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lst_aef2EchoTime_tsl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/loostone/libtuning/data/config/vendor/EnvironmentalSoundItem;->aef2EchoTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lst_aef2EchoFeedback_tsl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/loostone/libtuning/data/config/vendor/EnvironmentalSoundItem;->aef2EchoFeedback:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

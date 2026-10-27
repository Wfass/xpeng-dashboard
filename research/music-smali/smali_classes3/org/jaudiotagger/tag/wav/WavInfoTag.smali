.class public Lorg/jaudiotagger/tag/wav/WavInfoTag;
.super Lorg/jaudiotagger/audio/generic/GenericTag;
.source "WavInfoTag.java"


# instance fields
.field private endLocationInFile:Ljava/lang/Long;

.field private startLocationInFile:Ljava/lang/Long;

.field private unrecognisedFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagTextField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 51
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->ALBUM:Lorg/jaudiotagger/tag/FieldKey;

    const/16 v1, 0xe

    new-array v1, v1, [Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->ARTIST:Lorg/jaudiotagger/tag/FieldKey;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->ALBUM_ARTIST:Lorg/jaudiotagger/tag/FieldKey;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->TITLE:Lorg/jaudiotagger/tag/FieldKey;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->GENRE:Lorg/jaudiotagger/tag/FieldKey;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->COMMENT:Lorg/jaudiotagger/tag/FieldKey;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->YEAR:Lorg/jaudiotagger/tag/FieldKey;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->RECORD_LABEL:Lorg/jaudiotagger/tag/FieldKey;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->ISRC:Lorg/jaudiotagger/tag/FieldKey;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->COMPOSER:Lorg/jaudiotagger/tag/FieldKey;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->LYRICIST:Lorg/jaudiotagger/tag/FieldKey;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->ENCODER:Lorg/jaudiotagger/tag/FieldKey;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->CONDUCTOR:Lorg/jaudiotagger/tag/FieldKey;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->RATING:Lorg/jaudiotagger/tag/FieldKey;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/tag/wav/WavInfoTag;->supportedKeys:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/GenericTag;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/wav/WavInfoTag;->unrecognisedFields:Ljava/util/List;

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lorg/jaudiotagger/tag/wav/WavInfoTag;->startLocationInFile:Ljava/lang/Long;

    .line 46
    iput-object v0, p0, Lorg/jaudiotagger/tag/wav/WavInfoTag;->endLocationInFile:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public addUnRecognizedField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 128
    iget-object v0, p0, Lorg/jaudiotagger/tag/wav/WavInfoTag;->unrecognisedFields:Ljava/util/List;

    new-instance v1, Lorg/jaudiotagger/audio/generic/GenericTag$GenericTagTextField;

    invoke-direct {v1, p0, p1, p2}, Lorg/jaudiotagger/audio/generic/GenericTag$GenericTagTextField;-><init>(Lorg/jaudiotagger/audio/generic/GenericTag;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createCompilationField(Z)Lorg/jaudiotagger/tag/TagField;
    .locals 3

    .line 94
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->IS_COMPILATION:Lorg/jaudiotagger/tag/FieldKey;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1
.end method

.method public getEndLocationInFile()Ljava/lang/Long;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/jaudiotagger/tag/wav/WavInfoTag;->endLocationInFile:Ljava/lang/Long;

    return-object v0
.end method

.method public getSizeOfTag()J
    .locals 4

    .line 119
    iget-object v0, p0, Lorg/jaudiotagger/tag/wav/WavInfoTag;->endLocationInFile:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/jaudiotagger/tag/wav/WavInfoTag;->startLocationInFile:Ljava/lang/Long;

    if-nez v1, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lorg/jaudiotagger/tag/wav/WavInfoTag;->startLocationInFile:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x8

    sub-long/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getStartLocationInFile()Ljava/lang/Long;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/jaudiotagger/tag/wav/WavInfoTag;->startLocationInFile:Ljava/lang/Long;

    return-object v0
.end method

.method public getUnrecognisedFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagTextField;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lorg/jaudiotagger/tag/wav/WavInfoTag;->unrecognisedFields:Ljava/util/List;

    return-object v0
.end method

.method public setEndLocationInFile(J)V
    .locals 0

    .line 114
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/wav/WavInfoTag;->endLocationInFile:Ljava/lang/Long;

    return-void
.end method

.method public setStartLocationInFile(J)V
    .locals 0

    .line 104
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/wav/WavInfoTag;->startLocationInFile:Ljava/lang/Long;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wav Info Tag:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v1

    const-string v2, "\n"

    if-eqz v1, :cond_0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\tstartLocation:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/jaudiotagger/logging/Hex;->asDecAndHex(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_0
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\tendLocation:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/wav/WavInfoTag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/jaudiotagger/logging/Hex;->asDecAndHex(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_1
    invoke-super {p0}, Lorg/jaudiotagger/audio/generic/GenericTag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v1, p0, Lorg/jaudiotagger/tag/wav/WavInfoTag;->unrecognisedFields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "\nUnrecognized Tags:\n"

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object v1, p0, Lorg/jaudiotagger/tag/wav/WavInfoTag;->unrecognisedFields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jaudiotagger/tag/TagTextField;

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lorg/jaudiotagger/tag/TagTextField;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lorg/jaudiotagger/tag/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

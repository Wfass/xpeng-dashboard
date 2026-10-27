.class public Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;
.super Lorg/jaudiotagger/audio/generic/GenericAudioHeader;
.source "AiffAudioHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jaudiotagger/audio/aiff/AiffAudioHeader$Endian;
    }
.end annotation


# instance fields
.field private annotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private applicationIdentifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private audioEncoding:Ljava/lang/String;

.field private author:Ljava/lang/String;

.field private comments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private copyright:Ljava/lang/String;

.field private endian:Lorg/jaudiotagger/audio/aiff/AiffAudioHeader$Endian;

.field private fileType:Lorg/jaudiotagger/audio/aiff/AiffType;

.field private name:Ljava/lang/String;

.field private timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->applicationIdentifiers:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->comments:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->annotations:Ljava/util/List;

    .line 38
    sget-object v0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader$Endian;->BIG_ENDIAN:Lorg/jaudiotagger/audio/aiff/AiffAudioHeader$Endian;

    iput-object v0, p0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->endian:Lorg/jaudiotagger/audio/aiff/AiffAudioHeader$Endian;

    return-void
.end method


# virtual methods
.method public addAnnotation(Ljava/lang/String;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->annotations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addApplicationIdentifier(Ljava/lang/String;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->applicationIdentifiers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addComment(Ljava/lang/String;)V
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->comments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->annotations:Ljava/util/List;

    return-object v0
.end method

.method public getApplicationIdentifiers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->applicationIdentifiers:Ljava/util/List;

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getComments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->comments:Ljava/util/List;

    return-object v0
.end method

.method public getCopyright()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->copyright:Ljava/lang/String;

    return-object v0
.end method

.method public getEndian()Lorg/jaudiotagger/audio/aiff/AiffAudioHeader$Endian;
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->endian:Lorg/jaudiotagger/audio/aiff/AiffAudioHeader$Endian;

    return-object v0
.end method

.method public getFileType()Lorg/jaudiotagger/audio/aiff/AiffType;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->fileType:Lorg/jaudiotagger/audio/aiff/AiffType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->timestamp:Ljava/util/Date;

    return-object v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->author:Ljava/lang/String;

    return-void
.end method

.method public setCopyright(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->copyright:Ljava/lang/String;

    return-void
.end method

.method public setEndian(Lorg/jaudiotagger/audio/aiff/AiffAudioHeader$Endian;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->endian:Lorg/jaudiotagger/audio/aiff/AiffAudioHeader$Endian;

    return-void
.end method

.method public setFileType(Lorg/jaudiotagger/audio/aiff/AiffType;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->fileType:Lorg/jaudiotagger/audio/aiff/AiffType;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->name:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(Ljava/util/Date;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->timestamp:Ljava/util/Date;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    iget-object v2, p0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\tName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :cond_0
    iget-object v2, p0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->author:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\tAuthor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->author:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :cond_1
    iget-object v2, p0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->copyright:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\tCopyright:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->copyright:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :cond_2
    iget-object v2, p0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->comments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "\t"

    if-lez v2, :cond_3

    const-string v2, "Comments:\n"

    .line 207
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget-object v2, p0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->comments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 210
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 214
    :cond_3
    iget-object v2, p0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->applicationIdentifiers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    const-string v2, "ApplicationIds:\n"

    .line 216
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    iget-object v2, p0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->applicationIdentifiers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 219
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 223
    :cond_4
    iget-object v2, p0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->annotations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    const-string v2, "Annotations:\n"

    .line 225
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget-object v2, p0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;->annotations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 228
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 231
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

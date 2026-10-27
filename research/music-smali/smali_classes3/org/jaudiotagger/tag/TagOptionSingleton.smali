.class public Lorg/jaudiotagger/tag/TagOptionSingleton;
.super Ljava/lang/Object;
.source "TagOptionSingleton.java"


# static fields
.field private static DEFAULT:Ljava/lang/String;

.field private static defaultOptions:Ljava/lang/String;

.field private static tagOptionTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/jaudiotagger/tag/TagOptionSingleton;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private checkIsWritable:Z

.field private filenameTagSave:Z

.field private id3v1Save:Z

.field private id3v1SaveAlbum:Z

.field private id3v1SaveArtist:Z

.field private id3v1SaveComment:Z

.field private id3v1SaveGenre:Z

.field private id3v1SaveTitle:Z

.field private id3v1SaveTrack:Z

.field private id3v1SaveYear:Z

.field private id3v23DefaultTextEncoding:B

.field private id3v24DefaultTextEncoding:B

.field private id3v24UnicodeTextEncoding:B

.field private id3v2PaddingCopyTag:Z

.field private id3v2PaddingWillShorten:Z

.field private id3v2Save:Z

.field private id3v2Version:Lorg/jaudiotagger/tag/reference/ID3V2Version;

.field private isAPICDescriptionITunesCompatible:Z

.field private isEncodeUTF16BomAsLittleEndian:Z

.field private isWriteMp3GenresAsText:Z

.field private isWriteMp4GenresAsText:Z

.field private isWriteWavForTwonky:Z

.field private keywordMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/jaudiotagger/tag/id3/framebody/ID3v24FrameBody;",
            ">;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private language:Ljava/lang/String;

.field private lyrics3KeepEmptyFieldIfRead:Z

.field private lyrics3Save:Z

.field private lyrics3SaveEmptyField:Z

.field private lyrics3SaveFieldMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private numberMP3SyncFrame:I

.field private originalSavedAfterAdjustingID3v2Padding:Z

.field private padNumberTotalLength:Lorg/jaudiotagger/tag/options/PadNumberOption;

.field private padNumbers:Z

.field private parenthesisMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private playerCompatability:I

.field private preserveFileIdentity:Z

.field private removeTrailingTerminatorOnWrite:Z

.field private replaceWordMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private resetTextEncodingForExistingFrames:Z

.field private timeStampFormat:B

.field private truncateTextWithoutErrors:Z

.field private unsyncTags:Z

.field private vorbisAlbumArtistReadOptions:Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

.field private vorbisAlbumArtistSaveOptions:Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;

.field private wavOptions:Lorg/jaudiotagger/audio/wav/WavOptions;

.field private wavSaveOptions:Lorg/jaudiotagger/audio/wav/WavSaveOptions;

.field private wavSaveOrder:Lorg/jaudiotagger/audio/wav/WavSaveOrder;

.field private writeChunkSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jaudiotagger/tag/TagOptionSingleton;->tagOptionTable:Ljava/util/HashMap;

    const-string v0, "default"

    .line 119
    sput-object v0, Lorg/jaudiotagger/tag/TagOptionSingleton;->DEFAULT:Ljava/lang/String;

    .line 124
    sget-object v0, Lorg/jaudiotagger/tag/TagOptionSingleton;->DEFAULT:Ljava/lang/String;

    sput-object v0, Lorg/jaudiotagger/tag/TagOptionSingleton;->defaultOptions:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isWriteWavForTwonky:Z

    .line 51
    sget-object v1, Lorg/jaudiotagger/audio/wav/WavOptions;->READ_ID3_ONLY:Lorg/jaudiotagger/audio/wav/WavOptions;

    iput-object v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->wavOptions:Lorg/jaudiotagger/audio/wav/WavOptions;

    .line 63
    sget-object v1, Lorg/jaudiotagger/audio/wav/WavSaveOptions;->SAVE_BOTH:Lorg/jaudiotagger/audio/wav/WavSaveOptions;

    iput-object v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->wavSaveOptions:Lorg/jaudiotagger/audio/wav/WavSaveOptions;

    .line 75
    sget-object v1, Lorg/jaudiotagger/audio/wav/WavSaveOrder;->INFO_THEN_ID3:Lorg/jaudiotagger/audio/wav/WavSaveOrder;

    iput-object v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->wavSaveOrder:Lorg/jaudiotagger/audio/wav/WavSaveOrder;

    .line 87
    sget-object v1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;->WRITE_ALBUMARTIST:Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;

    iput-object v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->vorbisAlbumArtistSaveOptions:Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;

    .line 99
    sget-object v1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;->READ_ALBUMARTIST_THEN_JRIVER:Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    iput-object v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->vorbisAlbumArtistReadOptions:Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    .line 129
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->keywordMap:Ljava/util/HashMap;

    .line 135
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3SaveFieldMap:Ljava/util/HashMap;

    .line 140
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->parenthesisMap:Ljava/util/HashMap;

    .line 145
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->replaceWordMap:Ljava/util/HashMap;

    const-string v1, "eng"

    .line 152
    iput-object v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->language:Ljava/lang/String;

    .line 158
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->filenameTagSave:Z

    const/4 v1, 0x1

    .line 163
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1Save:Z

    .line 169
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveAlbum:Z

    .line 175
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveArtist:Z

    .line 181
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveComment:Z

    .line 187
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveGenre:Z

    .line 193
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveTitle:Z

    .line 199
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveTrack:Z

    .line 205
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveYear:Z

    .line 212
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2PaddingCopyTag:Z

    .line 218
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2PaddingWillShorten:Z

    .line 223
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2Save:Z

    .line 230
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3KeepEmptyFieldIfRead:Z

    .line 236
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3Save:Z

    .line 243
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3SaveEmptyField:Z

    .line 248
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->originalSavedAfterAdjustingID3v2Padding:Z

    const/4 v2, 0x2

    .line 254
    iput-byte v2, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->timeStampFormat:B

    const/4 v2, 0x3

    .line 261
    iput v2, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->numberMP3SyncFrame:I

    .line 267
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->unsyncTags:Z

    .line 273
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->removeTrailingTerminatorOnWrite:Z

    .line 279
    iput-byte v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v23DefaultTextEncoding:B

    .line 285
    iput-byte v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v24DefaultTextEncoding:B

    .line 291
    iput-byte v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v24UnicodeTextEncoding:B

    .line 299
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->resetTextEncodingForExistingFrames:Z

    .line 306
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->truncateTextWithoutErrors:Z

    .line 313
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->padNumbers:Z

    .line 321
    sget-object v2, Lorg/jaudiotagger/tag/options/PadNumberOption;->PAD_ONE_ZERO:Lorg/jaudiotagger/tag/options/PadNumberOption;

    iput-object v2, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->padNumberTotalLength:Lorg/jaudiotagger/tag/options/PadNumberOption;

    .line 323
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isAPICDescriptionITunesCompatible:Z

    .line 329
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isEncodeUTF16BomAsLittleEndian:Z

    const/4 v2, -0x1

    .line 336
    iput v2, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->playerCompatability:I

    const-wide/32 v2, 0x400000

    .line 341
    iput-wide v2, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->writeChunkSize:J

    .line 343
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isWriteMp4GenresAsText:Z

    .line 345
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isWriteMp3GenresAsText:Z

    .line 347
    sget-object v2, Lorg/jaudiotagger/tag/reference/ID3V2Version;->ID3_V23:Lorg/jaudiotagger/tag/reference/ID3V2Version;

    iput-object v2, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2Version:Lorg/jaudiotagger/tag/reference/ID3V2Version;

    .line 353
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->checkIsWritable:Z

    .line 358
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->preserveFileIdentity:Z

    .line 370
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->setToDefault()V

    return-void
.end method

.method public static getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;
    .locals 1

    .line 379
    sget-object v0, Lorg/jaudiotagger/tag/TagOptionSingleton;->defaultOptions:Ljava/lang/String;

    invoke-static {v0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagOptionSingleton;
    .locals 2

    .line 388
    sget-object v0, Lorg/jaudiotagger/tag/TagOptionSingleton;->tagOptionTable:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/TagOptionSingleton;

    if-nez v0, :cond_0

    .line 392
    new-instance v0, Lorg/jaudiotagger/tag/TagOptionSingleton;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/TagOptionSingleton;-><init>()V

    .line 393
    sget-object v1, Lorg/jaudiotagger/tag/TagOptionSingleton;->tagOptionTable:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static getInstanceKey()Ljava/lang/String;
    .locals 1

    .line 445
    sget-object v0, Lorg/jaudiotagger/tag/TagOptionSingleton;->defaultOptions:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addKeyword(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/jaudiotagger/tag/id3/framebody/ID3v24FrameBody;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1002
    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 1007
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1011
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->keywordMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1013
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1014
    iget-object v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->keywordMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1018
    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->keywordMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/LinkedList;

    .line 1021
    :goto_0
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    .line 1004
    :cond_2
    new-instance p2, Lorg/jaudiotagger/tag/TagException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid class type. Must be AbstractId3v2FrameBody "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jaudiotagger/tag/TagException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public addParenthesis(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1031
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->parenthesisMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1040
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->replaceWordMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getID3V2Version()Lorg/jaudiotagger/tag/reference/ID3V2Version;
    .locals 1

    .line 428
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2Version:Lorg/jaudiotagger/tag/reference/ID3V2Version;

    return-object v0
.end method

.method public getId3v23DefaultTextEncoding()B
    .locals 1

    .line 1091
    iget-byte v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v23DefaultTextEncoding:B

    return v0
.end method

.method public getId3v24DefaultTextEncoding()B
    .locals 1

    .line 1116
    iget-byte v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v24DefaultTextEncoding:B

    return v0
.end method

.method public getId3v24UnicodeTextEncoding()B
    .locals 1

    .line 1142
    iget-byte v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v24UnicodeTextEncoding:B

    return v0
.end method

.method public getKeywordIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/jaudiotagger/tag/id3/framebody/ID3v24FrameBody;",
            ">;>;"
        }
    .end annotation

    .line 633
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->keywordMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getKeywordListIterator(Ljava/lang/Class;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/jaudiotagger/tag/id3/framebody/ID3v24FrameBody;",
            ">;)",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 642
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->keywordMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 667
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLyrics3SaveField(Ljava/lang/String;)Z
    .locals 1

    .line 738
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3SaveFieldMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getLyrics3SaveFieldMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 746
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3SaveFieldMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getNewReplaceWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 755
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->replaceWordMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getNumberMP3SyncFrame()I
    .locals 1

    .line 781
    iget v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->numberMP3SyncFrame:I

    return v0
.end method

.method public getOldReplaceWordIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 789
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->replaceWordMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getOpenParenthesisIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 806
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->parenthesisMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getPadNumberTotalLength()Lorg/jaudiotagger/tag/options/PadNumberOption;
    .locals 1

    .line 1290
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->padNumberTotalLength:Lorg/jaudiotagger/tag/options/PadNumberOption;

    return-object v0
.end method

.method public getPlayerCompatability()I
    .locals 1

    .line 1220
    iget v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->playerCompatability:I

    return v0
.end method

.method public getTimeStampFormat()B
    .locals 1

    .line 859
    iget-byte v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->timeStampFormat:B

    return v0
.end method

.method public getVorbisAlbumArtisReadOptions()Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->vorbisAlbumArtistReadOptions:Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    return-object v0
.end method

.method public getVorbisAlbumArtistSaveOptions()Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->vorbisAlbumArtistSaveOptions:Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;

    return-object v0
.end method

.method public getWavOptions()Lorg/jaudiotagger/audio/wav/WavOptions;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->wavOptions:Lorg/jaudiotagger/audio/wav/WavOptions;

    return-object v0
.end method

.method public getWavSaveOptions()Lorg/jaudiotagger/audio/wav/WavSaveOptions;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->wavSaveOptions:Lorg/jaudiotagger/audio/wav/WavSaveOptions;

    return-object v0
.end method

.method public getWavSaveOrder()Lorg/jaudiotagger/audio/wav/WavSaveOrder;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->wavSaveOrder:Lorg/jaudiotagger/audio/wav/WavSaveOrder;

    return-object v0
.end method

.method public getWriteChunkSize()J
    .locals 2

    .line 1249
    iget-wide v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->writeChunkSize:J

    return-wide v0
.end method

.method public isAPICDescriptionITunesCompatible()Z
    .locals 1

    .line 1303
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isAPICDescriptionITunesCompatible:Z

    return v0
.end method

.method public isCheckIsWritable()Z
    .locals 1

    .line 1316
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->checkIsWritable:Z

    return v0
.end method

.method public isEncodeUTF16BomAsLittleEndian()Z
    .locals 1

    .line 1234
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isEncodeUTF16BomAsLittleEndian:Z

    return v0
.end method

.method public isFilenameTagSave()Z
    .locals 1

    .line 412
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->filenameTagSave:Z

    return v0
.end method

.method public isId3v1Save()Z
    .locals 1

    .line 462
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1Save:Z

    return v0
.end method

.method public isId3v1SaveAlbum()Z
    .locals 1

    .line 478
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveAlbum:Z

    return v0
.end method

.method public isId3v1SaveArtist()Z
    .locals 1

    .line 494
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveArtist:Z

    return v0
.end method

.method public isId3v1SaveComment()Z
    .locals 1

    .line 510
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveComment:Z

    return v0
.end method

.method public isId3v1SaveGenre()Z
    .locals 1

    .line 526
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveGenre:Z

    return v0
.end method

.method public isId3v1SaveTitle()Z
    .locals 1

    .line 542
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveTitle:Z

    return v0
.end method

.method public isId3v1SaveTrack()Z
    .locals 1

    .line 558
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveTrack:Z

    return v0
.end method

.method public isId3v1SaveYear()Z
    .locals 1

    .line 574
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveYear:Z

    return v0
.end method

.method public isId3v2PaddingCopyTag()Z
    .locals 1

    .line 591
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2PaddingCopyTag:Z

    return v0
.end method

.method public isId3v2PaddingWillShorten()Z
    .locals 1

    .line 608
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2PaddingWillShorten:Z

    return v0
.end method

.method public isId3v2Save()Z
    .locals 1

    .line 624
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2Save:Z

    return v0
.end method

.method public isLyrics3KeepEmptyFieldIfRead()Z
    .locals 1

    .line 683
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3KeepEmptyFieldIfRead:Z

    return v0
.end method

.method public isLyrics3Save()Z
    .locals 1

    .line 699
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3Save:Z

    return v0
.end method

.method public isLyrics3SaveEmptyField()Z
    .locals 1

    .line 715
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3SaveEmptyField:Z

    return v0
.end method

.method public isOpenParenthesis(Ljava/lang/String;)Z
    .locals 1

    .line 798
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->parenthesisMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isOriginalSavedAfterAdjustingID3v2Padding()Z
    .locals 1

    .line 823
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->originalSavedAfterAdjustingID3v2Padding:Z

    return v0
.end method

.method public isPadNumbers()Z
    .locals 1

    .line 1205
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->padNumbers:Z

    return v0
.end method

.method public isPreserveFileIdentity()Z
    .locals 1

    .line 1337
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->preserveFileIdentity:Z

    return v0
.end method

.method public isRemoveTrailingTerminatorOnWrite()Z
    .locals 1

    .line 1069
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->removeTrailingTerminatorOnWrite:Z

    return v0
.end method

.method public isResetTextEncodingForExistingFrames()Z
    .locals 1

    .line 1168
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->resetTextEncodingForExistingFrames:Z

    return v0
.end method

.method public isTruncateTextWithoutErrors()Z
    .locals 1

    .line 1190
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->truncateTextWithoutErrors:Z

    return v0
.end method

.method public isUnsyncTags()Z
    .locals 1

    .line 1048
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->unsyncTags:Z

    return v0
.end method

.method public isWriteMp3GenresAsText()Z
    .locals 1

    .line 1277
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isWriteMp3GenresAsText:Z

    return v0
.end method

.method public isWriteMp4GenresAsText()Z
    .locals 1

    .line 1263
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isWriteMp4GenresAsText:Z

    return v0
.end method

.method public isWriteWavForTwonky()Z
    .locals 1

    .line 1352
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isWriteWavForTwonky:Z

    return v0
.end method

.method public setAPICDescriptionITunesCompatible(Z)V
    .locals 0

    .line 1308
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isAPICDescriptionITunesCompatible:Z

    return-void
.end method

.method public setCheckIsWritable(Z)V
    .locals 0

    .line 1320
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->checkIsWritable:Z

    return-void
.end method

.method public setEncodeUTF16BomAsLittleEndian(Z)V
    .locals 0

    .line 1239
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isEncodeUTF16BomAsLittleEndian:Z

    return-void
.end method

.method public setFilenameTagSave(Z)V
    .locals 0

    .line 404
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->filenameTagSave:Z

    return-void
.end method

.method public setID3V2Version(Lorg/jaudiotagger/tag/reference/ID3V2Version;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2Version:Lorg/jaudiotagger/tag/reference/ID3V2Version;

    return-void
.end method

.method public setId3v1Save(Z)V
    .locals 0

    .line 454
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1Save:Z

    return-void
.end method

.method public setId3v1SaveAlbum(Z)V
    .locals 0

    .line 470
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveAlbum:Z

    return-void
.end method

.method public setId3v1SaveArtist(Z)V
    .locals 0

    .line 486
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveArtist:Z

    return-void
.end method

.method public setId3v1SaveComment(Z)V
    .locals 0

    .line 502
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveComment:Z

    return-void
.end method

.method public setId3v1SaveGenre(Z)V
    .locals 0

    .line 518
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveGenre:Z

    return-void
.end method

.method public setId3v1SaveTitle(Z)V
    .locals 0

    .line 534
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveTitle:Z

    return-void
.end method

.method public setId3v1SaveTrack(Z)V
    .locals 0

    .line 550
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveTrack:Z

    return-void
.end method

.method public setId3v1SaveYear(Z)V
    .locals 0

    .line 566
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveYear:Z

    return-void
.end method

.method public setId3v23DefaultTextEncoding(B)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1104
    :cond_0
    iput-byte p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v23DefaultTextEncoding:B

    :cond_1
    return-void
.end method

.method public setId3v24DefaultTextEncoding(B)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 1129
    :cond_0
    iput-byte p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v24DefaultTextEncoding:B

    :cond_1
    return-void
.end method

.method public setId3v24UnicodeTextEncoding(B)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 1155
    :cond_0
    iput-byte p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v24UnicodeTextEncoding:B

    :cond_1
    return-void
.end method

.method public setId3v2PaddingCopyTag(Z)V
    .locals 0

    .line 583
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2PaddingCopyTag:Z

    return-void
.end method

.method public setId3v2PaddingWillShorten(Z)V
    .locals 0

    .line 600
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2PaddingWillShorten:Z

    return-void
.end method

.method public setId3v2Save(Z)V
    .locals 0

    .line 616
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2Save:Z

    return-void
.end method

.method public setInstanceKey(Ljava/lang/String;)V
    .locals 0

    .line 437
    sput-object p1, Lorg/jaudiotagger/tag/TagOptionSingleton;->defaultOptions:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1

    .line 654
    invoke-static {}, Lorg/jaudiotagger/tag/reference/Languages;->getInstanceOf()Lorg/jaudiotagger/tag/reference/Languages;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/reference/Languages;->getIdToValueMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    iput-object p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->language:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setLyrics3KeepEmptyFieldIfRead(Z)V
    .locals 0

    .line 675
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3KeepEmptyFieldIfRead:Z

    return-void
.end method

.method public setLyrics3Save(Z)V
    .locals 0

    .line 691
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3Save:Z

    return-void
.end method

.method public setLyrics3SaveEmptyField(Z)V
    .locals 0

    .line 707
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3SaveEmptyField:Z

    return-void
.end method

.method public setLyrics3SaveField(Ljava/lang/String;Z)V
    .locals 1

    .line 726
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3SaveFieldMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setNumberMP3SyncFrame(I)V
    .locals 0

    .line 768
    iput p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->numberMP3SyncFrame:I

    return-void
.end method

.method public setOriginalSavedAfterAdjustingID3v2Padding(Z)V
    .locals 0

    .line 815
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->originalSavedAfterAdjustingID3v2Padding:Z

    return-void
.end method

.method public setPadNumberTotalLength(Lorg/jaudiotagger/tag/options/PadNumberOption;)V
    .locals 0

    .line 1295
    iput-object p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->padNumberTotalLength:Lorg/jaudiotagger/tag/options/PadNumberOption;

    return-void
.end method

.method public setPadNumbers(Z)V
    .locals 0

    .line 1210
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->padNumbers:Z

    return-void
.end method

.method public setPlayerCompatability(I)V
    .locals 0

    .line 1225
    iput p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->playerCompatability:I

    return-void
.end method

.method public setPreserveFileIdentity(Z)V
    .locals 0

    .line 1347
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->preserveFileIdentity:Z

    return-void
.end method

.method public setRemoveTrailingTerminatorOnWrite(Z)V
    .locals 0

    .line 1080
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->removeTrailingTerminatorOnWrite:Z

    return-void
.end method

.method public setResetTextEncodingForExistingFrames(Z)V
    .locals 0

    .line 1181
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->resetTextEncodingForExistingFrames:Z

    return-void
.end method

.method public setTimeStampFormat(B)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 843
    :cond_0
    iput-byte p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->timeStampFormat:B

    :cond_1
    return-void
.end method

.method public setToDefault()V
    .locals 14

    const-string v0, "ft"

    const-string v1, "ft."

    const-string v2, "ftng."

    const-string v3, "ftng"

    const-string v4, "featuring"

    const-string v5, "feat"

    const-string v6, "f."

    const-string v7, "original"

    const-string v8, "feat."

    const/4 v9, 0x0

    .line 867
    iput-boolean v9, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isWriteWavForTwonky:Z

    .line 868
    sget-object v10, Lorg/jaudiotagger/audio/wav/WavOptions;->READ_ID3_UNLESS_ONLY_INFO:Lorg/jaudiotagger/audio/wav/WavOptions;

    iput-object v10, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->wavOptions:Lorg/jaudiotagger/audio/wav/WavOptions;

    .line 869
    sget-object v10, Lorg/jaudiotagger/audio/wav/WavSaveOptions;->SAVE_BOTH:Lorg/jaudiotagger/audio/wav/WavSaveOptions;

    iput-object v10, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->wavSaveOptions:Lorg/jaudiotagger/audio/wav/WavSaveOptions;

    .line 870
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->keywordMap:Ljava/util/HashMap;

    .line 871
    iput-boolean v9, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->filenameTagSave:Z

    const/4 v10, 0x1

    .line 872
    iput-boolean v10, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1Save:Z

    .line 873
    iput-boolean v10, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveAlbum:Z

    .line 874
    iput-boolean v10, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveArtist:Z

    .line 875
    iput-boolean v10, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveComment:Z

    .line 876
    iput-boolean v10, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveGenre:Z

    .line 877
    iput-boolean v10, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveTitle:Z

    .line 878
    iput-boolean v10, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveTrack:Z

    .line 879
    iput-boolean v10, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveYear:Z

    .line 880
    iput-boolean v10, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2PaddingCopyTag:Z

    .line 881
    iput-boolean v9, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2PaddingWillShorten:Z

    .line 882
    iput-boolean v10, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2Save:Z

    const-string v11, "eng"

    .line 883
    iput-object v11, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->language:Ljava/lang/String;

    .line 884
    iput-boolean v9, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3KeepEmptyFieldIfRead:Z

    .line 885
    iput-boolean v10, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3Save:Z

    .line 886
    iput-boolean v9, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3SaveEmptyField:Z

    .line 887
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3SaveFieldMap:Ljava/util/HashMap;

    const/4 v11, 0x3

    .line 888
    iput v11, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->numberMP3SyncFrame:I

    .line 889
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->parenthesisMap:Ljava/util/HashMap;

    .line 890
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->replaceWordMap:Ljava/util/HashMap;

    const/4 v11, 0x2

    .line 891
    iput-byte v11, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->timeStampFormat:B

    .line 892
    iput-boolean v9, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->unsyncTags:Z

    .line 893
    iput-boolean v10, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->removeTrailingTerminatorOnWrite:Z

    .line 894
    iput-byte v9, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v23DefaultTextEncoding:B

    .line 895
    iput-byte v9, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v24DefaultTextEncoding:B

    .line 896
    iput-byte v10, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v24UnicodeTextEncoding:B

    .line 897
    iput-boolean v9, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->resetTextEncodingForExistingFrames:Z

    .line 898
    iput-boolean v9, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->truncateTextWithoutErrors:Z

    .line 899
    iput-boolean v9, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->padNumbers:Z

    .line 900
    iput-boolean v9, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isAPICDescriptionITunesCompatible:Z

    .line 901
    iput-boolean v10, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isEncodeUTF16BomAsLittleEndian:Z

    const-wide/32 v11, 0x4c4b40

    .line 902
    iput-wide v11, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->writeChunkSize:J

    .line 903
    iput-boolean v9, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isWriteMp4GenresAsText:Z

    .line 904
    sget-object v11, Lorg/jaudiotagger/tag/options/PadNumberOption;->PAD_ONE_ZERO:Lorg/jaudiotagger/tag/options/PadNumberOption;

    iput-object v11, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->padNumberTotalLength:Lorg/jaudiotagger/tag/options/PadNumberOption;

    .line 905
    sget-object v11, Lorg/jaudiotagger/tag/reference/ID3V2Version;->ID3_V23:Lorg/jaudiotagger/tag/reference/ID3V2Version;

    iput-object v11, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2Version:Lorg/jaudiotagger/tag/reference/ID3V2Version;

    .line 906
    iput-boolean v9, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->checkIsWritable:Z

    .line 907
    iput-boolean v9, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->preserveFileIdentity:Z

    .line 910
    invoke-static {}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;->getInstanceOf()Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;

    move-result-object v9

    invoke-virtual {v9}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;->getIdToValueMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 913
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 915
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 916
    iget-object v12, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3SaveFieldMap:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v12, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 921
    :cond_0
    :try_start_0
    const-class v9, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v10, "ultimix"

    invoke-virtual {p0, v9, v10}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 922
    const-class v9, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v10, "dance"

    invoke-virtual {p0, v9, v10}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 923
    const-class v9, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v10, "mix"

    invoke-virtual {p0, v9, v10}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 924
    const-class v9, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v10, "remix"

    invoke-virtual {p0, v9, v10}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 925
    const-class v9, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v10, "rmx"

    invoke-virtual {p0, v9, v10}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 926
    const-class v9, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v10, "live"

    invoke-virtual {p0, v9, v10}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 927
    const-class v9, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v10, "cover"

    invoke-virtual {p0, v9, v10}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 928
    const-class v9, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v10, "soundtrack"

    invoke-virtual {p0, v9, v10}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 929
    const-class v9, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v10, "version"

    invoke-virtual {p0, v9, v10}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 930
    const-class v9, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v10, "acoustic"

    invoke-virtual {p0, v9, v10}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 931
    const-class v9, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    invoke-virtual {p0, v9, v7}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 932
    const-class v9, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v10, "cd"

    invoke-virtual {p0, v9, v10}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 933
    const-class v9, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v10, "extended"

    invoke-virtual {p0, v9, v10}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 934
    const-class v9, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v10, "vocal"

    invoke-virtual {p0, v9, v10}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 935
    const-class v9, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v10, "unplugged"

    invoke-virtual {p0, v9, v10}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 936
    const-class v9, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v10, "acapella"

    invoke-virtual {p0, v9, v10}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 937
    const-class v9, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v10, "edit"

    invoke-virtual {p0, v9, v10}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 938
    const-class v9, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v10, "radio"

    invoke-virtual {p0, v9, v10}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 939
    const-class v9, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    invoke-virtual {p0, v9, v7}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 940
    const-class v7, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v9, "album"

    invoke-virtual {p0, v7, v9}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 941
    const-class v7, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v9, "studio"

    invoke-virtual {p0, v7, v9}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 942
    const-class v7, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v9, "instrumental"

    invoke-virtual {p0, v7, v9}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 943
    const-class v7, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v9, "unedited"

    invoke-virtual {p0, v7, v9}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 944
    const-class v7, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v9, "karoke"

    invoke-virtual {p0, v7, v9}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 945
    const-class v7, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v9, "quality"

    invoke-virtual {p0, v7, v9}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 946
    const-class v7, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v9, "uncensored"

    invoke-virtual {p0, v7, v9}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 947
    const-class v7, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v9, "clean"

    invoke-virtual {p0, v7, v9}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 948
    const-class v7, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v9, "dirty"

    invoke-virtual {p0, v7, v9}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 950
    const-class v7, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    invoke-virtual {p0, v7, v6}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 951
    const-class v7, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    invoke-virtual {p0, v7, v5}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 952
    const-class v7, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    invoke-virtual {p0, v7, v8}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 953
    const-class v7, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    invoke-virtual {p0, v7, v4}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 954
    const-class v7, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    invoke-virtual {p0, v7, v3}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 955
    const-class v7, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    invoke-virtual {p0, v7, v2}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 956
    const-class v7, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    invoke-virtual {p0, v7, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 957
    const-class v7, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    invoke-virtual {p0, v7, v0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 959
    invoke-static {}, Lorg/jaudiotagger/tag/reference/GenreTypes;->getInstanceOf()Lorg/jaudiotagger/tag/reference/GenreTypes;

    move-result-object v7

    invoke-virtual {v7}, Lorg/jaudiotagger/tag/reference/GenreTypes;->getValueToIdMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 961
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 963
    const-class v9, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {p0, v9, v10}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jaudiotagger/tag/TagException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    const-string v7, "vs."

    const-string v9, "v."

    .line 973
    invoke-virtual {p0, v9, v7}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    invoke-virtual {p0, v7, v7}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "versus"

    .line 975
    invoke-virtual {p0, v9, v7}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    invoke-virtual {p0, v6, v8}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    invoke-virtual {p0, v5, v8}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    invoke-virtual {p0, v4, v8}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    invoke-virtual {p0, v2, v8}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    invoke-virtual {p0, v3, v8}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    invoke-virtual {p0, v1, v8}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    invoke-virtual {p0, v0, v8}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getKeywordListIterator(Ljava/lang/Class;)Ljava/util/Iterator;

    const-string v0, "("

    const-string v1, ")"

    .line 988
    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addParenthesis(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "["

    const-string v1, "]"

    .line 989
    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addParenthesis(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "{"

    const-string/jumbo v1, "}"

    .line 990
    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addParenthesis(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "<"

    const-string v1, ">"

    .line 991
    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addParenthesis(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    .line 969
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setTruncateTextWithoutErrors(Z)V
    .locals 0

    .line 1200
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->truncateTextWithoutErrors:Z

    return-void
.end method

.method public setUnsyncTags(Z)V
    .locals 0

    .line 1059
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->unsyncTags:Z

    return-void
.end method

.method public setVorbisAlbumArtistReadOptions(Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->vorbisAlbumArtistReadOptions:Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    return-void
.end method

.method public setVorbisAlbumArtistSaveOptions(Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->vorbisAlbumArtistSaveOptions:Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;

    return-void
.end method

.method public setWavOptions(Lorg/jaudiotagger/audio/wav/WavOptions;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->wavOptions:Lorg/jaudiotagger/audio/wav/WavOptions;

    return-void
.end method

.method public setWavSaveOptions(Lorg/jaudiotagger/audio/wav/WavSaveOptions;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->wavSaveOptions:Lorg/jaudiotagger/audio/wav/WavSaveOptions;

    return-void
.end method

.method public setWavSaveOrder(Lorg/jaudiotagger/audio/wav/WavSaveOrder;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->wavSaveOrder:Lorg/jaudiotagger/audio/wav/WavSaveOrder;

    return-void
.end method

.method public setWriteChunkSize(J)V
    .locals 0

    .line 1254
    iput-wide p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->writeChunkSize:J

    return-void
.end method

.method public setWriteMp3GenresAsText(Z)V
    .locals 0

    .line 1282
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isWriteMp3GenresAsText:Z

    return-void
.end method

.method public setWriteMp4GenresAsText(Z)V
    .locals 0

    .line 1268
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isWriteMp4GenresAsText:Z

    return-void
.end method

.method public setWriteWavForTwonky(Z)V
    .locals 0

    .line 1357
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isWriteWavForTwonky:Z

    return-void
.end method

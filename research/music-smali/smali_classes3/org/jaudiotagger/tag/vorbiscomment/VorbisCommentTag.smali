.class public Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;
.super Lorg/jaudiotagger/audio/generic/AbstractTag;
.source "VorbisCommentTag.java"


# static fields
.field public static final DEFAULT_VENDOR:Ljava/lang/String; = "jaudiotagger"

.field private static tagFieldToOggField:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lorg/jaudiotagger/tag/FieldKey;",
            "Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/jaudiotagger/tag/FieldKey;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    .line 50
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ACOUSTID_FINGERPRINT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ACOUSTID_FINGERPRINT:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ACOUSTID_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ACOUSTID_ID:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ALBUM:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUM:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ALBUM_ARTIST:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ALBUM_ARTISTS:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTISTS:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ALBUM_ARTISTS_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTISTSSORT:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ALBUM_ARTIST_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTISTSORT:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ALBUM_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMSORT:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->AMAZON_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ASIN:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ARRANGER:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ARRANGER:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ARRANGER_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ARRANGER_SORT:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ARTIST:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ARTIST:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ARTISTS:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ARTISTS:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ARTISTS_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ARTISTS_SORT:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ARTIST_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ARTISTSORT:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->BARCODE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->BARCODE:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->BPM:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->BPM:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CATALOG_NO:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->CATALOGNUMBER:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CHOIR:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->CHOIR:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CHOIR_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->CHOIR_SORT:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CLASSICAL_CATALOG:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->CLASSICAL_CATALOG:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CLASSICAL_NICKNAME:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->CLASSICAL_NICKNAME:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->COMMENT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->COMMENT:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->COMPOSER:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->COMPOSER:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->COMPOSER_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->COMPOSERSORT:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->COPYRIGHT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->COPYRIGHT:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CONDUCTOR:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->CONDUCTOR:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CONDUCTOR_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->CONDUCTOR_SORT:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->COUNTRY:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->COUNTRY:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->METADATA_BLOCK_PICTURE:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CUSTOM1:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->CUSTOM1:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CUSTOM2:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->CUSTOM2:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CUSTOM3:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->CUSTOM3:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CUSTOM4:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->CUSTOM4:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CUSTOM5:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->CUSTOM5:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->DISC_NO:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->DISCNUMBER:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->DISC_SUBTITLE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->DISCSUBTITLE:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->DISC_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->DISCTOTAL:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->DJMIXER:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->DJMIXER:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ENCODER:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->VENDOR:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ENGINEER:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ENGINEER:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ENSEMBLE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ENSEMBLE:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ENSEMBLE_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ENSEMBLE_SORT:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->FBPM:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->FBPM:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->GENRE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->GENRE:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->GROUP:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->GROUP:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->GROUPING:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->GROUPING:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->INSTRUMENT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->INSTRUMENT:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->INVOLVED_PERSON:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->INVOLVED_PERSON:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ISRC:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ISRC:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->IS_CLASSICAL:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->IS_CLASSICAL:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->IS_COMPILATION:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->COMPILATION:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->IS_SOUNDTRACK:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->IS_SOUNDTRACK:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->KEY:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->KEY:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->LANGUAGE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->LANGUAGE:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->LYRICIST:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->LYRICIST:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->LYRICS:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->LYRICS:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MEDIA:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MEDIA:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MIXER:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MIXER:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOOD:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MOOD:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOOD_ACOUSTIC:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MOOD_ACOUSTIC:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOOD_AGGRESSIVE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MOOD_AGGRESSIVE:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOOD_AROUSAL:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MOOD_AROUSAL:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOOD_DANCEABILITY:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MOOD_DANCEABILITY:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOOD_ELECTRONIC:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MOOD_ELECTRONIC:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOOD_HAPPY:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MOOD_HAPPY:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOOD_INSTRUMENTAL:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MOOD_INSTRUMENTAL:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOOD_PARTY:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MOOD_PARTY:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOOD_RELAXED:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MOOD_RELAXED:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOOD_SAD:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MOOD_SAD:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOOD_VALENCE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MOOD_VALENCE:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOVEMENT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MOVEMENT:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOVEMENT_NO:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MOVEMENT_NO:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOVEMENT_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MOVEMENT_TOTAL:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_ARTISTID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_ARTISTID:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_DISC_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_DISCID:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_ORIGINAL_RELEASE_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_ORIGINAL_ALBUMID:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASEARTISTID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_ALBUMARTISTID:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASEID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_ALBUMID:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASE_COUNTRY:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->RELEASECOUNTRY:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASE_GROUP_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_RELEASEGROUPID:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASE_STATUS:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_ALBUMSTATUS:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASE_TRACK_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_RELEASETRACKID:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASE_TYPE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_ALBUMTYPE:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_TRACK_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_TRACKID:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORK:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_COMPOSITION:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORK_COMPOSITION:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_COMPOSITION_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORK_COMPOSITION_ID:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORKID:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL1:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL1:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL1_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL1_ID:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL1_TYPE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL1_TYPE:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL2:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL2:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL2_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL2_ID:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL2_TYPE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL2_TYPE:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL3:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL3:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL3_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL3_ID:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL3_TYPE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL3_TYPE:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL4:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL4:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL4_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL4_ID:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL4_TYPE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL4_TYPE:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL5:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL5:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL5_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL5_ID:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL5_TYPE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL5_TYPE:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL6:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL6:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL6_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL6_ID:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL6_TYPE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL6_TYPE:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICIP_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->MUSICIP_PUID:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->OCCASION:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->OCCASION:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->OPUS:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->OPUS:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ORCHESTRA:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ORCHESTRA:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ORCHESTRA_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ORCHESTRA_SORT:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ORIGINAL_ALBUM:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ORIGINAL_ALBUM:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ORIGINAL_ARTIST:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ORIGINAL_ARTIST:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ORIGINAL_LYRICIST:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ORIGINAL_LYRICIST:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ORIGINAL_YEAR:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ORIGINAL_YEAR:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->PART:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->PART:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->PART_NUMBER:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->PART_NUMBER:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->PART_TYPE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->PART_TYPE:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->PERFORMER:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->PERFORMER:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->PERFORMER_NAME:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->PERFORMER_NAME:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->PERFORMER_NAME_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->PERFORMER_NAME_SORT:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->PERIOD:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->PERIOD:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->PRODUCER:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->PRODUCER:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->QUALITY:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->QUALITY:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->RANKING:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->RANKING:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->RATING:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->RATING:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->RECORD_LABEL:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->LABEL:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->REMIXER:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->REMIXER:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->SCRIPT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->SCRIPT:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->SINGLE_DISC_TRACK_NO:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->SINGLE_DISC_TRACK_NO:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->SUBTITLE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->SUBTITLE:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TAGS:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->TAGS:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TEMPO:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->TEMPO:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TIMBRE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->TIMBRE:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TITLE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->TITLE:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TITLE_MOVEMENT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->TITLE_MOVEMENT:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TITLE_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->TITLESORT:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TONALITY:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->TONALITY:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->TRACKNUMBER:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TRACK_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->TRACKTOTAL:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->URL_DISCOGS_ARTIST_SITE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->URL_DISCOGS_ARTIST_SITE:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->URL_DISCOGS_RELEASE_SITE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->URL_DISCOGS_RELEASE_SITE:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->URL_LYRICS_SITE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->URL_LYRICS_SITE:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->URL_OFFICIAL_ARTIST_SITE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->URL_OFFICIAL_ARTIST_SITE:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->URL_OFFICIAL_RELEASE_SITE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->URL_OFFICIAL_RELEASE_SITE:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->URL_WIKIPEDIA_ARTIST_SITE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->URL_WIKIPEDIA_ARTIST_SITE:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->URL_WIKIPEDIA_RELEASE_SITE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->URL_WIKIPEDIA_RELEASE_SITE:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->WORK:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->WORK:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->WORK_TYPE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->WORK_TYPE:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->YEAR:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->DATE:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 213
    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AbstractTag;-><init>()V

    return-void
.end method

.method private createMetadataBlockDataPicture(Lorg/jaudiotagger/tag/images/Artwork;)Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;
    .locals 10

    .line 585
    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->isLinked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    new-instance v0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    .line 588
    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/jaudiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 589
    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getPictureType()I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v4, "-->"

    const-string v5, ""

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;-><init>([BILjava/lang/String;Ljava/lang/String;IIII)V

    return-object v0

    .line 599
    :cond_0
    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->setImageFromData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 603
    new-instance v0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getBinaryData()[B

    move-result-object v2

    .line 604
    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getPictureType()I

    move-result v3

    .line 605
    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getMimeType()Ljava/lang/String;

    move-result-object v4

    .line 606
    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getDescription()Ljava/lang/String;

    move-result-object v5

    .line 607
    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getWidth()I

    move-result v6

    .line 608
    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;-><init>([BILjava/lang/String;Ljava/lang/String;IIII)V

    return-object v0

    .line 601
    :cond_1
    new-instance p1, Lorg/jaudiotagger/tag/FieldDataInvalidException;

    const-string v0, "Unable to create MetadataBlockDataPicture from buffered"

    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/FieldDataInvalidException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static createNewTag()Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;
    .locals 2

    .line 224
    new-instance v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;-><init>()V

    const-string v1, "jaudiotagger"

    .line 225
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->setVendor(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 715
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Ljava/lang/String;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 716
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public varargs addField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_6

    const/4 v0, 0x0

    .line 812
    aget-object v1, p2, v0

    if-eqz v1, :cond_6

    .line 816
    aget-object p2, p2, v0

    .line 817
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ALBUM_ARTIST:Lorg/jaudiotagger/tag/FieldKey;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_5

    .line 819
    sget-object v1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag$1;->$SwitchMap$org$jaudiotagger$tag$vorbiscomment$VorbisAlbumArtistSaveOptions:[I

    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getVorbisAlbumArtistSaveOptions()Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;->ordinal()I

    move-result v3

    aget v1, v1, v3

    if-eq v1, v2, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 850
    :cond_0
    new-array v1, v2, [Ljava/lang/String;

    aput-object p2, v1, v0

    invoke-virtual {p0, p1, v1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 851
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    .line 852
    sget-object p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST_JRIVER:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 853
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    return-void

    .line 843
    :cond_1
    sget-object p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST_JRIVER:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 844
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    .line 845
    sget-object p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->deleteField(Ljava/lang/String;)V

    return-void

    .line 829
    :cond_2
    sget-object p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST_JRIVER:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 830
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    return-void

    .line 835
    :cond_3
    new-array v1, v2, [Ljava/lang/String;

    aput-object p2, v1, v0

    invoke-virtual {p0, p1, v1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 836
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    .line 837
    sget-object p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST_JRIVER:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->deleteField(Ljava/lang/String;)V

    return-void

    .line 823
    :cond_4
    new-array v1, v2, [Ljava/lang/String;

    aput-object p2, v1, v0

    invoke-virtual {p0, p1, v1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 824
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    return-void

    .line 861
    :cond_5
    new-array v1, v2, [Ljava/lang/String;

    aput-object p2, v1, v0

    invoke-virtual {p0, p1, v1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 862
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    :goto_0
    return-void

    .line 814
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addField(Lorg/jaudiotagger/tag/TagField;)V
    .locals 2

    .line 516
    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->VENDOR:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    goto :goto_0

    .line 522
    :cond_0
    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    :goto_0
    return-void
.end method

.method public addField(Lorg/jaudiotagger/tag/images/Artwork;)V
    .locals 0

    .line 664
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lorg/jaudiotagger/tag/images/Artwork;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public createCompilationField(Z)Lorg/jaudiotagger/tag/TagField;
    .locals 3

    .line 736
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->IS_COMPILATION:Lorg/jaudiotagger/tag/FieldKey;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1
.end method

.method public createField(Ljava/lang/String;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .locals 1

    if-eqz p2, :cond_0

    .line 317
    new-instance v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;

    invoke-direct {v0, p1, p2}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 315
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .locals 1

    if-eqz p1, :cond_0

    .line 275
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1

    .line 272
    :cond_0
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public createField(Lorg/jaudiotagger/tag/images/Artwork;)Lorg/jaudiotagger/tag/TagField;
    .locals 1

    .line 625
    :try_start_0
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createMetadataBlockDataPicture(Lorg/jaudiotagger/tag/images/Artwork;)Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getRawContent()[B

    move-result-object p1

    invoke-static {p1}, Lorg/jaudiotagger/tag/vorbiscomment/util/Base64Coder;->encode([B)[C

    move-result-object p1

    .line 626
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    .line 627
    sget-object p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->METADATA_BLOCK_PICTURE:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 632
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public createField(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .locals 1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 298
    new-instance v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 295
    :cond_0
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1

    .line 291
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public deleteArtworkField()V
    .locals 1

    .line 727
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->METADATA_BLOCK_PICTURE:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->deleteField(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;)V

    .line 730
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->COVERART:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->deleteField(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;)V

    .line 731
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->COVERARTMIME:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->deleteField(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;)V

    return-void
.end method

.method public deleteField(Lorg/jaudiotagger/tag/FieldKey;)V
    .locals 2

    if-eqz p1, :cond_4

    .line 419
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->ALBUM_ARTIST:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_3

    .line 421
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag$1;->$SwitchMap$org$jaudiotagger$tag$vorbiscomment$VorbisAlbumArtistSaveOptions:[I

    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getVorbisAlbumArtistSaveOptions()Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 440
    :cond_0
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    .line 441
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->deleteField(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;)V

    .line 442
    sget-object p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST_JRIVER:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->deleteField(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;)V

    return-void

    .line 434
    :cond_1
    sget-object p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST_JRIVER:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->deleteField(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;)V

    return-void

    .line 426
    :cond_2
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    .line 427
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->deleteField(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;)V

    return-void

    .line 450
    :cond_3
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    .line 451
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->deleteField(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;)V

    :goto_0
    return-void

    .line 416
    :cond_4
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public deleteField(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 467
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    return-void

    .line 465
    :cond_0
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public get(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;",
            ")",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 366
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 364
    :cond_0
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public getAll(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/tag/FieldKey;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 345
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    if-eqz p1, :cond_0

    .line 350
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 348
    :cond_0
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public getArtworkBinaryData()[B
    .locals 1

    .line 479
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->COVERART:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->getFirst(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;)Ljava/lang/String;

    move-result-object v0

    .line 480
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/jaudiotagger/tag/vorbiscomment/util/Base64Coder;->decode([C)[B

    move-result-object v0

    return-object v0
.end method

.method public getArtworkList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/images/Artwork;",
            ">;"
        }
    .end annotation

    .line 541
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 544
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->getArtworkBinaryData()[B

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->getArtworkBinaryData()[B

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 546
    invoke-static {}, Lorg/jaudiotagger/tag/images/ArtworkFactory;->getNew()Lorg/jaudiotagger/tag/images/Artwork;

    move-result-object v1

    .line 547
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->getArtworkMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/jaudiotagger/tag/images/Artwork;->setMimeType(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->getArtworkBinaryData()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/jaudiotagger/tag/images/Artwork;->setBinaryData([B)V

    .line 549
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    :cond_2
    sget-object v1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->METADATA_BLOCK_PICTURE:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, v1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->get(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;)Ljava/util/List;

    move-result-object v1

    .line 554
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/TagField;

    .line 559
    :try_start_0
    check-cast v2, Lorg/jaudiotagger/tag/TagTextField;

    invoke-interface {v2}, Lorg/jaudiotagger/tag/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jaudiotagger/tag/vorbiscomment/util/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 560
    new-instance v3, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;-><init>(Ljava/nio/ByteBuffer;)V

    .line 561
    invoke-static {v3}, Lorg/jaudiotagger/tag/images/ArtworkFactory;->createArtworkFromMetadataBlockDataPicture(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;)Lorg/jaudiotagger/tag/images/Artwork;

    move-result-object v2

    .line 562
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jaudiotagger/tag/InvalidFrameException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 570
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 566
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    return-object v0
.end method

.method public getArtworkMimeType()Ljava/lang/String;
    .locals 1

    .line 491
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->COVERARTMIME:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->getFirst(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/tag/FieldKey;",
            ")",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 327
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    if-eqz p1, :cond_0

    .line 332
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 330
    :cond_0
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public getFirst(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 383
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 381
    :cond_0
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public getFirstField(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/TagField;
    .locals 1

    if-eqz p1, :cond_0

    .line 532
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1

    .line 530
    :cond_0
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;
    .locals 2

    .line 868
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->ALBUM_ARTIST:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_7

    .line 870
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag$1;->$SwitchMap$org$jaudiotagger$tag$vorbiscomment$VorbisAlbumArtistReadOptions:[I

    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getVorbisAlbumArtisReadOptions()Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 915
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    if-eqz p1, :cond_0

    .line 920
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getItem(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 918
    :cond_0
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1

    .line 901
    :cond_1
    sget-object p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST_JRIVER:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    .line 902
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getItem(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 903
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 905
    sget-object p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    .line 906
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getItem(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1

    .line 886
    :cond_3
    sget-object p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    .line 887
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getItem(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 888
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 890
    sget-object p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST_JRIVER:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    .line 891
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getItem(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :cond_4
    return-object p1

    .line 880
    :cond_5
    sget-object p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST_JRIVER:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    .line 881
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getItem(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 874
    :cond_6
    sget-object p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    .line 875
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getItem(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 925
    :cond_7
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    if-eqz p1, :cond_8

    .line 930
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getItem(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 928
    :cond_8
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    .line 234
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->VENDOR:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasField(Lorg/jaudiotagger/tag/FieldKey;)Z
    .locals 1

    .line 393
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    .line 394
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasField(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;)Z
    .locals 0

    .line 404
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected isAllowedEncoding(Ljava/nio/charset/Charset;)Z
    .locals 1

    const-string v0, "UTF-8"

    .line 256
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 2

    .line 504
    iget-object v0, p0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setArtworkField([BLjava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 682
    invoke-static {p1}, Lorg/jaudiotagger/tag/vorbiscomment/util/Base64Coder;->encode([B)[C

    move-result-object p1

    .line 683
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    .line 684
    new-instance p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;

    sget-object v1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->COVERART:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    new-instance v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;

    sget-object v1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->COVERARTMIME:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    .line 688
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public setField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 702
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Ljava/lang/String;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 703
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public varargs setField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_6

    const/4 v0, 0x0

    .line 742
    aget-object v1, p2, v0

    if-eqz v1, :cond_6

    .line 747
    aget-object p2, p2, v0

    .line 748
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ALBUM_ARTIST:Lorg/jaudiotagger/tag/FieldKey;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_5

    .line 750
    sget-object v1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag$1;->$SwitchMap$org$jaudiotagger$tag$vorbiscomment$VorbisAlbumArtistSaveOptions:[I

    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getVorbisAlbumArtistSaveOptions()Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;->ordinal()I

    move-result v3

    aget v1, v1, v3

    if-eq v1, v2, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 785
    :cond_0
    new-array v1, v2, [Ljava/lang/String;

    aput-object p2, v1, v0

    invoke-virtual {p0, p1, v1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 786
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    .line 787
    sget-object p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST_JRIVER:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 788
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    return-void

    .line 776
    :cond_1
    sget-object p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST_JRIVER:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 777
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    .line 778
    sget-object p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->deleteField(Ljava/lang/String;)V

    return-void

    .line 761
    :cond_2
    sget-object p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST_JRIVER:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 762
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    return-void

    .line 768
    :cond_3
    new-array v1, v2, [Ljava/lang/String;

    aput-object p2, v1, v0

    invoke-virtual {p0, p1, v1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 769
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    .line 770
    sget-object p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUMARTIST_JRIVER:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->deleteField(Ljava/lang/String;)V

    return-void

    .line 754
    :cond_4
    new-array v1, v2, [Ljava/lang/String;

    aput-object p2, v1, v0

    invoke-virtual {p0, p1, v1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 755
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    return-void

    .line 796
    :cond_5
    new-array v1, v2, [Ljava/lang/String;

    aput-object p2, v1, v0

    invoke-virtual {p0, p1, v1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 797
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    :goto_0
    return-void

    .line 744
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setField(Lorg/jaudiotagger/tag/images/Artwork;)V
    .locals 0

    .line 645
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createField(Lorg/jaudiotagger/tag/images/Artwork;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    .line 649
    sget-object p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->COVERART:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->getFirst(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 651
    sget-object p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->COVERART:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->deleteField(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;)V

    .line 652
    sget-object p1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->COVERARTMIME:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->deleteField(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;)V

    :cond_0
    return-void
.end method

.method public setVendor(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "jaudiotagger"

    .line 251
    :cond_0
    new-instance v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;

    sget-object v1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->VENDOR:Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, v0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OGG "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

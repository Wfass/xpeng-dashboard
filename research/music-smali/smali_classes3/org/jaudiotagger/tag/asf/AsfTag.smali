.class public final Lorg/jaudiotagger/tag/asf/AsfTag;
.super Lorg/jaudiotagger/audio/generic/AbstractTag;
.source "AsfTag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jaudiotagger/tag/asf/AsfTag$AsfFieldIterator;
    }
.end annotation


# static fields
.field public static final COMMON_FIELDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jaudiotagger/tag/asf/AsfFieldKey;",
            ">;"
        }
    .end annotation
.end field

.field private static final tagFieldToAsfField:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lorg/jaudiotagger/tag/FieldKey;",
            "Lorg/jaudiotagger/tag/asf/AsfFieldKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final copyFields:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 88
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/jaudiotagger/tag/FieldKey;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    .line 90
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ACOUSTID_FINGERPRINT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ACOUSTID_FINGERPRINT:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ACOUSTID_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ACOUSTID_ID:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ALBUM:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ALBUM:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ALBUM_ARTIST:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ALBUM_ARTIST:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ALBUM_ARTIST_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ALBUM_ARTIST_SORT:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ALBUM_ARTISTS:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ALBUM_ARTISTS:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ALBUM_ARTISTS_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ALBUM_ARTISTS_SORT:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ALBUM_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ALBUM_SORT:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->AMAZON_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->AMAZON_ID:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ARRANGER:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ARRANGER:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ARRANGER_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ARRANGER_SORT:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ARTIST:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->AUTHOR:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ARTISTS:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ARTISTS:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ARTISTS_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ARTISTS_SORT:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ARTIST_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ARTIST_SORT:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->BARCODE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->BARCODE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->BPM:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->BPM:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CATALOG_NO:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->CATALOG_NO:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CHOIR:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->CHOIR:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CHOIR_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->CHOIR_SORT:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CLASSICAL_CATALOG:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->CLASSICAL_CATALOG:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CLASSICAL_NICKNAME:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->CLASSICAL_NICKNAME:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->COMMENT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->DESCRIPTION:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->COMPOSER:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->COMPOSER:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->COMPOSER_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->COMPOSER_SORT:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CONDUCTOR:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->CONDUCTOR:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CONDUCTOR_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->CONDUCTOR_SORT:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->COPYRIGHT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->COPYRIGHT:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->COUNTRY:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->COUNTRY:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->COVER_ART:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CUSTOM1:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->CUSTOM1:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CUSTOM2:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->CUSTOM2:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CUSTOM3:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->CUSTOM3:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CUSTOM4:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->CUSTOM4:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->CUSTOM5:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->CUSTOM5:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->DISC_NO:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->DISC_NO:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->DISC_SUBTITLE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->DISC_SUBTITLE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->DISC_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->DISC_TOTAL:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->DJMIXER:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->DJMIXER:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOOD_ELECTRONIC:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MOOD_ELECTRONIC:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ENCODER:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ENCODER:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ENGINEER:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ENGINEER:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ENSEMBLE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ENSEMBLE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ENSEMBLE_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ENSEMBLE_SORT:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->FBPM:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->FBPM:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->GENRE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->GENRE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->GROUP:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->GROUP:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->GROUPING:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->GROUPING:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->INSTRUMENT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->INSTRUMENT:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->INVOLVED_PERSON:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->INVOLVED_PERSON:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ISRC:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ISRC:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->IS_CLASSICAL:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->IS_CLASSICAL:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->IS_COMPILATION:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->IS_COMPILATION:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->IS_SOUNDTRACK:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->IS_SOUNDTRACK:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->KEY:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->INITIAL_KEY:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->LANGUAGE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->LANGUAGE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->LYRICIST:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->LYRICIST:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->LYRICS:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->LYRICS:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MEDIA:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MEDIA:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MIXER:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MIXER:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOOD:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MOOD:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOOD_ACOUSTIC:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MOOD_ACOUSTIC:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOOD_AGGRESSIVE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MOOD_AGGRESSIVE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOOD_AROUSAL:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MOOD_AROUSAL:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOOD_DANCEABILITY:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MOOD_DANCEABILITY:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOOD_HAPPY:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MOOD_HAPPY:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOOD_INSTRUMENTAL:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MOOD_INSTRUMENTAL:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOOD_PARTY:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MOOD_PARTY:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOOD_RELAXED:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MOOD_RELAXED:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOOD_SAD:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MOOD_SAD:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOOD_VALENCE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MOOD_VALENCE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOVEMENT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MOVEMENT:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOVEMENT_NO:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MOVEMENT_NO:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOVEMENT_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MOVEMENT_TOTAL:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_ARTISTID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_ARTISTID:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_DISC_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_DISC_ID:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_ORIGINAL_RELEASE_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_ORIGINAL_RELEASEID:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASEARTISTID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_RELEASEARTISTID:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASEID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_RELEASEID:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASE_COUNTRY:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_RELEASE_COUNTRY:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASE_GROUP_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_RELEASEGROUPID:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASE_STATUS:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_RELEASE_STATUS:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASE_TRACK_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_RELEASETRACKID:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_RELEASE_TYPE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_RELEASE_TYPE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_TRACK_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_TRACK_ID:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORK:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORKID:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_COMPOSITION:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORK_COMPOSITION:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_COMPOSITION_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORK_COMPOSITION_ID:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL1:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL1:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL1_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL1_ID:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL1_TYPE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL1_TYPE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL2:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL2:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL2_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL2_ID:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL2_TYPE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL2_TYPE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL3:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL3:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL3_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL3_ID:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL3_TYPE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL3_TYPE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL4:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL4:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL4_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL4_ID:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL4_TYPE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL4_TYPE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL5:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL5:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL5_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL5_ID:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL5_TYPE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL5_TYPE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL6:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL6:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL6_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL6_ID:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICBRAINZ_WORK_PART_LEVEL6_TYPE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICBRAINZ_WORK_PART_LEVEL6_TYPE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MUSICIP_ID:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->MUSICIP_ID:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->OCCASION:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->OCCASION:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->OPUS:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->OPUS:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ORCHESTRA:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ORCHESTRA:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ORCHESTRA_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ORCHESTRA_SORT:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ORIGINAL_ALBUM:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ORIGINAL_ALBUM:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ORIGINAL_ARTIST:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ORIGINAL_ARTIST:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ORIGINAL_LYRICIST:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ORIGINAL_LYRICIST:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ORIGINAL_YEAR:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ORIGINAL_YEAR:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->PART:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->PART:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->PART_NUMBER:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->PART_NUMBER:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->PART_TYPE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->PART_TYPE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->PERFORMER:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->PERFORMER:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->PERFORMER_NAME:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->PERFORMER_NAME:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->PERFORMER_NAME_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->PERFORMER_NAME_SORT:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->PERIOD:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->PERIOD:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->PRODUCER:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->PRODUCER:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->QUALITY:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->QUALITY:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->RANKING:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->RANKING:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->RATING:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->USER_RATING:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->RECORD_LABEL:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->RECORD_LABEL:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->REMIXER:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->REMIXER:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->SCRIPT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->SCRIPT:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->SINGLE_DISC_TRACK_NO:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->SINGLE_DISC_TRACK_NO:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->SUBTITLE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->SUBTITLE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TAGS:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->TAGS:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TEMPO:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->TEMPO:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TIMBRE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->TIMBRE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TITLE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->TITLE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TITLE_MOVEMENT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->TITLE_MOVEMENT:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TITLE_SORT:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->TITLE_SORT:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TONALITY:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->TONALITY:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->TRACK:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TRACK_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->TRACK_TOTAL:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->URL_DISCOGS_ARTIST_SITE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->URL_DISCOGS_ARTIST_SITE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->URL_DISCOGS_RELEASE_SITE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->URL_DISCOGS_RELEASE_SITE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->URL_LYRICS_SITE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->URL_LYRICS_SITE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->URL_OFFICIAL_ARTIST_SITE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->URL_OFFICIAL_ARTIST_SITE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->URL_OFFICIAL_RELEASE_SITE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->URL_OFFICIAL_RELEASE_SITE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->URL_WIKIPEDIA_ARTIST_SITE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->URL_WIKIPEDIA_ARTIST_SITE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->URL_WIKIPEDIA_RELEASE_SITE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->URL_WIKIPEDIA_RELEASE_SITE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->WORK:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->WORK:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->WORK_TYPE:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->WORK_TYPE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->YEAR:Lorg/jaudiotagger/tag/FieldKey;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->YEAR:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->COMMON_FIELDS:Ljava/util/Set;

    .line 247
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->COMMON_FIELDS:Ljava/util/Set;

    sget-object v1, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ALBUM:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 248
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->COMMON_FIELDS:Ljava/util/Set;

    sget-object v1, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->AUTHOR:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 249
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->COMMON_FIELDS:Ljava/util/Set;

    sget-object v1, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->DESCRIPTION:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 250
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->COMMON_FIELDS:Ljava/util/Set;

    sget-object v1, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->GENRE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->COMMON_FIELDS:Ljava/util/Set;

    sget-object v1, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->TITLE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 252
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->COMMON_FIELDS:Ljava/util/Set;

    sget-object v1, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->TRACK:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 253
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->COMMON_FIELDS:Ljava/util/Set;

    sget-object v1, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->YEAR:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 266
    invoke-direct {p0, v0}, Lorg/jaudiotagger/tag/asf/AsfTag;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/Tag;Z)V
    .locals 0

    .line 290
    invoke-direct {p0, p2}, Lorg/jaudiotagger/tag/asf/AsfTag;-><init>(Z)V

    .line 291
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTag;->copyFrom(Lorg/jaudiotagger/tag/Tag;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 276
    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AbstractTag;-><init>()V

    .line 277
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/asf/AsfTag;->copyFields:Z

    return-void
.end method

.method private copyFrom(Lorg/jaudiotagger/tag/TagField;)Lorg/jaudiotagger/tag/TagField;
    .locals 3

    .line 367
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/asf/AsfTag;->isCopyingFields()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 369
    instance-of v0, p1, Lorg/jaudiotagger/tag/asf/AsfTagField;

    if-eqz v0, :cond_0

    .line 373
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/jaudiotagger/tag/asf/AsfTagField;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/asf/AsfTagField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/TagField;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 377
    :catch_0
    new-instance v0, Lorg/jaudiotagger/tag/asf/AsfTagField;

    check-cast p1, Lorg/jaudiotagger/tag/asf/AsfTagField;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/asf/AsfTagField;->getDescriptor()Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/asf/AsfTagField;-><init>(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V

    goto :goto_0

    .line 380
    :cond_0
    instance-of v0, p1, Lorg/jaudiotagger/tag/TagTextField;

    if-eqz v0, :cond_1

    .line 382
    move-object v0, p1

    check-cast v0, Lorg/jaudiotagger/tag/TagTextField;

    invoke-interface {v0}, Lorg/jaudiotagger/tag/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 383
    new-instance v1, Lorg/jaudiotagger/tag/asf/AsfTagTextField;

    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lorg/jaudiotagger/tag/asf/AsfTagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 387
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Asf Tag Field class:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method private copyFrom(Lorg/jaudiotagger/tag/Tag;)V
    .locals 1

    .line 341
    invoke-interface {p1}, Lorg/jaudiotagger/tag/Tag;->getFields()Ljava/util/Iterator;

    move-result-object p1

    .line 343
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/TagField;

    invoke-direct {p0, v0}, Lorg/jaudiotagger/tag/asf/AsfTag;->copyFrom(Lorg/jaudiotagger/tag/TagField;)Lorg/jaudiotagger/tag/TagField;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 348
    invoke-super {p0, v0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private isValidField(Lorg/jaudiotagger/tag/TagField;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 725
    :cond_0
    instance-of v1, p1, Lorg/jaudiotagger/tag/asf/AsfTagField;

    if-nez v1, :cond_1

    return v0

    .line 730
    :cond_1
    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method public addCopyright(Ljava/lang/String;)V
    .locals 0

    .line 321
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTag;->createCopyrightField(Ljava/lang/String;)Lorg/jaudiotagger/tag/asf/AsfTagTextField;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public addField(Lorg/jaudiotagger/tag/TagField;)V
    .locals 1

    .line 301
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTag;->isValidField(Lorg/jaudiotagger/tag/TagField;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->isMultiValued(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTag;->copyFrom(Lorg/jaudiotagger/tag/TagField;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    goto :goto_0

    .line 309
    :cond_0
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTag;->copyFrom(Lorg/jaudiotagger/tag/TagField;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public addRating(Ljava/lang/String;)V
    .locals 0

    .line 331
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTag;->createRatingField(Ljava/lang/String;)Lorg/jaudiotagger/tag/asf/AsfTagTextField;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public createArtworkField([B)Lorg/jaudiotagger/tag/asf/AsfTagCoverField;
    .locals 3

    .line 426
    new-instance v0, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;

    sget-object v1, Lorg/jaudiotagger/tag/reference/PictureTypes;->DEFAULT_ID:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, v2}, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;-><init>([BILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createCompilationField(Z)Lorg/jaudiotagger/tag/TagField;
    .locals 3

    .line 790
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->IS_COMPILATION:Lorg/jaudiotagger/tag/FieldKey;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/asf/AsfTag;->createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/asf/AsfTagTextField;

    move-result-object p1

    return-object p1
.end method

.method public createCopyrightField(Ljava/lang/String;)Lorg/jaudiotagger/tag/asf/AsfTagTextField;
    .locals 2

    .line 437
    new-instance v0, Lorg/jaudiotagger/tag/asf/AsfTagTextField;

    sget-object v1, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->COPYRIGHT:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-direct {v0, v1, p1}, Lorg/jaudiotagger/tag/asf/AsfTagTextField;-><init>(Lorg/jaudiotagger/tag/asf/AsfFieldKey;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/asf/AsfTag;->createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/asf/AsfTagTextField;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createField(Lorg/jaudiotagger/tag/images/Artwork;)Lorg/jaudiotagger/tag/TagField;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTag;->createField(Lorg/jaudiotagger/tag/images/Artwork;)Lorg/jaudiotagger/tag/asf/AsfTagCoverField;

    move-result-object p1

    return-object p1
.end method

.method public createField(Lorg/jaudiotagger/tag/images/Artwork;)Lorg/jaudiotagger/tag/asf/AsfTagCoverField;
    .locals 4

    .line 414
    new-instance v0, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;

    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getBinaryData()[B

    move-result-object v1

    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getPictureType()I

    move-result v2

    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;-><init>([BILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public varargs createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/asf/AsfTagTextField;
    .locals 2

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    .line 487
    aget-object v1, p2, v0

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    .line 495
    sget-object v1, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    invoke-virtual {v1, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    if-eqz v1, :cond_0

    .line 500
    aget-object p1, p2, v0

    invoke-virtual {p0, v1, p1}, Lorg/jaudiotagger/tag/asf/AsfTag;->createField(Lorg/jaudiotagger/tag/asf/AsfFieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/asf/AsfTagTextField;

    move-result-object p1

    return-object p1

    .line 498
    :cond_0
    new-instance p2, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/FieldKey;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 493
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 489
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createField(Lorg/jaudiotagger/tag/asf/AsfFieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/asf/AsfTagTextField;
    .locals 2

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    .line 470
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag$1;->$SwitchMap$org$jaudiotagger$tag$asf$AsfFieldKey:[I

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 477
    new-instance v0, Lorg/jaudiotagger/tag/asf/AsfTagTextField;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/jaudiotagger/tag/asf/AsfTagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 475
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Banner Image cannot be created using this method"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 473
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Cover Art cannot be created using this method"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 468
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 464
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createRatingField(Ljava/lang/String;)Lorg/jaudiotagger/tag/asf/AsfTagTextField;
    .locals 2

    .line 448
    new-instance v0, Lorg/jaudiotagger/tag/asf/AsfTagTextField;

    sget-object v1, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->RATING:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-direct {v0, v1, p1}, Lorg/jaudiotagger/tag/asf/AsfTagTextField;-><init>(Lorg/jaudiotagger/tag/asf/AsfFieldKey;Ljava/lang/String;)V

    return-object v0
.end method

.method public deleteField(Lorg/jaudiotagger/tag/FieldKey;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 523
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    return-void

    .line 521
    :cond_0
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public deleteField(Lorg/jaudiotagger/tag/asf/AsfFieldKey;)V
    .locals 0

    .line 510
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    return-void
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

    .line 547
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    if-eqz p1, :cond_0

    .line 552
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 550
    :cond_0
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
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

    .line 560
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/asf/AsfTag;->getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object v0

    .line 561
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 563
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/TagField;

    .line 565
    check-cast v2, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;

    .line 566
    invoke-static {}, Lorg/jaudiotagger/tag/images/ArtworkFactory;->getNew()Lorg/jaudiotagger/tag/images/Artwork;

    move-result-object v3

    .line 567
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;->getRawImageData()[B

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/jaudiotagger/tag/images/Artwork;->setBinaryData([B)V

    .line 568
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/jaudiotagger/tag/images/Artwork;->setMimeType(Ljava/lang/String;)V

    .line 569
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/jaudiotagger/tag/images/Artwork;->setDescription(Ljava/lang/String;)V

    .line 570
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;->getPictureType()I

    move-result v2

    invoke-interface {v3, v2}, Lorg/jaudiotagger/tag/images/Artwork;->setPictureType(I)V

    .line 571
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getAsfFields()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/jaudiotagger/tag/asf/AsfTagField;",
            ">;"
        }
    .end annotation

    .line 585
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/asf/AsfTag;->isCopyingFields()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    new-instance v0, Lorg/jaudiotagger/tag/asf/AsfTag$AsfFieldIterator;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/asf/AsfTag;->getFields()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaudiotagger/tag/asf/AsfTag$AsfFieldIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 587
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Since the field conversion is not enabled, this method cannot be executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCopyright()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 599
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->COPYRIGHT:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/asf/AsfTag;->getFields(Ljava/lang/String;)Ljava/util/List;

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

    if-eqz p1, :cond_0

    .line 535
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 533
    :cond_0
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 608
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/tag/asf/AsfTag;->getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFirst(Lorg/jaudiotagger/tag/asf/AsfFieldKey;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 624
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 622
    :cond_0
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public getFirstCopyright()Ljava/lang/String;
    .locals 1

    .line 646
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->COPYRIGHT:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/asf/AsfTag;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFirstField(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/TagField;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTag;->getFirstField(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/asf/AsfTagField;

    move-result-object p1

    return-object p1
.end method

.method public getFirstField(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/asf/AsfTagField;
    .locals 1

    if-eqz p1, :cond_0

    .line 659
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/asf/AsfTagField;

    return-object p1

    .line 657
    :cond_0
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public getFirstRating()Ljava/lang/String;
    .locals 1

    .line 669
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->RATING:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/asf/AsfTag;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRating()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 679
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->RATING:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/asf/AsfTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 636
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getItem(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 634
    :cond_0
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public hasField(Lorg/jaudiotagger/tag/FieldKey;)Z
    .locals 1

    .line 774
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfTag;->tagFieldToAsfField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 775
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTag;->getFields(Ljava/lang/String;)Ljava/util/List;

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

.method public hasField(Lorg/jaudiotagger/tag/asf/AsfFieldKey;)Z
    .locals 0

    .line 785
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTag;->getFields(Ljava/lang/String;)Ljava/util/List;

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

    .line 689
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->ASF_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isCopyingFields()Z
    .locals 1

    .line 708
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/asf/AsfTag;->copyFields:Z

    return v0
.end method

.method public setCopyright(Ljava/lang/String;)V
    .locals 0

    .line 754
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTag;->createCopyrightField(Ljava/lang/String;)Lorg/jaudiotagger/tag/asf/AsfTagTextField;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public setField(Lorg/jaudiotagger/tag/TagField;)V
    .locals 1

    .line 740
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTag;->isValidField(Lorg/jaudiotagger/tag/TagField;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTag;->copyFrom(Lorg/jaudiotagger/tag/TagField;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    :cond_0
    return-void
.end method

.method public setRating(Ljava/lang/String;)V
    .locals 0

    .line 764
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTag;->createRatingField(Ljava/lang/String;)Lorg/jaudiotagger/tag/asf/AsfTagTextField;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

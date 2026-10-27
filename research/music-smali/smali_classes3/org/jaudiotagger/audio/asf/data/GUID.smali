.class public final Lorg/jaudiotagger/audio/asf/data/GUID;
.super Ljava/lang/Object;
.source "GUID.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final GUID_AUDIOSTREAM:Lorg/jaudiotagger/audio/asf/data/GUID;

.field public static final GUID_AUDIO_ERROR_CONCEALEMENT_ABSENT:Lorg/jaudiotagger/audio/asf/data/GUID;

.field public static final GUID_AUDIO_ERROR_CONCEALEMENT_INTERLEAVED:Lorg/jaudiotagger/audio/asf/data/GUID;

.field public static final GUID_CONTENTDESCRIPTION:Lorg/jaudiotagger/audio/asf/data/GUID;

.field public static final GUID_CONTENT_BRANDING:Lorg/jaudiotagger/audio/asf/data/GUID;

.field public static final GUID_CONTENT_ENCRYPTION:Lorg/jaudiotagger/audio/asf/data/GUID;

.field public static final GUID_ENCODING:Lorg/jaudiotagger/audio/asf/data/GUID;

.field public static final GUID_EXTENDED_CONTENT_DESCRIPTION:Lorg/jaudiotagger/audio/asf/data/GUID;

.field public static final GUID_FILE:Lorg/jaudiotagger/audio/asf/data/GUID;

.field public static final GUID_HEADER:Lorg/jaudiotagger/audio/asf/data/GUID;

.field public static final GUID_HEADER_EXTENSION:Lorg/jaudiotagger/audio/asf/data/GUID;

.field public static final GUID_LANGUAGE_LIST:Lorg/jaudiotagger/audio/asf/data/GUID;

.field public static final GUID_LENGTH:I = 0x10

.field public static final GUID_METADATA:Lorg/jaudiotagger/audio/asf/data/GUID;

.field public static final GUID_METADATA_LIBRARY:Lorg/jaudiotagger/audio/asf/data/GUID;

.field private static final GUID_PATTERN:Ljava/util/regex/Pattern;

.field public static final GUID_STREAM:Lorg/jaudiotagger/audio/asf/data/GUID;

.field public static final GUID_STREAM_BITRATE_PROPERTIES:Lorg/jaudiotagger/audio/asf/data/GUID;

.field private static final GUID_TO_CONFIGURED:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jaudiotagger/audio/asf/data/GUID;",
            "Lorg/jaudiotagger/audio/asf/data/GUID;",
            ">;"
        }
    .end annotation
.end field

.field public static final GUID_UNSPECIFIED:Lorg/jaudiotagger/audio/asf/data/GUID;

.field public static final GUID_VIDEOSTREAM:Lorg/jaudiotagger/audio/asf/data/GUID;

.field public static final KNOWN_GUIDS:[Lorg/jaudiotagger/audio/asf/data/GUID;

.field public static final SCRIPT_COMMAND_OBJECT:Lorg/jaudiotagger/audio/asf/data/GUID;


# instance fields
.field private description:Ljava/lang/String;

.field private guidData:[I

.field private hash:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 41
    new-instance v0, Lorg/jaudiotagger/audio/asf/data/GUID;

    const/16 v1, 0x10

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const-string v3, "Audio error concealment absent."

    invoke-direct {v0, v2, v3}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_AUDIO_ERROR_CONCEALEMENT_ABSENT:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 48
    new-instance v0, Lorg/jaudiotagger/audio/asf/data/GUID;

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const-string v3, "Interleaved audio error concealment."

    invoke-direct {v0, v2, v3}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_AUDIO_ERROR_CONCEALEMENT_INTERLEAVED:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 53
    new-instance v0, Lorg/jaudiotagger/audio/asf/data/GUID;

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    const-string v3, " Audio stream"

    invoke-direct {v0, v2, v3}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_AUDIOSTREAM:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 58
    new-instance v0, Lorg/jaudiotagger/audio/asf/data/GUID;

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const-string v3, "Content Branding"

    invoke-direct {v0, v2, v3}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_CONTENT_BRANDING:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 64
    new-instance v0, Lorg/jaudiotagger/audio/asf/data/GUID;

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const-string v3, "Content Encryption Object"

    invoke-direct {v0, v2, v3}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_CONTENT_ENCRYPTION:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 70
    new-instance v0, Lorg/jaudiotagger/audio/asf/data/GUID;

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const-string v3, "Content Description"

    invoke-direct {v0, v2, v3}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_CONTENTDESCRIPTION:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 75
    new-instance v0, Lorg/jaudiotagger/audio/asf/data/GUID;

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const-string v3, "Encoding description"

    invoke-direct {v0, v2, v3}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_ENCODING:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 81
    new-instance v0, Lorg/jaudiotagger/audio/asf/data/GUID;

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const-string v3, "Extended Content Description"

    invoke-direct {v0, v2, v3}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_EXTENDED_CONTENT_DESCRIPTION:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 86
    new-instance v0, Lorg/jaudiotagger/audio/asf/data/GUID;

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const-string v3, "File header"

    invoke-direct {v0, v2, v3}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_FILE:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 91
    new-instance v0, Lorg/jaudiotagger/audio/asf/data/GUID;

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    const-string v3, "Asf header"

    invoke-direct {v0, v2, v3}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_HEADER:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 96
    new-instance v0, Lorg/jaudiotagger/audio/asf/data/GUID;

    new-array v2, v1, [I

    fill-array-data v2, :array_a

    const-string v3, "Header Extension"

    invoke-direct {v0, v2, v3}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_HEADER_EXTENSION:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 101
    new-instance v0, Lorg/jaudiotagger/audio/asf/data/GUID;

    new-array v2, v1, [I

    fill-array-data v2, :array_b

    const-string v3, "Language List"

    invoke-direct {v0, v2, v3}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_LANGUAGE_LIST:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 111
    new-instance v0, Lorg/jaudiotagger/audio/asf/data/GUID;

    new-array v2, v1, [I

    fill-array-data v2, :array_c

    const-string v3, "Metadata"

    invoke-direct {v0, v2, v3}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_METADATA:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 116
    new-instance v0, Lorg/jaudiotagger/audio/asf/data/GUID;

    new-array v2, v1, [I

    fill-array-data v2, :array_d

    const-string v3, "Metadata Library"

    invoke-direct {v0, v2, v3}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_METADATA_LIBRARY:Lorg/jaudiotagger/audio/asf/data/GUID;

    const/4 v0, 0x2

    const-string v2, "[a-f0-9]{8}\\-[a-f0-9]{4}\\-[a-f0-9]{4}\\-[a-f0-9]{4}\\-[a-f0-9]{12}"

    .line 121
    invoke-static {v2, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_PATTERN:Ljava/util/regex/Pattern;

    .line 126
    new-instance v2, Lorg/jaudiotagger/audio/asf/data/GUID;

    new-array v3, v1, [I

    fill-array-data v3, :array_e

    const-string v4, "Stream"

    invoke-direct {v2, v3, v4}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v2, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_STREAM:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 132
    new-instance v2, Lorg/jaudiotagger/audio/asf/data/GUID;

    new-array v3, v1, [I

    fill-array-data v3, :array_f

    const-string v4, "Stream bitrate properties"

    invoke-direct {v2, v3, v4}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v2, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_STREAM_BITRATE_PROPERTIES:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 147
    new-instance v2, Lorg/jaudiotagger/audio/asf/data/GUID;

    new-array v3, v1, [I

    fill-array-data v3, :array_10

    const-string v4, "Unspecified"

    invoke-direct {v2, v3, v4}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v2, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_UNSPECIFIED:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 152
    new-instance v2, Lorg/jaudiotagger/audio/asf/data/GUID;

    new-array v3, v1, [I

    fill-array-data v3, :array_11

    const-string v4, "Video stream"

    invoke-direct {v2, v3, v4}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v2, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_VIDEOSTREAM:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 162
    new-instance v2, Lorg/jaudiotagger/audio/asf/data/GUID;

    new-array v3, v1, [I

    fill-array-data v3, :array_12

    const-string v4, "Script Command Object"

    invoke-direct {v2, v3, v4}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v2, Lorg/jaudiotagger/audio/asf/data/GUID;->SCRIPT_COMMAND_OBJECT:Lorg/jaudiotagger/audio/asf/data/GUID;

    const/16 v2, 0x12

    .line 166
    new-array v2, v2, [Lorg/jaudiotagger/audio/asf/data/GUID;

    sget-object v3, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_AUDIO_ERROR_CONCEALEMENT_ABSENT:Lorg/jaudiotagger/audio/asf/data/GUID;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_CONTENTDESCRIPTION:Lorg/jaudiotagger/audio/asf/data/GUID;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_AUDIOSTREAM:Lorg/jaudiotagger/audio/asf/data/GUID;

    aput-object v3, v2, v0

    const/4 v0, 0x3

    sget-object v3, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_ENCODING:Lorg/jaudiotagger/audio/asf/data/GUID;

    aput-object v3, v2, v0

    const/4 v0, 0x4

    sget-object v3, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_FILE:Lorg/jaudiotagger/audio/asf/data/GUID;

    aput-object v3, v2, v0

    const/4 v0, 0x5

    sget-object v3, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_HEADER:Lorg/jaudiotagger/audio/asf/data/GUID;

    aput-object v3, v2, v0

    const/4 v0, 0x6

    sget-object v3, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_STREAM:Lorg/jaudiotagger/audio/asf/data/GUID;

    aput-object v3, v2, v0

    const/4 v0, 0x7

    sget-object v3, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_EXTENDED_CONTENT_DESCRIPTION:Lorg/jaudiotagger/audio/asf/data/GUID;

    aput-object v3, v2, v0

    const/16 v0, 0x8

    sget-object v3, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_VIDEOSTREAM:Lorg/jaudiotagger/audio/asf/data/GUID;

    aput-object v3, v2, v0

    const/16 v0, 0x9

    sget-object v3, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_HEADER_EXTENSION:Lorg/jaudiotagger/audio/asf/data/GUID;

    aput-object v3, v2, v0

    const/16 v0, 0xa

    sget-object v3, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_STREAM_BITRATE_PROPERTIES:Lorg/jaudiotagger/audio/asf/data/GUID;

    aput-object v3, v2, v0

    const/16 v0, 0xb

    sget-object v3, Lorg/jaudiotagger/audio/asf/data/GUID;->SCRIPT_COMMAND_OBJECT:Lorg/jaudiotagger/audio/asf/data/GUID;

    aput-object v3, v2, v0

    const/16 v0, 0xc

    sget-object v3, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_CONTENT_ENCRYPTION:Lorg/jaudiotagger/audio/asf/data/GUID;

    aput-object v3, v2, v0

    const/16 v0, 0xd

    sget-object v3, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_CONTENT_BRANDING:Lorg/jaudiotagger/audio/asf/data/GUID;

    aput-object v3, v2, v0

    const/16 v0, 0xe

    sget-object v3, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_UNSPECIFIED:Lorg/jaudiotagger/audio/asf/data/GUID;

    aput-object v3, v2, v0

    const/16 v0, 0xf

    sget-object v3, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_METADATA_LIBRARY:Lorg/jaudiotagger/audio/asf/data/GUID;

    aput-object v3, v2, v0

    sget-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_METADATA:Lorg/jaudiotagger/audio/asf/data/GUID;

    aput-object v0, v2, v1

    const/16 v0, 0x11

    sget-object v1, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_LANGUAGE_LIST:Lorg/jaudiotagger/audio/asf/data/GUID;

    aput-object v1, v2, v0

    sput-object v2, Lorg/jaudiotagger/audio/asf/data/GUID;->KNOWN_GUIDS:[Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 167
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lorg/jaudiotagger/audio/asf/data/GUID;->KNOWN_GUIDS:[Lorg/jaudiotagger/audio/asf/data/GUID;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_TO_CONFIGURED:Ljava/util/Map;

    .line 168
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->KNOWN_GUIDS:[Lorg/jaudiotagger/audio/asf/data/GUID;

    array-length v1, v0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v2, v0, v4

    .line 171
    sget-object v3, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_TO_CONFIGURED:Ljava/util/Map;

    invoke-interface {v3, v2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x40
        0xa4
        0xf1
        0x49
        0xce
        0x4e
        0xd0
        0x11
        0xa3
        0xac
        0x0
        0xa0
        0xc9
        0x3
        0x48
        0xf6
    .end array-data

    :array_1
    .array-data 4
        0x40
        0xa4
        0xf1
        0x49
        0xce
        0x4e
        0xd0
        0x11
        0xa3
        0xac
        0x0
        0xa0
        0xc9
        0x3
        0x48
        0xf6
    .end array-data

    :array_2
    .array-data 4
        0x40
        0x9e
        0x69
        0xf8
        0x4d
        0x5b
        0xcf
        0x11
        0xa8
        0xfd
        0x0
        0x80
        0x5f
        0x5c
        0x44
        0x2b
    .end array-data

    :array_3
    .array-data 4
        0xfa
        0xb3
        0x11
        0x22
        0x23
        0xbd
        0xd2
        0x11
        0xb4
        0xb7
        0x0
        0xa0
        0xc9
        0x55
        0xfc
        0x6e
    .end array-data

    :array_4
    .array-data 4
        0xfb
        0xb3
        0x11
        0x22
        0x23
        0xbd
        0xd2
        0x11
        0xb4
        0xb7
        0x0
        0xa0
        0xc9
        0x55
        0xfc
        0x6e
    .end array-data

    :array_5
    .array-data 4
        0x33
        0x26
        0xb2
        0x75
        0x8e
        0x66
        0xcf
        0x11
        0xa6
        0xd9
        0x0
        0xaa
        0x0
        0x62
        0xce
        0x6c
    .end array-data

    :array_6
    .array-data 4
        0x40
        0x52
        0xd1
        0x86
        0x1d
        0x31
        0xd0
        0x11
        0xa3
        0xa4
        0x0
        0xa0
        0xc9
        0x3
        0x48
        0xf6
    .end array-data

    :array_7
    .array-data 4
        0x40
        0xa4
        0xd0
        0xd2
        0x7
        0xe3
        0xd2
        0x11
        0x97
        0xf0
        0x0
        0xa0
        0xc9
        0x5e
        0xa8
        0x50
    .end array-data

    :array_8
    .array-data 4
        0xa1
        0xdc
        0xab
        0x8c
        0x47
        0xa9
        0xcf
        0x11
        0x8e
        0xe4
        0x0
        0xc0
        0xc
        0x20
        0x53
        0x65
    .end array-data

    :array_9
    .array-data 4
        0x30
        0x26
        0xb2
        0x75
        0x8e
        0x66
        0xcf
        0x11
        0xa6
        0xd9
        0x0
        0xaa
        0x0
        0x62
        0xce
        0x6c
    .end array-data

    :array_a
    .array-data 4
        0xb5
        0x3
        0xbf
        0x5f
        0x2e
        0xa9
        0xcf
        0x11
        0x8e
        0xe3
        0x0
        0xc0
        0xc
        0x20
        0x53
        0x65
    .end array-data

    :array_b
    .array-data 4
        0xa9
        0x46
        0x43
        0x7c
        0xe0
        0xef
        0xfc
        0x4b
        0xb2
        0x29
        0x39
        0x3e
        0xde
        0x41
        0x5c
        0x85
    .end array-data

    :array_c
    .array-data 4
        0xea
        0xcb
        0xf8
        0xc5
        0xaf
        0x5b
        0x77
        0x48
        0x84
        0x67
        0xaa
        0x8c
        0x44
        0xfa
        0x4c
        0xca
    .end array-data

    :array_d
    .array-data 4
        0x94
        0x1c
        0x23
        0x44
        0x98
        0x94
        0xd1
        0x49
        0xa1
        0x41
        0x1d
        0x13
        0x4e
        0x45
        0x70
        0x54
    .end array-data

    :array_e
    .array-data 4
        0x91
        0x7
        0xdc
        0xb7
        0xb7
        0xa9
        0xcf
        0x11
        0x8e
        0xe6
        0x0
        0xc0
        0xc
        0x20
        0x53
        0x65
    .end array-data

    :array_f
    .array-data 4
        0xce
        0x75
        0xf8
        0x7b
        0x8d
        0x46
        0xd1
        0x11
        0x8d
        0x82
        0x0
        0x60
        0x97
        0xc9
        0xa2
        0xb2
    .end array-data

    :array_10
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_11
    .array-data 4
        0xc0
        0xef
        0x19
        0xbc
        0x4d
        0x5b
        0xcf
        0x11
        0xa8
        0xfd
        0x0
        0x80
        0x5f
        0x5c
        0x44
        0x2b
    .end array-data

    :array_12
    .array-data 4
        0x30
        0x1a
        0xfb
        0x1e
        0x62
        0xb
        0xd0
        0x11
        0xa3
        0x9b
        0x0
        0xa0
        0xc9
        0x3
        0x48
        0xf6
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 331
    invoke-static {p1}, Lorg/jaudiotagger/audio/asf/data/GUID;->parseGUID(Ljava/lang/String;)Lorg/jaudiotagger/audio/asf/data/GUID;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/GUID;->getGUID()[I

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([I)V

    if-eqz p2, :cond_0

    .line 336
    iput-object p2, p0, Lorg/jaudiotagger/audio/asf/data/GUID;->description:Ljava/lang/String;

    return-void

    .line 334
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 3

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 265
    iput-object v0, p0, Lorg/jaudiotagger/audio/asf/data/GUID;->description:Ljava/lang/String;

    const/4 v0, 0x0

    .line 271
    iput-object v0, p0, Lorg/jaudiotagger/audio/asf/data/GUID;->guidData:[I

    .line 287
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 288
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 290
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 292
    :cond_0
    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/asf/data/GUID;->setGUID([I)V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 1

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 265
    iput-object v0, p0, Lorg/jaudiotagger/audio/asf/data/GUID;->description:Ljava/lang/String;

    const/4 v0, 0x0

    .line 271
    iput-object v0, p0, Lorg/jaudiotagger/audio/asf/data/GUID;->guidData:[I

    .line 302
    invoke-direct {p0, p1}, Lorg/jaudiotagger/audio/asf/data/GUID;->setGUID([I)V

    return-void
.end method

.method public constructor <init>([ILjava/lang/String;)V
    .locals 0

    .line 314
    invoke-direct {p0, p1}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([I)V

    if-eqz p2, :cond_0

    .line 319
    iput-object p2, p0, Lorg/jaudiotagger/audio/asf/data/GUID;->description:Ljava/lang/String;

    return-void

    .line 317
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static assertGUID([I)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 185
    array-length p0, p0

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getConfigured(Lorg/jaudiotagger/audio/asf/data/GUID;)Lorg/jaudiotagger/audio/asf/data/GUID;
    .locals 1

    .line 199
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_TO_CONFIGURED:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/audio/asf/data/GUID;

    return-object p0
.end method

.method public static getGuidDescription(Lorg/jaudiotagger/audio/asf/data/GUID;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 218
    invoke-static {p0}, Lorg/jaudiotagger/audio/asf/data/GUID;->getConfigured(Lorg/jaudiotagger/audio/asf/data/GUID;)Lorg/jaudiotagger/audio/asf/data/GUID;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    invoke-static {p0}, Lorg/jaudiotagger/audio/asf/data/GUID;->getConfigured(Lorg/jaudiotagger/audio/asf/data/GUID;)Lorg/jaudiotagger/audio/asf/data/GUID;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/GUID;->getDescription()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    .line 216
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument must not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getHex([B)[Ljava/lang/String;
    .locals 6

    .line 401
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 403
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 405
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 406
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const-string v4, "0"

    .line 409
    invoke-virtual {v1, v2, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static parseGUID(Ljava/lang/String;)Lorg/jaudiotagger/audio/asf/data/GUID;
    .locals 7

    if-eqz p0, :cond_3

    .line 240
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x10

    .line 244
    new-array v1, v0, [I

    .line 248
    new-array v2, v0, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    move v4, v3

    .line 250
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 252
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v4, 0x1

    .line 256
    aget v4, v2, v4

    add-int/lit8 v6, v3, 0x2

    invoke-virtual {p0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    aput v6, v1, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 259
    :cond_1
    new-instance p0, Lorg/jaudiotagger/audio/asf/data/GUID;

    invoke-direct {p0, v1}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([I)V

    return-object p0

    .line 242
    :cond_2
    new-instance p0, Lorg/jaudiotagger/audio/asf/data/GUIDFormatException;

    const-string v0, "Invalid guidData format."

    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/asf/data/GUIDFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 238
    :cond_3
    new-instance p0, Lorg/jaudiotagger/audio/asf/data/GUIDFormatException;

    const-string v0, "null"

    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/asf/data/GUIDFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :array_0
    .array-data 4
        0x3
        0x2
        0x1
        0x0
        0x5
        0x4
        0x7
        0x6
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
    .end array-data
.end method

.method private setGUID([I)V
    .locals 3

    .line 475
    invoke-static {p1}, Lorg/jaudiotagger/audio/asf/data/GUID;->assertGUID([I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    .line 477
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/jaudiotagger/audio/asf/data/GUID;->guidData:[I

    .line 478
    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/GUID;->guidData:[I

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 482
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The given guidData doesn\'t match the GUID specification."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 349
    instance-of v0, p1, Lorg/jaudiotagger/audio/asf/data/GUID;

    if-eqz v0, :cond_0

    .line 351
    check-cast p1, Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 352
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/GUID;->getGUID()[I

    move-result-object v0

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/GUID;->getGUID()[I

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getBytes()[B
    .locals 3

    .line 365
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/GUID;->guidData:[I

    array-length v0, v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 366
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 368
    iget-object v2, p0, Lorg/jaudiotagger/audio/asf/data/GUID;->guidData:[I

    aget v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 378
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/GUID;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getGUID()[I
    .locals 4

    .line 388
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/GUID;->guidData:[I

    array-length v1, v0

    new-array v1, v1, [I

    .line 389
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public hashCode()I
    .locals 5

    .line 422
    iget v0, p0, Lorg/jaudiotagger/audio/asf/data/GUID;->hash:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 425
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/GUID;->getGUID()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget v4, v0, v2

    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 429
    :cond_0
    iput v3, p0, Lorg/jaudiotagger/audio/asf/data/GUID;->hash:I

    .line 431
    :cond_1
    iget v0, p0, Lorg/jaudiotagger/audio/asf/data/GUID;->hash:I

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 442
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/GUID;->getGUID()[I

    move-result-object v0

    invoke-static {v0}, Lorg/jaudiotagger/audio/asf/data/GUID;->assertGUID([I)Z

    move-result v0

    return v0
.end method

.method public prettyPrint()Ljava/lang/String;
    .locals 3

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 453
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/GUID;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 454
    invoke-static {v1}, Lorg/jaudiotagger/audio/asf/util/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 456
    invoke-static {p0}, Lorg/jaudiotagger/audio/asf/data/GUID;->getGuidDescription(Lorg/jaudiotagger/audio/asf/data/GUID;)Ljava/lang/String;

    move-result-object v1

    .line 458
    :cond_0
    invoke-static {v1}, Lorg/jaudiotagger/audio/asf/util/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Description: "

    .line 460
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/jaudiotagger/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    :cond_1
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/GUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 496
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/GUID;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jaudiotagger/audio/asf/data/GUID;->getHex([B)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 497
    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    .line 498
    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 499
    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 500
    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2d

    .line 501
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    .line 502
    aget-object v3, v1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    .line 503
    aget-object v3, v1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x7

    .line 505
    aget-object v3, v1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x6

    .line 506
    aget-object v3, v1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x8

    .line 508
    aget-object v3, v1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x9

    .line 509
    aget-object v3, v1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    .line 511
    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xb

    .line 512
    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xc

    .line 513
    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xd

    .line 514
    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    .line 515
    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xf

    .line 516
    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

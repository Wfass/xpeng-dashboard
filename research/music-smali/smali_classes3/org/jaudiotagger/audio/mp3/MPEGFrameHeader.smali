.class public Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;
.super Ljava/lang/Object;
.source "MPEGFrameHeader.java"


# static fields
.field private static final BYTE_1:I = 0x0

.field private static final BYTE_2:I = 0x1

.field private static final BYTE_3:I = 0x2

.field private static final BYTE_4:I = 0x3

.field public static final EMPHASIS_5015MS:I = 0x1

.field public static final EMPHASIS_CCITT:I = 0x3

.field public static final EMPHASIS_NONE:I = 0x0

.field public static final EMPHASIS_RESERVED:I = 0x2

.field public static final HEADER_SIZE:I = 0x4

.field public static final LAYER_I:I = 0x3

.field public static final LAYER_II:I = 0x2

.field public static final LAYER_III:I = 0x1

.field private static final LAYER_III_FRAME_SIZE_COEFFICIENT:I = 0x90

.field public static final LAYER_III_SLOT_SIZE:I = 0x1

.field private static final LAYER_II_FRAME_SIZE_COEFFICIENT:I = 0x90

.field public static final LAYER_II_SLOT_SIZE:I = 0x1

.field private static final LAYER_I_FRAME_SIZE_COEFFICIENT:I = 0xc

.field public static final LAYER_I_SLOT_SIZE:I = 0x4

.field private static final MASK_MP3_BITRATE:I = 0xf0

.field private static final MASK_MP3_COPY:I = 0x8

.field private static final MASK_MP3_EMPHASIS:I = 0x3

.field private static final MASK_MP3_FREQUENCY:I = 0xc

.field private static final MASK_MP3_HOME:I = 0x4

.field private static final MASK_MP3_ID:I = 0x8

.field private static final MASK_MP3_LAYER:I = 0x6

.field private static final MASK_MP3_MODE:I = 0xc0

.field private static final MASK_MP3_MODE_EXTENSION:I = 0x30

.field private static final MASK_MP3_PADDING:I = 0x2

.field private static final MASK_MP3_PRIVACY:I = 0x1

.field private static final MASK_MP3_PROTECTION:I = 0x1

.field private static final MASK_MP3_VERSION:I = 0x18

.field public static final MODE_DUAL_CHANNEL:I = 0x2

.field private static final MODE_EXTENSION_NONE:I = 0x0

.field private static final MODE_EXTENSION_OFF_OFF:I = 0x0

.field private static final MODE_EXTENSION_OFF_ON:I = 0x2

.field private static final MODE_EXTENSION_ONE:I = 0x1

.field private static final MODE_EXTENSION_ON_OFF:I = 0x1

.field private static final MODE_EXTENSION_ON_ON:I = 0x3

.field private static final MODE_EXTENSION_THREE:I = 0x3

.field private static final MODE_EXTENSION_TWO:I = 0x2

.field public static final MODE_JOINT_STEREO:I = 0x1

.field public static final MODE_MONO:I = 0x3

.field public static final MODE_STEREO:I = 0x0

.field private static final SCALE_BY_THOUSAND:I = 0x3e8

.field public static final SYNC_BIT_ANDSAMPING_BYTE3:I = 0xfc

.field public static final SYNC_BYTE1:I = 0xff

.field public static final SYNC_BYTE2:I = 0xe0

.field public static final SYNC_SIZE:I = 0x2

.field public static final VERSION_1:I = 0x3

.field public static final VERSION_2:I = 0x2

.field public static final VERSION_2_5:I

.field private static final bitrateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final emphasisMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final header:[B

.field private static final modeExtensionLayerIIIMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final modeExtensionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final modeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final mpegLayerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final mpegVersionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final samplesPerFrameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final samplesPerFrameV1Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final samplesPerFrameV25Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final samplesPerFrameV2Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final samplingRateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final samplingV1Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final samplingV25Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final samplingV2Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitRate:Ljava/lang/Integer;

.field private channelMode:I

.field private channelModeAsString:Ljava/lang/String;

.field private emphasis:I

.field private emphasisAsString:Ljava/lang/String;

.field private isCopyrighted:Z

.field private isOriginal:Z

.field private isPadding:Z

.field private isPrivate:Z

.field private isProtected:Z

.field private layer:I

.field private layerAsString:Ljava/lang/String;

.field private modeExtension:Ljava/lang/String;

.field private mpegBytes:[B

.field private samplingRate:Ljava/lang/Integer;

.field private version:I

.field private versionAsString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v0, 0x4

    .line 46
    new-array v0, v0, [B

    sput-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->header:[B

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegVersionMap:Ljava/util/Map;

    .line 59
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegVersionMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MPEG-2.5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegVersionMap:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MPEG-2"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegVersionMap:Ljava/util/Map;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "MPEG-1"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegLayerMap:Ljava/util/Map;

    .line 74
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegLayerMap:Ljava/util/Map;

    const-string v4, "Layer 1"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegLayerMap:Ljava/util/Map;

    const-string v4, "Layer 2"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegLayerMap:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Layer 3"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    .line 94
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x1e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x20

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x2e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v7, 0x40

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x3e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v8, 0x60

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x4e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v9, 0x80

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x5e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v10, 0xa0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x6e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v11, 0xc0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x7e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v11, 0xe0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x8e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v11, 0x100

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x9e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v11, 0x120

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0xae

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v11, 0x140

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0xbe

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v11, 0x160

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0xce

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v11, 0x180

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0xde

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v12, 0x1a0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0xee

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v12, 0x1c0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x1c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x2c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v12, 0x30

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v13, 0x38

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x4c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x5c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v14, 0x50

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x6c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x7c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v15, 0x70

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x8c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x9c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0xac

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v14, 0xc0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0xbc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v14, 0xe0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0xcc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v14, 0x100

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0xdc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v14, 0x140

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0xec

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x1a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x2a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v14, 0x28

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x3a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x4a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x5a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x6a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v14, 0x50

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x7a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x8a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x9a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0xaa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0xba

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v11, 0xc0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0xca

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v11, 0xe0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0xda

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v11, 0x100

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0xea

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v11, 0x140

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x16

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x26

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x36

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x46

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x56

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v11, 0x50

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x66

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x76

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x86

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x96

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v11, 0x90

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0xa6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0xb6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v11, 0xb0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0xc6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v11, 0xc0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0xd6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v11, 0xe0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0xe6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v11, 0x100

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v11, 0x8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x24

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v11, 0x10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x34

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v11, 0x18

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x44

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x54

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v11, 0x28

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x74

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x84

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x94

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v11, 0x50

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0xa4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0xb4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0xc4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0xd4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v11, 0x90

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0xe4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v11, 0x8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x22

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v11, 0x10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x32

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v11, 0x18

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x42

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x52

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x28

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x62

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x72

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x82

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0x92

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x50

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0xa2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0xb2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0xc2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0xd2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x90

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    const/16 v5, 0xe2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->modeMap:Ljava/util/Map;

    .line 196
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->modeMap:Ljava/util/Map;

    const-string v5, "Stereo"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->modeMap:Ljava/util/Map;

    const-string v5, "Joint Stereo"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->modeMap:Ljava/util/Map;

    const-string v5, "Dual"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->modeMap:Ljava/util/Map;

    const-string v5, "Mono"

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->emphasisMap:Ljava/util/Map;

    .line 213
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->emphasisMap:Ljava/util/Map;

    const-string v5, "None"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->emphasisMap:Ljava/util/Map;

    const-string v5, "5015MS"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->emphasisMap:Ljava/util/Map;

    const-string v5, "Reserved"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->emphasisMap:Ljava/util/Map;

    const-string v5, "CCITT"

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->modeExtensionMap:Ljava/util/Map;

    .line 226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->modeExtensionLayerIIIMap:Ljava/util/Map;

    .line 234
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->modeExtensionMap:Ljava/util/Map;

    const-string v5, "4-31"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->modeExtensionMap:Ljava/util/Map;

    const-string v5, "8-31"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->modeExtensionMap:Ljava/util/Map;

    const-string v5, "12-31"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->modeExtensionMap:Ljava/util/Map;

    const-string v5, "16-31"

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->modeExtensionLayerIIIMap:Ljava/util/Map;

    const-string v5, "off-off"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->modeExtensionLayerIIIMap:Ljava/util/Map;

    const-string v5, "on-off"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->modeExtensionLayerIIIMap:Ljava/util/Map;

    const-string v5, "off-on"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->modeExtensionLayerIIIMap:Ljava/util/Map;

    const-string v5, "on-on"

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplingRateMap:Ljava/util/Map;

    .line 249
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplingV1Map:Ljava/util/Map;

    .line 250
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplingV2Map:Ljava/util/Map;

    .line 251
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplingV25Map:Ljava/util/Map;

    .line 255
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplingV1Map:Ljava/util/Map;

    const v5, 0xac44

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplingV1Map:Ljava/util/Map;

    const v5, 0xbb80

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplingV1Map:Ljava/util/Map;

    const/16 v5, 0x7d00

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplingV2Map:Ljava/util/Map;

    const/16 v5, 0x5622

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplingV2Map:Ljava/util/Map;

    const/16 v5, 0x5dc0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplingV2Map:Ljava/util/Map;

    const/16 v5, 0x3e80

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplingV25Map:Ljava/util/Map;

    const/16 v5, 0x2b11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplingV25Map:Ljava/util/Map;

    const/16 v5, 0x2ee0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplingV25Map:Ljava/util/Map;

    const/16 v5, 0x1f40

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplingRateMap:Ljava/util/Map;

    sget-object v5, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplingV1Map:Ljava/util/Map;

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplingRateMap:Ljava/util/Map;

    sget-object v5, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplingV2Map:Ljava/util/Map;

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplingRateMap:Ljava/util/Map;

    sget-object v5, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplingV25Map:Ljava/util/Map;

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplesPerFrameMap:Ljava/util/Map;

    .line 274
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplesPerFrameV1Map:Ljava/util/Map;

    .line 275
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplesPerFrameV2Map:Ljava/util/Map;

    .line 276
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplesPerFrameV25Map:Ljava/util/Map;

    .line 280
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplesPerFrameV1Map:Ljava/util/Map;

    const/16 v5, 0x180

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplesPerFrameV1Map:Ljava/util/Map;

    const/16 v6, 0x480

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplesPerFrameV1Map:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplesPerFrameV2Map:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplesPerFrameV2Map:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplesPerFrameV2Map:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplesPerFrameV25Map:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplesPerFrameV25Map:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplesPerFrameV25Map:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplesPerFrameMap:Ljava/util/Map;

    sget-object v4, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplesPerFrameV1Map:Ljava/util/Map;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplesPerFrameMap:Ljava/util/Map;

    sget-object v3, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplesPerFrameV2Map:Ljava/util/Map;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplesPerFrameMap:Ljava/util/Map;

    sget-object v2, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplesPerFrameV25Map:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 821
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>([B)V
    .locals 0

    .line 833
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 834
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegBytes:[B

    .line 835
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->setBitrate()V

    .line 836
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->setVersion()V

    .line 837
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->setLayer()V

    .line 838
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->setProtected()V

    .line 839
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->setSamplingRate()V

    .line 840
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->setPadding()V

    .line 841
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->setPrivate()V

    .line 842
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->setChannelMode()V

    .line 843
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->setModeExtension()V

    .line 844
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->setCopyrighted()V

    .line 845
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->setOriginal()V

    .line 846
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->setEmphasis()V

    return-void
.end method

.method public static isMPEGFrame(Ljava/nio/ByteBuffer;)Z
    .locals 3

    .line 874
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 875
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 876
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    const/16 v2, 0xe0

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x2

    .line 877
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    const/16 v0, 0xfc

    and-int/2addr p0, v0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static parseMPEGHeader(Ljava/nio/ByteBuffer;)Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;
    .locals 4

    .line 858
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 859
    sget-object v1, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->header:[B

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {p0, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 860
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 861
    new-instance p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;

    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->header:[B

    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;-><init>([B)V

    return-object p0
.end method

.method private setBitrate()V
    .locals 4

    .line 514
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegBytes:[B

    const/4 v1, 0x2

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xf0

    const/4 v2, 0x1

    aget-byte v3, v0, v2

    and-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    aget-byte v0, v0, v2

    and-int/lit8 v0, v0, 0x6

    or-int/2addr v0, v1

    .line 516
    sget-object v1, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitrateMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitRate:Ljava/lang/Integer;

    .line 517
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitRate:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    return-void

    .line 519
    :cond_0
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;

    const-string v1, "Invalid bitrate"

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setChannelMode()V
    .locals 2

    .line 530
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegBytes:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xc0

    ushr-int/lit8 v0, v0, 0x6

    iput v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->channelMode:I

    .line 531
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->modeMap:Ljava/util/Map;

    iget v1, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->channelMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->channelModeAsString:Ljava/lang/String;

    .line 532
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->channelModeAsString:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 534
    :cond_0
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;

    const-string v1, "Invalid channel mode"

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setCopyrighted()V
    .locals 2

    .line 464
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegBytes:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isCopyrighted:Z

    return-void
.end method

.method private setEmphasis()V
    .locals 2

    .line 544
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegBytes:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->emphasis:I

    .line 545
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->emphasisMap:Ljava/util/Map;

    iget v1, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->emphasis:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->emphasisAsString:Ljava/lang/String;

    .line 546
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getEmphasisAsString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 548
    :cond_0
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;

    const-string v1, "Invalid emphasis"

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setLayer()V
    .locals 2

    .line 568
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegBytes:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x6

    ushr-int/2addr v0, v1

    iput v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->layer:I

    .line 569
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegLayerMap:Ljava/util/Map;

    iget v1, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->layer:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->layerAsString:Ljava/lang/String;

    .line 570
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->layerAsString:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 572
    :cond_0
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;

    const-string v1, "Invalid Layer"

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setModeExtension()V
    .locals 4

    .line 583
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegBytes:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x30

    shr-int/lit8 v0, v0, 0x4

    .line 584
    iget v1, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->layer:I

    const-string v2, "Invalid Mode Extension"

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 586
    sget-object v1, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->modeExtensionLayerIIIMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->modeExtension:Ljava/lang/String;

    .line 587
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getModeExtension()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 589
    :cond_0
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;

    invoke-direct {v0, v2}, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 594
    :cond_1
    sget-object v1, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->modeExtensionMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->modeExtension:Ljava/lang/String;

    .line 595
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getModeExtension()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_0
    return-void

    .line 597
    :cond_2
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;

    invoke-direct {v0, v2}, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setOriginal()V
    .locals 2

    .line 488
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegBytes:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isOriginal:Z

    return-void
.end method

.method private setPadding()V
    .locals 2

    .line 558
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegBytes:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isPadding:Z

    return-void
.end method

.method private setPrivate()V
    .locals 2

    .line 504
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegBytes:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isPrivate:Z

    return-void
.end method

.method private setProtected()V
    .locals 2

    .line 496
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegBytes:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isProtected:Z

    return-void
.end method

.method private setSamplingRate()V
    .locals 3

    .line 609
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegBytes:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0xc

    ushr-int/2addr v0, v1

    .line 610
    sget-object v1, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplingRateMap:Ljava/util/Map;

    iget v2, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->version:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 615
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplingRate:Ljava/lang/Integer;

    .line 616
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplingRate:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    return-void

    .line 618
    :cond_0
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;

    const-string v1, "Invalid sampling rate"

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 613
    :cond_1
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;

    const-string v1, "Invalid version"

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setVersion()V
    .locals 2

    .line 475
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegBytes:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x18

    shr-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    iput v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->version:I

    .line 476
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegVersionMap:Ljava/util/Map;

    iget v1, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->version:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->versionAsString:Ljava/lang/String;

    .line 477
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->versionAsString:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 479
    :cond_0
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;

    const-string v1, "Invalid mpeg version"

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/InvalidAudioFrameException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getBitRate()Ljava/lang/Integer;
    .locals 1

    .line 688
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->bitRate:Ljava/lang/Integer;

    return-object v0
.end method

.method public getChannelMode()I
    .locals 1

    .line 646
    iget v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->channelMode:I

    return v0
.end method

.method public getChannelModeAsString()Ljava/lang/String;
    .locals 1

    .line 651
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->channelModeAsString:Ljava/lang/String;

    return-object v0
.end method

.method public getEmphasis()I
    .locals 1

    .line 802
    iget v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->emphasis:I

    return v0
.end method

.method public getEmphasisAsString()Ljava/lang/String;
    .locals 1

    .line 807
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->emphasisAsString:Ljava/lang/String;

    return-object v0
.end method

.method public getFrameLength()I
    .locals 5

    .line 706
    iget v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->version:I

    const-string v1, "Mp3 Unknown Layer:"

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_4

    if-ne v0, v3, :cond_3

    .line 736
    iget v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->layer:I

    if-eq v0, v4, :cond_2

    if-eq v0, v2, :cond_1

    if-ne v0, v3, :cond_0

    .line 739
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getBitRate()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    mul-int/lit8 v0, v0, 0xc

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getSamplingRate()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getPaddingLength()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    return v0

    .line 748
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->layer:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 742
    :cond_1
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getBitRate()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    mul-int/lit16 v0, v0, 0x90

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getSamplingRate()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getPaddingLength()I

    move-result v1

    mul-int/2addr v1, v4

    add-int/2addr v0, v1

    return v0

    .line 745
    :cond_2
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getBitRate()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    mul-int/lit16 v0, v0, 0x90

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getSamplingRate()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getPaddingLength()I

    move-result v1

    mul-int/2addr v1, v4

    add-int/2addr v0, v1

    return v0

    .line 753
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mp3 Unknown Version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->version:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 710
    :cond_4
    iget v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->layer:I

    if-eq v0, v4, :cond_7

    if-eq v0, v2, :cond_6

    if-ne v0, v3, :cond_5

    .line 713
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getBitRate()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    mul-int/lit8 v0, v0, 0xc

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getSamplingRate()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getPaddingLength()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    return v0

    .line 730
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->layer:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 716
    :cond_6
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getBitRate()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    mul-int/lit16 v0, v0, 0x90

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getSamplingRate()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getPaddingLength()I

    move-result v1

    mul-int/2addr v1, v4

    add-int/2addr v0, v1

    return v0

    .line 719
    :cond_7
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getChannelMode()I

    move-result v0

    if-ne v0, v3, :cond_8

    .line 721
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getBitRate()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    mul-int/lit8 v0, v0, 0x48

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getSamplingRate()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getPaddingLength()I

    move-result v1

    mul-int/2addr v1, v4

    add-int/2addr v0, v1

    return v0

    .line 725
    :cond_8
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getBitRate()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    mul-int/lit16 v0, v0, 0x90

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getSamplingRate()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getPaddingLength()I

    move-result v1

    mul-int/2addr v1, v4

    add-int/2addr v0, v1

    return v0
.end method

.method public getLayer()I
    .locals 1

    .line 451
    iget v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->layer:I

    return v0
.end method

.method public getLayerAsString()Ljava/lang/String;
    .locals 1

    .line 456
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->layerAsString:Ljava/lang/String;

    return-object v0
.end method

.method public getModeExtension()Ljava/lang/String;
    .locals 1

    .line 812
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->modeExtension:Ljava/lang/String;

    return-object v0
.end method

.method public getNoOfSamples()I
    .locals 2

    .line 765
    sget-object v0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplesPerFrameMap:Ljava/util/Map;

    iget v1, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->version:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget v1, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->layer:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 766
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getNumberOfChannels()I
    .locals 3

    .line 629
    iget v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->channelMode:I

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v2

    :cond_1
    return v1
.end method

.method public getPaddingLength()I
    .locals 1

    .line 676
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSamplingRate()Ljava/lang/Integer;
    .locals 1

    .line 693
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplingRate:Ljava/lang/Integer;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 661
    iget v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->version:I

    return v0
.end method

.method public getVersionAsString()Ljava/lang/String;
    .locals 1

    .line 666
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->versionAsString:Ljava/lang/String;

    return-object v0
.end method

.method public isCopyrighted()Z
    .locals 1

    .line 777
    iget-boolean v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isCopyrighted:Z

    return v0
.end method

.method public isOriginal()Z
    .locals 1

    .line 782
    iget-boolean v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isOriginal:Z

    return v0
.end method

.method public isPadding()Z
    .locals 1

    .line 772
    iget-boolean v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isPadding:Z

    return v0
.end method

.method public isPrivate()Z
    .locals 1

    .line 792
    iget-boolean v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isPrivate:Z

    return v0
.end method

.method public isProtected()Z
    .locals 1

    .line 787
    iget-boolean v0, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isProtected:Z

    return v0
.end method

.method public isVariableBitRate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mpeg frameheader: frame length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getFrameLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->versionAsString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " layer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->layerAsString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " channelMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->channelModeAsString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " noOfSamples:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->getNoOfSamples()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " samplingRate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->samplingRate:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " isPadding:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isPadding:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isProtected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isProtected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isPrivate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isPrivate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isCopyrighted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isCopyrighted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isOriginal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isCopyrighted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isVariableBitRate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->isVariableBitRate()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " header as binary:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegBytes:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-static {v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->displayAsBinary(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegBytes:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    invoke-static {v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->displayAsBinary(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegBytes:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    invoke-static {v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->displayAsBinary(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jaudiotagger/audio/mp3/MPEGFrameHeader;->mpegBytes:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    invoke-static {v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->displayAsBinary(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

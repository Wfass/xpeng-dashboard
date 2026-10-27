.class public Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;
.super Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;
.source "Mp4EsdsBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;,
        Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;
    }
.end annotation


# static fields
.field public static final AVERAGE_BITRATE_LENGTH:I = 0x4

.field public static final BUFFER_SIZE_LENGTH:I = 0x3

.field public static final CHANNEL_FLAGS_LENGTH:I = 0x1

.field public static final CONFIG_TYPE_LENGTH:I = 0x1

.field public static final DESCRIPTOR_OBJECT_TYPE_LENGTH:I = 0x1

.field public static final DESCRIPTOR_TYPE_LENGTH:I = 0x1

.field public static final ES_ID_LENGTH:I = 0x2

.field private static final FILLER_END:I = 0xfe

.field private static final FILLER_OTHER:I = 0x81

.field private static final FILLER_START:I = 0x80

.field public static final MAX_BITRATE_LENGTH:I = 0x4

.field public static final OBJECT_TYPE_LENGTH:I = 0x1

.field public static final OTHER_FLAG_LENGTH:I = 0x3

.field private static final SECTION_FIVE:I = 0x5

.field private static final SECTION_FOUR:I = 0x4

.field private static final SECTION_SIX:I = 0x6

.field private static final SECTION_THREE:I = 0x3

.field public static final STREAM_PRIORITY_LENGTH:I = 0x1

.field public static final STREAM_TYPE_LENGTH:I = 0x1

.field public static final VERSION_FLAG_LENGTH:I = 0x1

.field private static audioProfileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;",
            ">;"
        }
    .end annotation
.end field

.field private static kindMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private audioProfile:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field private avgBitrate:I

.field private kind:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

.field private maxBitrate:I

.field private numberOfChannels:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->kindMap:Ljava/util/Map;

    .line 110
    invoke-static {}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->values()[Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 112
    sget-object v5, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->kindMap:Ljava/util/Map;

    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 115
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->audioProfileMap:Ljava/util/Map;

    .line 116
    invoke-static {}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->values()[Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    move-result-object v0

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 118
    sget-object v4, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->audioProfileMap:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 129
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;-><init>()V

    .line 130
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->header:Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 131
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 141
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x3

    add-int/2addr p1, v0

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 144
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    if-ne p1, v0, :cond_0

    .line 146
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->processSectionHeader(Ljava/nio/ByteBuffer;)I

    .line 148
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    add-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 152
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 154
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->processSectionHeader(Ljava/nio/ByteBuffer;)I

    .line 157
    sget-object p1, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->kindMap:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    iput-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->kind:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    .line 160
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    add-int/2addr p1, v0

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 163
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->maxBitrate:I

    .line 164
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->avgBitrate:I

    .line 167
    :cond_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    const/4 v2, 0x5

    if-ne p1, v2, :cond_2

    .line 169
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->processSectionHeader(Ljava/nio/ByteBuffer;)I

    .line 172
    sget-object p1, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->audioProfileMap:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    shr-int/lit8 v0, v2, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    iput-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->audioProfile:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 175
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    shl-int/lit8 p1, p1, 0x1

    shr-int/2addr p1, v1

    .line 176
    iput p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->numberOfChannels:I

    :cond_2
    return-void
.end method


# virtual methods
.method public getAudioProfile()Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;
    .locals 1

    .line 246
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->audioProfile:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    return-object v0
.end method

.method public getAvgBitrate()I
    .locals 1

    .line 202
    iget v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->avgBitrate:I

    return v0
.end method

.method public getKind()Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;
    .locals 1

    .line 236
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->kind:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    return-object v0
.end method

.method public getMaxBitrate()I
    .locals 1

    .line 194
    iget v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->maxBitrate:I

    return v0
.end method

.method public getNumberOfChannels()I
    .locals 1

    .line 186
    iget v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->numberOfChannels:I

    return v0
.end method

.method public processSectionHeader(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 214
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v1, v0, 0xff

    const/16 v2, 0x80

    if-eq v1, v2, :cond_1

    const/16 v2, 0x81

    if-eq v1, v2, :cond_1

    const/16 v2, 0xfe

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Utils;->u(B)I

    move-result p1

    goto :goto_1

    .line 217
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 218
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 219
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Utils;->u(B)I

    move-result p1

    :goto_1
    return p1
.end method

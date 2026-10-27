.class public Lorg/jaudiotagger/audio/ogg/util/VorbisSetupHeader;
.super Ljava/lang/Object;
.source "VorbisSetupHeader.java"

# interfaces
.implements Lorg/jaudiotagger/audio/ogg/util/VorbisHeader;


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private isValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "org.jaudiotagger.audio.ogg.atom"

    .line 19
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/ogg/util/VorbisSetupHeader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisSetupHeader;->isValid:Z

    .line 25
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/ogg/util/VorbisSetupHeader;->decodeHeader([B)V

    return-void
.end method


# virtual methods
.method public decodeHeader([B)V
    .locals 5

    const/4 v0, 0x0

    .line 35
    aget-byte v0, p1, v0

    .line 36
    sget-object v1, Lorg/jaudiotagger/audio/ogg/util/VorbisSetupHeader;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packetType"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 37
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lorg/jaudiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    const/4 v3, 0x1

    const/4 v4, 0x6

    invoke-direct {v1, p1, v3, v4, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 38
    sget-object p1, Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;->SETUP_HEADER:Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/ogg/util/VorbisPacketType;->getType()I

    move-result p1

    if-ne v0, p1, :cond_0

    const-string p1, "vorbis"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 40
    iput-boolean v3, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisSetupHeader;->isValid:Z

    :cond_0
    return-void
.end method

.method public isValid()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lorg/jaudiotagger/audio/ogg/util/VorbisSetupHeader;->isValid:Z

    return v0
.end method

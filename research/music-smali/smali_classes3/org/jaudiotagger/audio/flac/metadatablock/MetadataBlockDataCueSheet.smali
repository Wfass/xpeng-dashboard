.class public Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataCueSheet;
.super Ljava/lang/Object;
.source "MetadataBlockDataCueSheet.java"

# interfaces
.implements Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;


# instance fields
.field private data:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Ljava/nio/channels/FileChannel;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataCueSheet;->data:Ljava/nio/ByteBuffer;

    .line 40
    iget-object p1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataCueSheet;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 41
    iget-object p1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataCueSheet;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public getBytes()Ljava/nio/ByteBuffer;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataCueSheet;->data:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataCueSheet;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    return v0
.end method

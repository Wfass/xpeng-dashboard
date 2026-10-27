.class public Lorg/jaudiotagger/tag/asf/AsfTagBannerField;
.super Lorg/jaudiotagger/tag/asf/AbstractAsfTagImageField;
.source "AsfTagBannerField.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->BANNER_IMAGE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    invoke-direct {p0, v0}, Lorg/jaudiotagger/tag/asf/AbstractAsfTagImageField;-><init>(Lorg/jaudiotagger/tag/asf/AsfFieldKey;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/asf/AbstractAsfTagImageField;-><init>(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 4

    .line 42
    new-instance v0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    sget-object v1, Lorg/jaudiotagger/audio/asf/data/ContainerType;->CONTENT_BRANDING:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    sget-object v2, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->BANNER_IMAGE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 43
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;-><init>(Lorg/jaudiotagger/audio/asf/data/ContainerType;Ljava/lang/String;I)V

    .line 42
    invoke-direct {p0, v0}, Lorg/jaudiotagger/tag/asf/AbstractAsfTagImageField;-><init>(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V

    .line 45
    iget-object v0, p0, Lorg/jaudiotagger/tag/asf/AsfTagBannerField;->toWrap:Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setBinaryValue([B)V

    return-void
.end method


# virtual methods
.method public getImageDataSize()I
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/jaudiotagger/tag/asf/AsfTagBannerField;->toWrap:Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getRawDataSize()I

    move-result v0

    return v0
.end method

.method public getRawImageData()[B
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/asf/AsfTagBannerField;->getRawContent()[B

    move-result-object v0

    return-object v0
.end method

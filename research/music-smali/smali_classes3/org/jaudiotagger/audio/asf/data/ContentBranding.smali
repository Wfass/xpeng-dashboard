.class public final Lorg/jaudiotagger/audio/asf/data/ContentBranding;
.super Lorg/jaudiotagger/audio/asf/data/MetadataContainer;
.source "ContentBranding.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ALLOWED:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_BANNER_IMAGE:Ljava/lang/String; = "BANNER_IMAGE"

.field public static final KEY_BANNER_TYPE:Ljava/lang/String; = "BANNER_IMAGE_TYPE"

.field public static final KEY_BANNER_URL:Ljava/lang/String; = "BANNER_IMAGE_URL"

.field public static final KEY_COPYRIGHT_URL:Ljava/lang/String; = "COPYRIGHT_URL"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->ALLOWED:Ljava/util/Set;

    .line 58
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->ALLOWED:Ljava/util/Set;

    const-string v1, "BANNER_IMAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->ALLOWED:Ljava/util/Set;

    const-string v1, "BANNER_IMAGE_TYPE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->ALLOWED:Ljava/util/Set;

    const-string v1, "BANNER_IMAGE_URL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->ALLOWED:Ljava/util/Set;

    const-string v1, "COPYRIGHT_URL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 69
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2, v0}, Lorg/jaudiotagger/audio/asf/data/ContentBranding;-><init>(JLjava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(JLjava/math/BigInteger;)V
    .locals 1

    .line 80
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/ContainerType;->CONTENT_BRANDING:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;-><init>(Lorg/jaudiotagger/audio/asf/data/ContainerType;JLjava/math/BigInteger;)V

    return-void
.end method


# virtual methods
.method public getBannerImageURL()Ljava/lang/String;
    .locals 1

    const-string v0, "BANNER_IMAGE_URL"

    .line 90
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->getValueFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCopyRightURL()Ljava/lang/String;
    .locals 1

    const-string v0, "COPYRIGHT_URL"

    .line 100
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->getValueFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAsfChunkSize()J
    .locals 4

    const-string v0, "BANNER_IMAGE"

    const/4 v1, 0x1

    .line 112
    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->assertDescriptor(Ljava/lang/String;I)Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getRawDataSize()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x28

    add-long/2addr v0, v2

    .line 113
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->getBannerImageURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 114
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->getCopyRightURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getImageData()[B
    .locals 2

    const-string v0, "BANNER_IMAGE"

    const/4 v1, 0x1

    .line 125
    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->assertDescriptor(Ljava/lang/String;I)Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getRawData()[B

    move-result-object v0

    return-object v0
.end method

.method public getImageType()J
    .locals 4

    const-string v0, "BANNER_IMAGE_TYPE"

    .line 136
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->hasDescriptor(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    new-instance v1, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    sget-object v2, Lorg/jaudiotagger/audio/asf/data/ContainerType;->CONTENT_BRANDING:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v0, v3}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;-><init>(Lorg/jaudiotagger/audio/asf/data/ContainerType;Ljava/lang/String;I)V

    const-wide/16 v2, 0x0

    .line 139
    invoke-virtual {v1, v2, v3}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setDWordValue(J)V

    .line 140
    invoke-virtual {p0, v1}, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->addDescriptor(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V

    .line 142
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->assertDescriptor(Ljava/lang/String;)Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public isAddSupported(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)Z
    .locals 2

    .line 151
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->ALLOWED:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->isAddSupported(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setBannerImageURL(Ljava/lang/String;)V
    .locals 2

    .line 162
    invoke-static {p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "BANNER_IMAGE_URL"

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0, v1}, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->removeDescriptorsByName(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p0, v1}, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->assertDescriptor(Ljava/lang/String;)Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setStringValue(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setCopyRightURL(Ljava/lang/String;)V
    .locals 2

    .line 180
    invoke-static {p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "COPYRIGHT_URL"

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0, v1}, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->removeDescriptorsByName(Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p0, v1}, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->assertDescriptor(Ljava/lang/String;)Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setStringValue(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setImage(J[B)V
    .locals 2

    const/4 v0, 0x3

    const-string v1, "BANNER_IMAGE_TYPE"

    .line 198
    invoke-virtual {p0, v1, v0}, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->assertDescriptor(Ljava/lang/String;I)Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setDWordValue(J)V

    const/4 p1, 0x1

    const-string p2, "BANNER_IMAGE"

    .line 199
    invoke-virtual {p0, p2, p1}, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->assertDescriptor(Ljava/lang/String;I)Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setBinaryValue([B)V

    return-void
.end method

.method public writeInto(Ljava/io/OutputStream;)J
    .locals 5

    .line 208
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->getCurrentAsfChunkSize()J

    move-result-wide v0

    .line 209
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->getGuid()Lorg/jaudiotagger/audio/asf/data/GUID;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/asf/data/GUID;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 210
    invoke-static {v0, v1, p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT64(JLjava/io/OutputStream;)V

    .line 211
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->getImageType()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT32(JLjava/io/OutputStream;)V

    .line 213
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->getImageData()[B

    move-result-object v2

    .line 215
    array-length v3, v2

    int-to-long v3, v3

    invoke-static {v3, v4, p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT32(JLjava/io/OutputStream;)V

    .line 216
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 217
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->getBannerImageURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3, p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT32(JLjava/io/OutputStream;)V

    .line 218
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->getBannerImageURL()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/jaudiotagger/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 219
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->getCopyRightURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3, p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT32(JLjava/io/OutputStream;)V

    .line 220
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContentBranding;->getCopyRightURL()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/jaudiotagger/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    return-wide v0
.end method

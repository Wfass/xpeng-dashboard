.class public Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;
.super Lorg/jaudiotagger/tag/mp4/Mp4TagField;
.source "Mp4TagTextField.java"

# interfaces
.implements Lorg/jaudiotagger/tag/TagTextField;


# instance fields
.field protected content:Ljava/lang/String;

.field protected dataSize:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/mp4/Mp4TagField;-><init>(Ljava/lang/String;)V

    .line 79
    iput-object p2, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;->content:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/mp4/Mp4TagField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method protected build(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 86
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 87
    new-instance v1, Lorg/jaudiotagger/tag/mp4/atom/Mp4DataBox;

    invoke-direct {v1, v0, p1}, Lorg/jaudiotagger/tag/mp4/atom/Mp4DataBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 88
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result p1

    iput p1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;->dataSize:I

    .line 89
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/mp4/atom/Mp4DataBox;->getContent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;->content:Ljava/lang/String;

    return-void
.end method

.method public copyContent(Lorg/jaudiotagger/tag/TagField;)V
    .locals 1

    .line 95
    instance-of v0, p1, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;

    if-eqz v0, :cond_0

    .line 97
    check-cast p1, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;->getContent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;->content:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;->content:Ljava/lang/String;

    return-object v0
.end method

.method protected getDataBytes()[B
    .locals 2

    .line 110
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;->content:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;->getEncoding()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Ljava/nio/charset/Charset;
    .locals 1

    .line 122
    sget-object v0, Lorg/jaudiotagger/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getFieldType()Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;
    .locals 1

    .line 116
    sget-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->TEXT:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    return-object v0
.end method

.method public isBinary()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 134
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;->content:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;->content:Ljava/lang/String;

    return-void
.end method

.method public setEncoding(Ljava/nio/charset/Charset;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;->content:Ljava/lang/String;

    return-object v0
.end method

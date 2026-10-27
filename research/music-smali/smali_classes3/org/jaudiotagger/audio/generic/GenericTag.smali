.class public abstract Lorg/jaudiotagger/audio/generic/GenericTag;
.super Lorg/jaudiotagger/audio/generic/AbstractTag;
.source "GenericTag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jaudiotagger/audio/generic/GenericTag$GenericTagTextField;
    }
.end annotation


# static fields
.field private static final EMPTY_BYTE_ARRAY:[B

.field protected static supportedKeys:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lorg/jaudiotagger/tag/FieldKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    .line 39
    new-array v1, v0, [B

    sput-object v1, Lorg/jaudiotagger/audio/generic/GenericTag;->EMPTY_BYTE_ARRAY:[B

    .line 44
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->ALBUM:Lorg/jaudiotagger/tag/FieldKey;

    const/4 v2, 0x6

    new-array v2, v2, [Lorg/jaudiotagger/tag/FieldKey;

    sget-object v3, Lorg/jaudiotagger/tag/FieldKey;->ARTIST:Lorg/jaudiotagger/tag/FieldKey;

    aput-object v3, v2, v0

    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->TITLE:Lorg/jaudiotagger/tag/FieldKey;

    const/4 v3, 0x1

    aput-object v0, v2, v3

    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    const/4 v3, 0x2

    aput-object v0, v2, v3

    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->GENRE:Lorg/jaudiotagger/tag/FieldKey;

    const/4 v3, 0x3

    aput-object v0, v2, v3

    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COMMENT:Lorg/jaudiotagger/tag/FieldKey;

    const/4 v3, 0x4

    aput-object v0, v2, v3

    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->YEAR:Lorg/jaudiotagger/tag/FieldKey;

    const/4 v3, 0x5

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/generic/GenericTag;->supportedKeys:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AbstractTag;-><init>()V

    return-void
.end method

.method static synthetic access$000()[B
    .locals 1

    .line 37
    sget-object v0, Lorg/jaudiotagger/audio/generic/GenericTag;->EMPTY_BYTE_ARRAY:[B

    return-object v0
.end method

.method public static getSupportedKeys()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lorg/jaudiotagger/tag/FieldKey;",
            ">;"
        }
    .end annotation

    .line 50
    sget-object v0, Lorg/jaudiotagger/audio/generic/GenericTag;->supportedKeys:Ljava/util/EnumSet;

    return-object v0
.end method


# virtual methods
.method public varargs createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .locals 3

    .line 169
    sget-object v0, Lorg/jaudiotagger/audio/generic/GenericTag;->supportedKeys:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 171
    aget-object v0, p2, v1

    if-eqz v0, :cond_0

    .line 175
    new-instance v0, Lorg/jaudiotagger/audio/generic/GenericTag$GenericTagTextField;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object p1

    aget-object p2, p2, v1

    invoke-direct {v0, p0, p1, p2}, Lorg/jaudiotagger/audio/generic/GenericTag$GenericTagTextField;-><init>(Lorg/jaudiotagger/audio/generic/GenericTag;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 173
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 179
    :cond_1
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->OPERATION_NOT_SUPPORTED_FOR_FIELD:Lorg/jaudiotagger/logging/ErrorMessage;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public createField(Lorg/jaudiotagger/tag/images/Artwork;)Lorg/jaudiotagger/tag/TagField;
    .locals 1

    .line 254
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->GENERIC_NOT_SUPPORTED:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public deleteField(Lorg/jaudiotagger/tag/FieldKey;)V
    .locals 4

    .line 222
    sget-object v0, Lorg/jaudiotagger/audio/generic/GenericTag;->supportedKeys:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/generic/GenericTag;->deleteField(Ljava/lang/String;)V

    return-void

    .line 228
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->OPERATION_NOT_SUPPORTED_FOR_FIELD:Lorg/jaudiotagger/logging/ErrorMessage;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAll(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;
    .locals 0
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

    .line 216
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getArtworkList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/images/Artwork;",
            ">;"
        }
    .end annotation

    .line 248
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

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

    .line 205
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericTag;->fields:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 208
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object p1
.end method

.method public getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 186
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/audio/generic/GenericTag;->getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFirstField(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/TagField;
    .locals 4

    .line 235
    sget-object v0, Lorg/jaudiotagger/audio/generic/GenericTag;->supportedKeys:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/generic/GenericTag;->getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1

    .line 241
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->OPERATION_NOT_SUPPORTED_FOR_FIELD:Lorg/jaudiotagger/logging/ErrorMessage;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;
    .locals 3

    .line 192
    sget-object v0, Lorg/jaudiotagger/audio/generic/GenericTag;->supportedKeys:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/audio/generic/GenericTag;->getItem(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 198
    :cond_0
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->OPERATION_NOT_SUPPORTED_FOR_FIELD:Lorg/jaudiotagger/logging/ErrorMessage;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected isAllowedEncoding(Ljava/nio/charset/Charset;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

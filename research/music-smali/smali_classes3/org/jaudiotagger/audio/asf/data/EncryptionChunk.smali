.class public Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;
.super Lorg/jaudiotagger/audio/asf/data/Chunk;
.source "EncryptionChunk.java"


# instance fields
.field private keyID:Ljava/lang/String;

.field private licenseURL:Ljava/lang/String;

.field private protectionType:Ljava/lang/String;

.field private secretData:Ljava/lang/String;

.field private final strings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    .line 31
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_CONTENT_ENCRYPTION:Lorg/jaudiotagger/audio/asf/data/GUID;

    invoke-direct {p0, v0, p1}, Lorg/jaudiotagger/audio/asf/data/Chunk;-><init>(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/math/BigInteger;)V

    .line 32
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->strings:Ljava/util/ArrayList;

    const-string p1, ""

    .line 33
    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->secretData:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->protectionType:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->keyID:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->licenseURL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addString(Ljava/lang/String;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->strings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getKeyID()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->keyID:Ljava/lang/String;

    return-object v0
.end method

.method public getLicenseURL()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->licenseURL:Ljava/lang/String;

    return-object v0
.end method

.method public getProtectionType()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->protectionType:Ljava/lang/String;

    return-object v0
.end method

.method public getSecretData()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->secretData:Ljava/lang/String;

    return-object v0
.end method

.method public getStrings()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->strings:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public prettyPrint(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/asf/data/Chunk;->prettyPrint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/jaudiotagger/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Encryption:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/jaudiotagger/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t|->keyID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->keyID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/jaudiotagger/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t|->secretData "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->secretData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/jaudiotagger/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t|->protectionType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->protectionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/jaudiotagger/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t|->licenseURL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->licenseURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/jaudiotagger/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->strings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 113
    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->strings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 115
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   |->"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/jaudiotagger/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setKeyID(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->keyID:Ljava/lang/String;

    return-void
.end method

.method public setLicenseURL(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->licenseURL:Ljava/lang/String;

    return-void
.end method

.method public setProtectionType(Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->protectionType:Ljava/lang/String;

    return-void
.end method

.method public setSecretData(Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/EncryptionChunk;->secretData:Ljava/lang/String;

    return-void
.end method

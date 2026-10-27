.class public Lorg/jaudiotagger/tag/datatype/Pair;
.super Ljava/lang/Object;
.source "Pair.java"


# instance fields
.field private key:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/datatype/Pair;->setKey(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/tag/datatype/Pair;->setValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/Pair;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getPairValue()Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/Pair;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/Pair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/Pair;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/Pair;->key:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/Pair;->value:Ljava/lang/String;

    return-void
.end method

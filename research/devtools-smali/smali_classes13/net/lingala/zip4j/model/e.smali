.class public Lnet/lingala/zip4j/model/e;
.super Lnet/lingala/zip4j/model/o;
.source "DigitalSignature.java"


# instance fields
.field private anx:I

.field private any:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lnet/lingala/zip4j/model/o;-><init>()V

    return-void
.end method


# virtual methods
.method public ff(I)V
    .locals 0

    .line 29
    iput p1, p0, Lnet/lingala/zip4j/model/e;->anx:I

    .line 30
    return-void
.end method

.method public fs(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lnet/lingala/zip4j/model/e;->any:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public sY()I
    .locals 1

    .line 25
    iget v0, p0, Lnet/lingala/zip4j/model/e;->anx:I

    return v0
.end method

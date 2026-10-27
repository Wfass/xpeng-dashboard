.class public Lnet/lingala/zip4j/model/k;
.super Ljava/lang/Object;
.source "Zip4jConfig.java"


# instance fields
.field private final als:I

.field private final charset:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lnet/lingala/zip4j/model/k;->charset:Ljava/nio/charset/Charset;

    .line 12
    iput p2, p0, Lnet/lingala/zip4j/model/k;->als:I

    .line 13
    return-void
.end method


# virtual methods
.method public tm()Ljava/nio/charset/Charset;
    .locals 1

    .line 16
    iget-object v0, p0, Lnet/lingala/zip4j/model/k;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public tn()I
    .locals 1

    .line 20
    iget v0, p0, Lnet/lingala/zip4j/model/k;->als:I

    return v0
.end method

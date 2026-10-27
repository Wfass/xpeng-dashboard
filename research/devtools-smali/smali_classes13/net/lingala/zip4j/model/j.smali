.class public Lnet/lingala/zip4j/model/j;
.super Lnet/lingala/zip4j/model/b;
.source "LocalFileHeader.java"


# instance fields
.field private anO:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lnet/lingala/zip4j/model/b;-><init>()V

    .line 28
    sget-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->ame:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/model/j;->a(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 29
    return-void
.end method


# virtual methods
.method public bx(Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/j;->anO:Z

    .line 53
    return-void
.end method

.method public tl()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/j;->anO:Z

    return v0
.end method

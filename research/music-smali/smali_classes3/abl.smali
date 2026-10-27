.class public Labl;
.super Ljava/lang/Object;
.source "MultiType.java"

# interfaces
.implements Ljava/lang/reflect/Type;


# instance fields
.field private final a:[Ljava/lang/reflect/Type;


# virtual methods
.method public a()I
    .locals 1

    .line 16
    iget-object v0, p0, Labl;->a:[Ljava/lang/reflect/Type;

    array-length v0, v0

    return v0
.end method

.method public a(I)Ljava/lang/reflect/Type;
    .locals 1

    .line 20
    iget-object v0, p0, Labl;->a:[Ljava/lang/reflect/Type;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Labl;->a:[Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/alibaba/fastjson2/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

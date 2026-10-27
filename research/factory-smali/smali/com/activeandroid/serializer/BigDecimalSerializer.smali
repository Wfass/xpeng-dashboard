.class public final Lcom/activeandroid/serializer/BigDecimalSerializer;
.super Lcom/activeandroid/serializer/TypeSerializer;
.source "BigDecimalSerializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/activeandroid/serializer/TypeSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/activeandroid/serializer/BigDecimalSerializer;->deserialize(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Ljava/lang/Object;)Ljava/math/BigDecimal;
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .line 23
    if-nez p1, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getDeserializedType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 7
    const-class v0, Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getSerializedType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 11
    const-class v0, Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/activeandroid/serializer/BigDecimalSerializer;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .line 15
    if-nez p1, :cond_0

    .line 16
    const/4 v0, 0x0

    return-object v0

    .line 19
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/activeandroid/serializer/UUIDSerializer;
.super Lcom/activeandroid/serializer/TypeSerializer;
.source "UUIDSerializer.java"


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
    invoke-virtual {p0, p1}, Lcom/activeandroid/serializer/UUIDSerializer;->deserialize(Ljava/lang/Object;)Ljava/util/UUID;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Ljava/lang/Object;)Ljava/util/UUID;
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .line 23
    if-nez p1, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

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
    const-class v0, Ljava/util/UUID;

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
    invoke-virtual {p0, p1}, Lcom/activeandroid/serializer/UUIDSerializer;->serialize(Ljava/lang/Object;)Ljava/lang/String;

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

    check-cast v0, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

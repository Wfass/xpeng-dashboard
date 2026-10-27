.class public final Lcom/activeandroid/serializer/UtilDateSerializer;
.super Lcom/activeandroid/serializer/TypeSerializer;
.source "UtilDateSerializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/activeandroid/serializer/TypeSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/activeandroid/serializer/UtilDateSerializer;->deserialize(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Ljava/lang/Object;)Ljava/util/Date;
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .line 39
    if-nez p1, :cond_0

    .line 40
    const/4 v0, 0x0

    return-object v0

    .line 43
    :cond_0
    new-instance v0, Ljava/util/Date;

    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

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

    .line 23
    const-class v0, Ljava/util/Date;

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

    .line 27
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object v0
.end method

.method public serialize(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .line 31
    if-nez p1, :cond_0

    .line 32
    const/4 v0, 0x0

    return-object v0

    .line 35
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/activeandroid/serializer/UtilDateSerializer;->serialize(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

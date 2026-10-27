.class public final Lcom/activeandroid/serializer/FileSerializer;
.super Lcom/activeandroid/serializer/TypeSerializer;
.source "FileSerializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/activeandroid/serializer/TypeSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Ljava/lang/Object;)Ljava/io/File;
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .line 40
    if-nez p1, :cond_0

    .line 41
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_0
    new-instance v0, Ljava/io/File;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic deserialize(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/activeandroid/serializer/FileSerializer;->deserialize(Ljava/lang/Object;)Ljava/io/File;

    move-result-object p1

    return-object p1
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

    .line 24
    const-class v0, Ljava/io/File;

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

    .line 28
    const-class v0, Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/activeandroid/serializer/FileSerializer;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .line 32
    if-nez p1, :cond_0

    .line 33
    const/4 v0, 0x0

    return-object v0

    .line 36
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

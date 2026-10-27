.class public final Lokhttp3/MultipartBody$Builder;
.super Ljava/lang/Object;
.source "MultipartBody.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/MultipartBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field private final boundary:Lokio/ByteString;

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation
.end field

.field private type:Lokhttp3/MediaType;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;ILccc;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "boundary"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    invoke-virtual {v0, p1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/MultipartBody$Builder;->boundary:Lokio/ByteString;

    .line 233
    sget-object p1, Lokhttp3/MultipartBody;->MIXED:Lokhttp3/MediaType;

    iput-object p1, p0, Lokhttp3/MultipartBody$Builder;->type:Lokhttp3/MediaType;

    .line 234
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lokhttp3/MultipartBody$Builder;->parts:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILccc;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 231
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "randomUUID().toString()"

    invoke-static {p1, p2}, Lccf;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    move-object v0, p0

    check-cast v0, Lokhttp3/MultipartBody$Builder;

    .line 257
    sget-object v1, Lokhttp3/MultipartBody$Part;->Companion:Lokhttp3/MultipartBody$Part$Companion;

    invoke-virtual {v1, p1, p2}, Lokhttp3/MultipartBody$Part$Companion;->createFormData(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Part;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/MultipartBody$Part;)Lokhttp3/MultipartBody$Builder;

    return-object v0
.end method

.method public final addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p3, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    move-object v0, p0

    check-cast v0, Lokhttp3/MultipartBody$Builder;

    .line 262
    sget-object v1, Lokhttp3/MultipartBody$Part;->Companion:Lokhttp3/MultipartBody$Part$Companion;

    invoke-virtual {v1, p1, p2, p3}, Lokhttp3/MultipartBody$Part$Companion;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/MultipartBody$Part;)Lokhttp3/MultipartBody$Builder;

    return-object v0
.end method

.method public final addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;
    .locals 2

    const-string v0, "body"

    invoke-static {p2, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    move-object v0, p0

    check-cast v0, Lokhttp3/MultipartBody$Builder;

    .line 252
    sget-object v1, Lokhttp3/MultipartBody$Part;->Companion:Lokhttp3/MultipartBody$Part$Companion;

    invoke-virtual {v1, p1, p2}, Lokhttp3/MultipartBody$Part$Companion;->create(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/MultipartBody$Part;)Lokhttp3/MultipartBody$Builder;

    return-object v0
.end method

.method public final addPart(Lokhttp3/MultipartBody$Part;)Lokhttp3/MultipartBody$Builder;
    .locals 2

    const-string v0, "part"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    move-object v0, p0

    check-cast v0, Lokhttp3/MultipartBody$Builder;

    .line 267
    iget-object v1, v0, Lokhttp3/MultipartBody$Builder;->parts:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final addPart(Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;
    .locals 2

    const-string v0, "body"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    move-object v0, p0

    check-cast v0, Lokhttp3/MultipartBody$Builder;

    .line 247
    sget-object v1, Lokhttp3/MultipartBody$Part;->Companion:Lokhttp3/MultipartBody$Part$Companion;

    invoke-virtual {v1, p1}, Lokhttp3/MultipartBody$Part$Companion;->create(Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/MultipartBody$Part;)Lokhttp3/MultipartBody$Builder;

    return-object v0
.end method

.method public final build()Lokhttp3/MultipartBody;
    .locals 4

    .line 272
    iget-object v0, p0, Lokhttp3/MultipartBody$Builder;->parts:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 273
    new-instance v0, Lokhttp3/MultipartBody;

    iget-object v1, p0, Lokhttp3/MultipartBody$Builder;->boundary:Lokio/ByteString;

    iget-object v2, p0, Lokhttp3/MultipartBody$Builder;->type:Lokhttp3/MediaType;

    iget-object v3, p0, Lokhttp3/MultipartBody$Builder;->parts:Ljava/util/List;

    invoke-static {v3}, Lokhttp3/internal/Util;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lokhttp3/MultipartBody;-><init>(Lokio/ByteString;Lokhttp3/MediaType;Ljava/util/List;)V

    return-object v0

    .line 272
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multipart body must have at least one part."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;
    .locals 3

    const-string v0, "type"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    move-object v0, p0

    check-cast v0, Lokhttp3/MultipartBody$Builder;

    .line 241
    invoke-virtual {p1}, Lokhttp3/MediaType;->type()Ljava/lang/String;

    move-result-object v1

    const-string v2, "multipart"

    invoke-static {v1, v2}, Lccf;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    iput-object p1, v0, Lokhttp3/MultipartBody$Builder;->type:Lokhttp3/MediaType;

    return-object v0

    :cond_0
    const-string v0, "multipart != "

    .line 241
    invoke-static {v0, p1}, Lccf;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

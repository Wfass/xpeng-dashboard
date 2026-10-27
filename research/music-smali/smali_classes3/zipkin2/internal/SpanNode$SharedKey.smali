.class final Lzipkin2/internal/SpanNode$SharedKey;
.super Ljava/lang/Object;
.source "SpanNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/internal/SpanNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SharedKey"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lzipkin2/Endpoint;
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lzipkin2/Endpoint;)V
    .locals 0
    .param p2    # Lzipkin2/Endpoint;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 281
    iput-object p1, p0, Lzipkin2/internal/SpanNode$SharedKey;->a:Ljava/lang/String;

    .line 282
    iput-object p2, p0, Lzipkin2/internal/SpanNode$SharedKey;->b:Lzipkin2/Endpoint;

    return-void

    .line 280
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "id == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    .line 297
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 291
    :cond_0
    instance-of v1, p1, Lzipkin2/internal/SpanNode$SharedKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 292
    :cond_1
    check-cast p1, Lzipkin2/internal/SpanNode$SharedKey;

    .line 293
    iget-object v1, p0, Lzipkin2/internal/SpanNode$SharedKey;->a:Ljava/lang/String;

    iget-object v3, p1, Lzipkin2/internal/SpanNode$SharedKey;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lzipkin2/internal/SpanNode$SharedKey;->b:Lzipkin2/Endpoint;

    iget-object p1, p1, Lzipkin2/internal/SpanNode$SharedKey;->b:Lzipkin2/Endpoint;

    invoke-static {v1, p1}, Lzipkin2/internal/SpanNode$SharedKey;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 303
    iget-object v0, p0, Lzipkin2/internal/SpanNode$SharedKey;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 305
    iget-object v1, p0, Lzipkin2/internal/SpanNode$SharedKey;->b:Lzipkin2/Endpoint;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lzipkin2/Endpoint;->hashCode()I

    move-result v1

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SharedKey{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzipkin2/internal/SpanNode$SharedKey;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", endpoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzipkin2/internal/SpanNode$SharedKey;->b:Lzipkin2/Endpoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

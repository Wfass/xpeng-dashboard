.class public final Lcom/google/android/exoplayer2/upstream/DataSpec;
.super Ljava/lang/Object;
.source "DataSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/DataSpec$HttpMethod;,
        Lcom/google/android/exoplayer2/upstream/DataSpec$Flags;
    }
.end annotation


# static fields
.field public static final FLAG_ALLOW_CACHING_UNKNOWN_LENGTH:I = 0x2

.field public static final FLAG_ALLOW_GZIP:I = 0x1

.field public static final HTTP_METHOD_GET:I = 0x1

.field public static final HTTP_METHOD_HEAD:I = 0x3

.field public static final HTTP_METHOD_POST:I = 0x2


# instance fields
.field public final absoluteStreamPosition:J

.field public final flags:I

.field public httpMethod:I

.field public final key:Ljava/lang/String;

.field public final length:J

.field public final position:J

.field public final postBody:[B

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 140
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;I)V
    .locals 8

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    .line 150
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJJLjava/lang/String;I)V
    .locals 11

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move/from16 v10, p9

    .line 191
    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJLjava/lang/String;)V
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    .line 162
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJLjava/lang/String;I)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 175
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V
    .locals 5

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 99
    iput v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpMethod:I

    const-wide/16 v1, 0x0

    cmp-long v3, p3, v1

    const/4 v4, 0x0

    if-ltz v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v4

    .line 214
    :goto_0
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    cmp-long v3, p5, v1

    if-ltz v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v4

    .line 215
    :goto_1
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    cmp-long v1, p7, v1

    if-gtz v1, :cond_3

    const-wide/16 v1, -0x1

    cmp-long v1, p7, v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v4

    .line 216
    :cond_3
    :goto_2
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 217
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    .line 218
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->postBody:[B

    .line 219
    iput-wide p3, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    .line 220
    iput-wide p5, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    .line 221
    iput-wide p7, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    .line 222
    iput-object p9, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    .line 223
    iput p10, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->flags:I

    return-void
.end method

.method public static getStringForHttpMethod(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const-string p0, "HEAD"

    return-object p0

    .line 130
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    const-string p0, "POST"

    return-object p0

    :cond_2
    const-string p0, "GET"

    return-object p0
.end method


# virtual methods
.method public cloneData(Landroid/net/Uri;I[B)Lcom/google/android/exoplayer2/upstream/DataSpec;
    .locals 12

    .line 227
    new-instance v11, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    iget-wide v5, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iget-wide v7, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    iget-object v9, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    iget v10, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->flags:I

    move-object v0, v11

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    .line 228
    invoke-virtual {v11, p2}, Lcom/google/android/exoplayer2/upstream/DataSpec;->setHttpMethod(I)V

    return-object v11
.end method

.method public final getHttpMethodString()Ljava/lang/String;
    .locals 1

    .line 260
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpMethod:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/DataSpec;->getStringForHttpMethod(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFlagSet(I)Z
    .locals 1

    .line 269
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->flags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setHttpMethod(I)V
    .locals 0

    .line 252
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpMethod:I

    return-void
.end method

.method public subrange(J)Lcom/google/android/exoplayer2/upstream/DataSpec;
    .locals 5

    .line 286
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    sub-long v2, v0, p1

    :goto_0
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/google/android/exoplayer2/upstream/DataSpec;->subrange(JJ)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object p1

    return-object p1
.end method

.method public subrange(JJ)Lcom/google/android/exoplayer2/upstream/DataSpec;
    .locals 14

    move-object v0, p0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 297
    iget-wide v1, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v1, v1, p3

    if-nez v1, :cond_0

    return-object v0

    .line 300
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v4, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-object v5, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->postBody:[B

    iget-wide v2, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    add-long v6, v2, p1

    iget-wide v2, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    add-long v8, v2, p1

    iget-object v12, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    iget v13, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->flags:I

    move-object v3, v1

    move-wide/from16 v10, p3

    invoke-direct/range {v3 .. v13}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataSpec["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->postBody:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/DataSpec;
    .locals 12

    .line 239
    new-instance v11, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->postBody:[B

    iget-wide v3, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    iget-wide v5, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iget-wide v7, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    iget-object v9, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    iget v10, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->flags:I

    move-object v0, v11

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    .line 241
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpMethod:I

    invoke-virtual {v11, p1}, Lcom/google/android/exoplayer2/upstream/DataSpec;->setHttpMethod(I)V

    return-object v11
.end method

.class public Lcom/lzy/okgo/cache/CacheEntity;
.super Ljava/lang/Object;
.source "CacheEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3c32a52e6586e8daL


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private isExpire:Z

.field private key:Ljava/lang/String;

.field private localExpire:J

.field private responseHeaders:Lcom/lzy/okgo/model/HttpHeaders;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/lzy/okgo/cache/CacheEntity;)Landroid/content/ContentValues;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "TT;>;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .line 105
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 106
    const-string v1, "key"

    invoke-virtual {p0}, Lcom/lzy/okgo/cache/CacheEntity;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v1, "localExpire"

    invoke-virtual {p0}, Lcom/lzy/okgo/cache/CacheEntity;->cP()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 108
    const-string v1, "head"

    invoke-virtual {p0}, Lcom/lzy/okgo/cache/CacheEntity;->cO()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v2

    invoke-static {v2}, Lcom/lzy/okgo/f/c;->i(Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 109
    const-string v1, "data"

    invoke-virtual {p0}, Lcom/lzy/okgo/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/lzy/okgo/f/c;->i(Ljava/lang/Object;)[B

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 110
    return-object v0
.end method

.method public static b(Landroid/database/Cursor;)Lcom/lzy/okgo/cache/CacheEntity;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            ")",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "TT;>;"
        }
    .end annotation

    .line 114
    new-instance v0, Lcom/lzy/okgo/cache/CacheEntity;

    invoke-direct {v0}, Lcom/lzy/okgo/cache/CacheEntity;-><init>()V

    .line 115
    const-string v1, "key"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/cache/CacheEntity;->setKey(Ljava/lang/String;)V

    .line 116
    const-string v1, "localExpire"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/lzy/okgo/cache/CacheEntity;->e(J)V

    .line 117
    const-string v1, "head"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/lzy/okgo/f/c;->s([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzy/okgo/model/HttpHeaders;

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/cache/CacheEntity;->a(Lcom/lzy/okgo/model/HttpHeaders;)V

    .line 119
    const-string v1, "data"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/lzy/okgo/f/c;->s([B)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/lzy/okgo/cache/CacheEntity;->setData(Ljava/lang/Object;)V

    .line 120
    return-object v0
.end method


# virtual methods
.method public a(Lcom/lzy/okgo/model/HttpHeaders;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/lzy/okgo/cache/CacheEntity;->responseHeaders:Lcom/lzy/okgo/model/HttpHeaders;

    .line 66
    return-void
.end method

.method public a(Lcom/lzy/okgo/cache/CacheMode;JJ)Z
    .locals 5

    .line 99
    sget-object v0, Lcom/lzy/okgo/cache/CacheMode;->lt:Lcom/lzy/okgo/cache/CacheMode;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/lzy/okgo/cache/CacheEntity;->cP()J

    move-result-wide p1

    cmp-long p1, p1, p4

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 100
    :cond_1
    const-wide/16 v3, -0x1

    cmp-long p1, p2, v3

    if-nez p1, :cond_2

    return v2

    .line 101
    :cond_2
    invoke-virtual {p0}, Lcom/lzy/okgo/cache/CacheEntity;->cP()J

    move-result-wide v3

    add-long/2addr v3, p2

    cmp-long p1, v3, p4

    if-gez p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method public cO()Lcom/lzy/okgo/model/HttpHeaders;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/lzy/okgo/cache/CacheEntity;->responseHeaders:Lcom/lzy/okgo/model/HttpHeaders;

    return-object v0
.end method

.method public cP()J
    .locals 2

    .line 77
    iget-wide v0, p0, Lcom/lzy/okgo/cache/CacheEntity;->localExpire:J

    return-wide v0
.end method

.method public cQ()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/lzy/okgo/cache/CacheEntity;->isExpire:Z

    return v0
.end method

.method public e(J)V
    .locals 0

    .line 81
    iput-wide p1, p0, Lcom/lzy/okgo/cache/CacheEntity;->localExpire:J

    .line 82
    return-void
.end method

.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/lzy/okgo/cache/CacheEntity;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/lzy/okgo/cache/CacheEntity;->key:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/lzy/okgo/cache/CacheEntity;->data:Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/lzy/okgo/cache/CacheEntity;->key:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CacheEntity{key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lzy/okgo/cache/CacheEntity;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", responseHeaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lzy/okgo/cache/CacheEntity;->responseHeaders:Lcom/lzy/okgo/model/HttpHeaders;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lzy/okgo/cache/CacheEntity;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", localExpire="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/lzy/okgo/cache/CacheEntity;->localExpire:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/lzy/okgo/cache/CacheEntity;->isExpire:Z

    .line 90
    return-void
.end method

.class public Lcom/lzy/okgo/model/HttpParams;
.super Ljava/lang/Object;
.source "HttpParams.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okgo/model/HttpParams$FileWrapper;
    }
.end annotation


# static fields
.field public static final mn:Lokhttp3/MediaType;

.field public static final mo:Lokhttp3/MediaType;

.field public static final mp:Lokhttp3/MediaType;

.field private static final serialVersionUID:J = 0x6646db7a7498bbc8L


# instance fields
.field public fileParamsMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/lzy/okgo/model/HttpParams$FileWrapper;",
            ">;>;"
        }
    .end annotation
.end field

.field public urlParamsMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-string v0, "text/plain;charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/lzy/okgo/model/HttpParams;->mn:Lokhttp3/MediaType;

    .line 46
    const-string v0, "application/json;charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/lzy/okgo/model/HttpParams;->mo:Lokhttp3/MediaType;

    .line 47
    const-string v0, "application/octet-stream"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/lzy/okgo/model/HttpParams;->mp:Lokhttp3/MediaType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-direct {p0}, Lcom/lzy/okgo/model/HttpParams;->init()V

    .line 59
    return-void
.end method

.method private init()V
    .locals 1

    .line 72
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/lzy/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    .line 73
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/lzy/okgo/model/HttpParams;->fileParamsMap:Ljava/util/LinkedHashMap;

    .line 74
    return-void
.end method

.method private put(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 147
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 148
    iget-object v0, p0, Lcom/lzy/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 149
    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    iget-object v1, p0, Lcom/lzy/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 154
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lcom/lzy/okgo/model/HttpParams;)V
    .locals 2

    .line 77
    if-eqz p1, :cond_1

    .line 78
    iget-object v0, p1, Lcom/lzy/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/lzy/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcom/lzy/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 79
    :cond_0
    iget-object v0, p1, Lcom/lzy/okgo/model/HttpParams;->fileParamsMap:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/lzy/okgo/model/HttpParams;->fileParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lzy/okgo/model/HttpParams;->fileParamsMap:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lcom/lzy/okgo/model/HttpParams;->fileParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 81
    :cond_1
    return-void
.end method

.method public varargs a(Ljava/lang/String;F[Z)V
    .locals 1

    .line 115
    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    .line 116
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aget-boolean p3, p3, v0

    invoke-direct {p0, p1, p2, p3}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 118
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 120
    :goto_0
    return-void
.end method

.method public varargs a(Ljava/lang/String;I[Z)V
    .locals 1

    .line 99
    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    .line 100
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aget-boolean p3, p3, v0

    invoke-direct {p0, p1, p2, p3}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 104
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    .line 167
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lzy/okgo/model/HttpParams;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    .line 171
    invoke-static {p3}, Lcom/lzy/okgo/f/b;->aS(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/lzy/okgo/model/HttpParams;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lokhttp3/MediaType;)V

    .line 172
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lokhttp3/MediaType;)V
    .locals 2

    .line 181
    if-eqz p1, :cond_1

    .line 182
    iget-object v0, p0, Lcom/lzy/okgo/model/HttpParams;->fileParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 183
    if-nez v0, :cond_0

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    iget-object v1, p0, Lcom/lzy/okgo/model/HttpParams;->fileParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_0
    new-instance p1, Lcom/lzy/okgo/model/HttpParams$FileWrapper;

    invoke-direct {p1, p2, p3, p4}, Lcom/lzy/okgo/model/HttpParams$FileWrapper;-><init>(Ljava/io/File;Ljava/lang/String;Lokhttp3/MediaType;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_1
    return-void
.end method

.method public varargs a(Ljava/lang/String;Ljava/lang/String;[Z)V
    .locals 1

    .line 91
    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    .line 92
    const/4 v0, 0x0

    aget-boolean p3, p3, v0

    invoke-direct {p0, p1, p2, p3}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 94
    :cond_0
    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 96
    :goto_0
    return-void
.end method

.method public varargs a(Ljava/lang/String;Z[Z)V
    .locals 1

    .line 139
    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    .line 140
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aget-boolean p3, p3, v0

    invoke-direct {p0, p1, p2, p3}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 142
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 144
    :goto_0
    return-void
.end method

.method public varargs a(Ljava/util/Map;[Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[Z)V"
        }
    .end annotation

    .line 84
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 85
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 86
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0, p2}, Lcom/lzy/okgo/model/HttpParams;->a(Ljava/lang/String;Ljava/lang/String;[Z)V

    .line 87
    goto :goto_0

    .line 88
    :cond_1
    return-void

    .line 84
    :cond_2
    :goto_1
    return-void
.end method

.method public aN(Ljava/lang/String;)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/lzy/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    return-void
.end method

.method public clear()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/lzy/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 222
    iget-object v0, p0, Lcom/lzy/okgo/model/HttpParams;->fileParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 223
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 0

    .line 216
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/model/HttpParams;->aN(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/model/HttpParams;->removeFile(Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public removeFile(Ljava/lang/String;)V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/lzy/okgo/model/HttpParams;->fileParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    iget-object v1, p0, Lcom/lzy/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 268
    goto :goto_0

    .line 269
    :cond_1
    iget-object v1, p0, Lcom/lzy/okgo/model/HttpParams;->fileParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 270
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 272
    goto :goto_1

    .line 273
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

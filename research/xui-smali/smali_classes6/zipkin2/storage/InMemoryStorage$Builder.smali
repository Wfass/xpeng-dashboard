.class public final Lzipkin2/storage/InMemoryStorage$Builder;
.super Lzipkin2/storage/StorageComponent$Builder;
.source "InMemoryStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/storage/InMemoryStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field autocompleteKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field maxSpanCount:I

.field searchEnabled:Z

.field strictTraceId:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Lzipkin2/storage/StorageComponent$Builder;-><init>()V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzipkin2/storage/InMemoryStorage$Builder;->strictTraceId:Z

    iput-boolean v0, p0, Lzipkin2/storage/InMemoryStorage$Builder;->searchEnabled:Z

    .line 75
    const v0, 0x7a120

    iput v0, p0, Lzipkin2/storage/InMemoryStorage$Builder;->maxSpanCount:I

    .line 76
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lzipkin2/storage/InMemoryStorage$Builder;->autocompleteKeys:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public autocompleteKeys(Ljava/util/List;)Lzipkin2/storage/InMemoryStorage$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lzipkin2/storage/InMemoryStorage$Builder;"
        }
    .end annotation

    .line 92
    .local p1, "autocompleteKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 93
    iput-object p1, p0, Lzipkin2/storage/InMemoryStorage$Builder;->autocompleteKeys:Ljava/util/List;

    .line 94
    return-object p0

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "autocompleteKeys == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic autocompleteKeys(Ljava/util/List;)Lzipkin2/storage/StorageComponent$Builder;
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Lzipkin2/storage/InMemoryStorage$Builder;->autocompleteKeys(Ljava/util/List;)Lzipkin2/storage/InMemoryStorage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lzipkin2/storage/InMemoryStorage;
    .locals 1

    .line 106
    new-instance v0, Lzipkin2/storage/InMemoryStorage;

    invoke-direct {v0, p0}, Lzipkin2/storage/InMemoryStorage;-><init>(Lzipkin2/storage/InMemoryStorage$Builder;)V

    return-object v0
.end method

.method public bridge synthetic build()Lzipkin2/storage/StorageComponent;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lzipkin2/storage/InMemoryStorage$Builder;->build()Lzipkin2/storage/InMemoryStorage;

    move-result-object v0

    return-object v0
.end method

.method public maxSpanCount(I)Lzipkin2/storage/InMemoryStorage$Builder;
    .locals 2
    .param p1, "maxSpanCount"    # I

    .line 99
    if-lez p1, :cond_0

    .line 100
    iput p1, p0, Lzipkin2/storage/InMemoryStorage$Builder;->maxSpanCount:I

    .line 101
    return-object p0

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSpanCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public searchEnabled(Z)Lzipkin2/storage/InMemoryStorage$Builder;
    .locals 0
    .param p1, "searchEnabled"    # Z

    .line 87
    iput-boolean p1, p0, Lzipkin2/storage/InMemoryStorage$Builder;->searchEnabled:Z

    .line 88
    return-object p0
.end method

.method public bridge synthetic searchEnabled(Z)Lzipkin2/storage/StorageComponent$Builder;
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Lzipkin2/storage/InMemoryStorage$Builder;->searchEnabled(Z)Lzipkin2/storage/InMemoryStorage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public strictTraceId(Z)Lzipkin2/storage/InMemoryStorage$Builder;
    .locals 0
    .param p1, "strictTraceId"    # Z

    .line 81
    iput-boolean p1, p0, Lzipkin2/storage/InMemoryStorage$Builder;->strictTraceId:Z

    .line 82
    return-object p0
.end method

.method public bridge synthetic strictTraceId(Z)Lzipkin2/storage/StorageComponent$Builder;
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Lzipkin2/storage/InMemoryStorage$Builder;->strictTraceId(Z)Lzipkin2/storage/InMemoryStorage$Builder;

    move-result-object p1

    return-object p1
.end method

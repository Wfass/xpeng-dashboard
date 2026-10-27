.class public abstract Lzipkin2/storage/StorageComponent$Builder;
.super Ljava/lang/Object;
.source "StorageComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/storage/StorageComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public autocompleteCardinality(I)Lzipkin2/storage/StorageComponent$Builder;
    .locals 2
    .param p1, "autocompleteCardinality"    # I

    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "autocompleteCardinality not yet supported"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 128
    return-object p0
.end method

.method public autocompleteKeys(Ljava/util/List;)Lzipkin2/storage/StorageComponent$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lzipkin2/storage/StorageComponent$Builder;"
        }
    .end annotation

    .line 115
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "autocompleteKeys not yet supported"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 116
    return-object p0
.end method

.method public autocompleteTtl(I)Lzipkin2/storage/StorageComponent$Builder;
    .locals 2
    .param p1, "autocompleteTtl"    # I

    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "autocompleteTtl not yet supported"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 122
    return-object p0
.end method

.method public abstract build()Lzipkin2/storage/StorageComponent;
.end method

.method public abstract searchEnabled(Z)Lzipkin2/storage/StorageComponent$Builder;
.end method

.method public abstract strictTraceId(Z)Lzipkin2/storage/StorageComponent$Builder;
.end method

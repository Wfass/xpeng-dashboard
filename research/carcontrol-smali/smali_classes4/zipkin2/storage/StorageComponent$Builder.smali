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
    .locals 1

    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p1

    const-string v0, "autocompleteCardinality not yet supported"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-object p0
.end method

.method public autocompleteKeys(Ljava/util/List;)Lzipkin2/storage/StorageComponent$Builder;
    .locals 1
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
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p1

    const-string v0, "autocompleteKeys not yet supported"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-object p0
.end method

.method public autocompleteTtl(I)Lzipkin2/storage/StorageComponent$Builder;
    .locals 1

    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p1

    const-string v0, "autocompleteTtl not yet supported"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-object p0
.end method

.method public abstract build()Lzipkin2/storage/StorageComponent;
.end method

.method public abstract searchEnabled(Z)Lzipkin2/storage/StorageComponent$Builder;
.end method

.method public abstract strictTraceId(Z)Lzipkin2/storage/StorageComponent$Builder;
.end method

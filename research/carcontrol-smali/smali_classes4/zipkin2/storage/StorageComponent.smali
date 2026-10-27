.class public abstract Lzipkin2/storage/StorageComponent;
.super Lzipkin2/Component;
.source "StorageComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzipkin2/storage/StorageComponent$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lzipkin2/Component;-><init>()V

    return-void
.end method


# virtual methods
.method public autocompleteTags()Lzipkin2/storage/AutocompleteTags;
    .locals 1

    .line 33
    new-instance v0, Lzipkin2/storage/StorageComponent$1;

    invoke-direct {v0, p0}, Lzipkin2/storage/StorageComponent$1;-><init>(Lzipkin2/storage/StorageComponent;)V

    return-object v0
.end method

.method public abstract spanConsumer()Lzipkin2/storage/SpanConsumer;
.end method

.method public abstract spanStore()Lzipkin2/storage/SpanStore;
.end method

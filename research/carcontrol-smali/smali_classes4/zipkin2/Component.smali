.class public abstract Lzipkin2/Component;
.super Ljava/lang/Object;
.source "Component.java"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check()Lzipkin2/CheckResult;
    .locals 1

    .line 38
    sget-object v0, Lzipkin2/CheckResult;->OK:Lzipkin2/CheckResult;

    return-object v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

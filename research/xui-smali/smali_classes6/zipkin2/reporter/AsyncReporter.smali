.class public abstract Lzipkin2/reporter/AsyncReporter;
.super Lzipkin2/Component;
.source "AsyncReporter.java"

# interfaces
.implements Lzipkin2/reporter/Reporter;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;,
        Lzipkin2/reporter/AsyncReporter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lzipkin2/Component;",
        "Lzipkin2/reporter/Reporter<",
        "TS;>;",
        "Ljava/io/Flushable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    .local p0, "this":Lzipkin2/reporter/AsyncReporter;, "Lzipkin2/reporter/AsyncReporter<TS;>;"
    invoke-direct {p0}, Lzipkin2/Component;-><init>()V

    return-void
.end method

.method public static builder(Lzipkin2/reporter/Sender;)Lzipkin2/reporter/AsyncReporter$Builder;
    .locals 1
    .param p0, "sender"    # Lzipkin2/reporter/Sender;

    .line 64
    new-instance v0, Lzipkin2/reporter/AsyncReporter$Builder;

    invoke-direct {v0, p0}, Lzipkin2/reporter/AsyncReporter$Builder;-><init>(Lzipkin2/reporter/Sender;)V

    return-object v0
.end method

.method public static create(Lzipkin2/reporter/Sender;)Lzipkin2/reporter/AsyncReporter;
    .locals 1
    .param p0, "sender"    # Lzipkin2/reporter/Sender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzipkin2/reporter/Sender;",
            ")",
            "Lzipkin2/reporter/AsyncReporter<",
            "Lzipkin2/Span;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Lzipkin2/reporter/AsyncReporter$Builder;

    invoke-direct {v0, p0}, Lzipkin2/reporter/AsyncReporter$Builder;-><init>(Lzipkin2/reporter/Sender;)V

    invoke-virtual {v0}, Lzipkin2/reporter/AsyncReporter$Builder;->build()Lzipkin2/reporter/AsyncReporter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract flush()V
.end method

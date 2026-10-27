.class Lzipkin2/reporter/Reporter$1;
.super Ljava/lang/Object;
.source "Reporter.java"

# interfaces
.implements Lzipkin2/reporter/Reporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/reporter/Reporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lzipkin2/reporter/Reporter<",
        "Lzipkin2/Span;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic report(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lzipkin2/Span;

    invoke-virtual {p0, p1}, Lzipkin2/reporter/Reporter$1;->report(Lzipkin2/Span;)V

    return-void
.end method

.method public report(Lzipkin2/Span;)V
    .locals 0
    .param p1, "span"    # Lzipkin2/Span;

    .line 29
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 32
    const-string v0, "NoopReporter{}"

    return-object v0
.end method

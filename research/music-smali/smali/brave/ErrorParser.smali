.class public Lbrave/ErrorParser;
.super Ljava/lang/Object;
.source "ErrorParser.java"


# static fields
.field public static final NOOP:Lbrave/ErrorParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lbrave/ErrorParser$1;

    invoke-direct {v0}, Lbrave/ErrorParser$1;-><init>()V

    sput-object v0, Lbrave/ErrorParser;->NOOP:Lbrave/ErrorParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final annotate(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 42
    instance-of v0, p1, Lbrave/SpanCustomizer;

    if-eqz v0, :cond_0

    .line 43
    check-cast p1, Lbrave/SpanCustomizer;

    invoke-interface {p1, p2}, Lbrave/SpanCustomizer;->annotate(Ljava/lang/String;)Lbrave/SpanCustomizer;

    goto :goto_0

    .line 44
    :cond_0
    instance-of v0, p1, Lbrave/ScopedSpan;

    if-eqz v0, :cond_1

    .line 45
    check-cast p1, Lbrave/ScopedSpan;

    invoke-virtual {p1, p2}, Lbrave/ScopedSpan;->annotate(Ljava/lang/String;)Lbrave/ScopedSpan;

    :cond_1
    :goto_0
    return-void
.end method

.method public final error(Ljava/lang/Throwable;Lbrave/ScopedSpan;)V
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lbrave/ErrorParser;->error(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public final error(Ljava/lang/Throwable;Lbrave/SpanCustomizer;)V
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lbrave/ErrorParser;->error(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public final error(Ljava/lang/Throwable;Lbrave/handler/MutableSpan;)V
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lbrave/ErrorParser;->error(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method protected error(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string p1, "error"

    .line 37
    invoke-virtual {p0, p2, p1, v0}, Lbrave/ErrorParser;->tag(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final tag(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 51
    instance-of v0, p1, Lbrave/SpanCustomizer;

    if-eqz v0, :cond_0

    .line 52
    check-cast p1, Lbrave/SpanCustomizer;

    invoke-interface {p1, p2, p3}, Lbrave/SpanCustomizer;->tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/SpanCustomizer;

    goto :goto_0

    .line 53
    :cond_0
    instance-of v0, p1, Lbrave/ScopedSpan;

    if-eqz v0, :cond_1

    .line 54
    check-cast p1, Lbrave/ScopedSpan;

    invoke-virtual {p1, p2, p3}, Lbrave/ScopedSpan;->tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/ScopedSpan;

    goto :goto_0

    .line 55
    :cond_1
    instance-of v0, p1, Lbrave/handler/MutableSpan;

    if-eqz v0, :cond_2

    .line 56
    check-cast p1, Lbrave/handler/MutableSpan;

    invoke-virtual {p1, p2, p3}, Lbrave/handler/MutableSpan;->tag(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

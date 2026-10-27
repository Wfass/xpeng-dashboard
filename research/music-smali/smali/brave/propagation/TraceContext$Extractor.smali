.class public interface abstract Lbrave/propagation/TraceContext$Extractor;
.super Ljava/lang/Object;
.source "TraceContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/propagation/TraceContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Extractor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract extract(Ljava/lang/Object;)Lbrave/propagation/TraceContextOrSamplingFlags;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lbrave/propagation/TraceContextOrSamplingFlags;"
        }
    .end annotation
.end method

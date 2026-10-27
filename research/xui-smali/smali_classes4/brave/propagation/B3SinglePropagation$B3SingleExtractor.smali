.class final Lbrave/propagation/B3SinglePropagation$B3SingleExtractor;
.super Ljava/lang/Object;
.source "B3SinglePropagation.java"

# interfaces
.implements Lbrave/propagation/TraceContext$Extractor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/propagation/B3SinglePropagation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "B3SingleExtractor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lbrave/propagation/TraceContext$Extractor<",
        "TC;>;"
    }
.end annotation


# instance fields
.field final b3Key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final getter:Lbrave/propagation/Propagation$Getter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbrave/propagation/Propagation$Getter<",
            "TC;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lbrave/propagation/Propagation$Getter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lbrave/propagation/Propagation$Getter<",
            "TC;TK;>;)V"
        }
    .end annotation

    .line 64
    .local p0, "this":Lbrave/propagation/B3SinglePropagation$B3SingleExtractor;, "Lbrave/propagation/B3SinglePropagation$B3SingleExtractor<TC;TK;>;"
    .local p1, "b3Key":Ljava/lang/Object;, "TK;"
    .local p2, "getter":Lbrave/propagation/Propagation$Getter;, "Lbrave/propagation/Propagation$Getter<TC;TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lbrave/propagation/B3SinglePropagation$B3SingleExtractor;->b3Key:Ljava/lang/Object;

    .line 66
    iput-object p2, p0, Lbrave/propagation/B3SinglePropagation$B3SingleExtractor;->getter:Lbrave/propagation/Propagation$Getter;

    .line 67
    return-void
.end method


# virtual methods
.method public extract(Ljava/lang/Object;)Lbrave/propagation/TraceContextOrSamplingFlags;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lbrave/propagation/TraceContextOrSamplingFlags;"
        }
    .end annotation

    .line 70
    .local p0, "this":Lbrave/propagation/B3SinglePropagation$B3SingleExtractor;, "Lbrave/propagation/B3SinglePropagation$B3SingleExtractor<TC;TK;>;"
    .local p1, "carrier":Ljava/lang/Object;, "TC;"
    if-eqz p1, :cond_2

    .line 71
    iget-object v0, p0, Lbrave/propagation/B3SinglePropagation$B3SingleExtractor;->getter:Lbrave/propagation/Propagation$Getter;

    iget-object v1, p0, Lbrave/propagation/B3SinglePropagation$B3SingleExtractor;->b3Key:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lbrave/propagation/Propagation$Getter;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "b3":Ljava/lang/String;
    if-nez v0, :cond_0

    sget-object v1, Lbrave/propagation/TraceContextOrSamplingFlags;->EMPTY:Lbrave/propagation/TraceContextOrSamplingFlags;

    return-object v1

    .line 74
    :cond_0
    invoke-static {v0}, Lbrave/propagation/B3SingleFormat;->parseB3SingleFormat(Ljava/lang/CharSequence;)Lbrave/propagation/TraceContextOrSamplingFlags;

    move-result-object v1

    .line 76
    .local v1, "extracted":Lbrave/propagation/TraceContextOrSamplingFlags;
    if-nez v1, :cond_1

    sget-object v2, Lbrave/propagation/TraceContextOrSamplingFlags;->EMPTY:Lbrave/propagation/TraceContextOrSamplingFlags;

    return-object v2

    .line 77
    :cond_1
    return-object v1

    .line 70
    .end local v0    # "b3":Ljava/lang/String;
    .end local v1    # "extracted":Lbrave/propagation/TraceContextOrSamplingFlags;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "carrier == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

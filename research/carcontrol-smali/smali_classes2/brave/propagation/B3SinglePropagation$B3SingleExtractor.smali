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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lbrave/propagation/B3SinglePropagation$B3SingleExtractor;->b3Key:Ljava/lang/Object;

    .line 66
    iput-object p2, p0, Lbrave/propagation/B3SinglePropagation$B3SingleExtractor;->getter:Lbrave/propagation/Propagation$Getter;

    return-void
.end method


# virtual methods
.method public extract(Ljava/lang/Object;)Lbrave/propagation/TraceContextOrSamplingFlags;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lbrave/propagation/TraceContextOrSamplingFlags;"
        }
    .end annotation

    const-string v0, "carrier == null"

    .line 70
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lbrave/propagation/B3SinglePropagation$B3SingleExtractor;->getter:Lbrave/propagation/Propagation$Getter;

    iget-object v1, p0, Lbrave/propagation/B3SinglePropagation$B3SingleExtractor;->b3Key:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lbrave/propagation/Propagation$Getter;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 72
    sget-object p1, Lbrave/propagation/TraceContextOrSamplingFlags;->EMPTY:Lbrave/propagation/TraceContextOrSamplingFlags;

    return-object p1

    .line 74
    :cond_0
    invoke-static {p1}, Lbrave/propagation/B3SingleFormat;->parseB3SingleFormat(Ljava/lang/CharSequence;)Lbrave/propagation/TraceContextOrSamplingFlags;

    move-result-object p1

    if-nez p1, :cond_1

    .line 76
    sget-object p1, Lbrave/propagation/TraceContextOrSamplingFlags;->EMPTY:Lbrave/propagation/TraceContextOrSamplingFlags;

    :cond_1
    return-object p1
.end method

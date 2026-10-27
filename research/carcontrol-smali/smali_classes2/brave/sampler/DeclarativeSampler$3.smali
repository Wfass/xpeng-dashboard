.class Lbrave/sampler/DeclarativeSampler$3;
.super Lbrave/sampler/Sampler;
.source "DeclarativeSampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/sampler/DeclarativeSampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Lbrave/sampler/Sampler;-><init>()V

    return-void
.end method


# virtual methods
.method public isSampled(J)Z
    .locals 0

    .line 132
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

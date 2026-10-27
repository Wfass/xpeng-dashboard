.class Lbrave/sampler/Sampler$1;
.super Lbrave/sampler/Sampler;
.source "Sampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/sampler/Sampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lbrave/sampler/Sampler;-><init>()V

    return-void
.end method


# virtual methods
.method public isSampled(J)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "AlwaysSample"

    return-object v0
.end method

.class Lbrave/propagation/CurrentTraceContext$Scope$1;
.super Ljava/lang/Object;
.source "CurrentTraceContext.java"

# interfaces
.implements Lbrave/propagation/CurrentTraceContext$Scope;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/propagation/CurrentTraceContext$Scope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "NoopScope"

    return-object v0
.end method

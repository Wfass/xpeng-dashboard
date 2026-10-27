.class public abstract Lbrave/propagation/CurrentTraceContext$Builder;
.super Ljava/lang/Object;
.source "CurrentTraceContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/propagation/CurrentTraceContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# instance fields
.field scopeDecorators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lbrave/propagation/CurrentTraceContext$ScopeDecorator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbrave/propagation/CurrentTraceContext$Builder;->scopeDecorators:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addScopeDecorator(Lbrave/propagation/CurrentTraceContext$ScopeDecorator;)Lbrave/propagation/CurrentTraceContext$Builder;
    .locals 1

    const-string/jumbo v0, "scopeDecorator == null"

    .line 38
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lbrave/propagation/CurrentTraceContext$Builder;->scopeDecorators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public abstract build()Lbrave/propagation/CurrentTraceContext;
.end method

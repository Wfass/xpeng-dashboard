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
    .locals 2
    .param p1, "scopeDecorator"    # Lbrave/propagation/CurrentTraceContext$ScopeDecorator;

    .line 38
    if-eqz p1, :cond_0

    .line 39
    iget-object v0, p0, Lbrave/propagation/CurrentTraceContext$Builder;->scopeDecorators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    return-object p0

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "scopeDecorator == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract build()Lbrave/propagation/CurrentTraceContext;
.end method

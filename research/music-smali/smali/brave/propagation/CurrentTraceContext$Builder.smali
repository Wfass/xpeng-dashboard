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
.field a:Ljava/util/ArrayList;
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

    iput-object v0, p0, Lbrave/propagation/CurrentTraceContext$Builder;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addScopeDecorator(Lbrave/propagation/CurrentTraceContext$ScopeDecorator;)Lbrave/propagation/CurrentTraceContext$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 39
    iget-object v0, p0, Lbrave/propagation/CurrentTraceContext$Builder;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "scopeDecorator == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract build()Lbrave/propagation/CurrentTraceContext;
.end method

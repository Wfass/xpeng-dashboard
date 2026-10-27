.class final Lbrave/propagation/B3SinglePropagation$B3SingleInjector;
.super Ljava/lang/Object;
.source "B3SinglePropagation.java"

# interfaces
.implements Lbrave/propagation/TraceContext$Injector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/propagation/B3SinglePropagation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "B3SingleInjector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lbrave/propagation/TraceContext$Injector<",
        "TC;>;"
    }
.end annotation


# instance fields
.field final propagation:Lbrave/propagation/B3SinglePropagation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbrave/propagation/B3SinglePropagation<",
            "TK;>;"
        }
    .end annotation
.end field

.field final setter:Lbrave/propagation/Propagation$Setter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbrave/propagation/Propagation$Setter<",
            "TC;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lbrave/propagation/B3SinglePropagation;Lbrave/propagation/Propagation$Setter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbrave/propagation/B3SinglePropagation<",
            "TK;>;",
            "Lbrave/propagation/Propagation$Setter<",
            "TC;TK;>;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lbrave/propagation/B3SinglePropagation$B3SingleInjector;->propagation:Lbrave/propagation/B3SinglePropagation;

    .line 47
    iput-object p2, p0, Lbrave/propagation/B3SinglePropagation$B3SingleInjector;->setter:Lbrave/propagation/Propagation$Setter;

    return-void
.end method


# virtual methods
.method public inject(Lbrave/propagation/TraceContext;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbrave/propagation/TraceContext;",
            "TC;)V"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lbrave/propagation/B3SinglePropagation$B3SingleInjector;->setter:Lbrave/propagation/Propagation$Setter;

    iget-object v1, p0, Lbrave/propagation/B3SinglePropagation$B3SingleInjector;->propagation:Lbrave/propagation/B3SinglePropagation;

    iget-object v1, v1, Lbrave/propagation/B3SinglePropagation;->b3Key:Ljava/lang/Object;

    invoke-static {p1}, Lbrave/propagation/B3SingleFormat;->writeB3SingleFormat(Lbrave/propagation/TraceContext;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, v1, p1}, Lbrave/propagation/Propagation$Setter;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.class public final synthetic L-$$Lambda$afc$b$lGboqXSYxhAC7LdetIF8voAwQ3s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lqe;

.field private final synthetic f$1:Ljava/lang/annotation/Annotation;


# direct methods
.method public synthetic constructor <init>(Lqe;Ljava/lang/annotation/Annotation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L-$$Lambda$afc$b$lGboqXSYxhAC7LdetIF8voAwQ3s;->f$0:Lqe;

    iput-object p2, p0, L-$$Lambda$afc$b$lGboqXSYxhAC7LdetIF8voAwQ3s;->f$1:Ljava/lang/annotation/Annotation;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, L-$$Lambda$afc$b$lGboqXSYxhAC7LdetIF8voAwQ3s;->f$0:Lqe;

    iget-object v1, p0, L-$$Lambda$afc$b$lGboqXSYxhAC7LdetIF8voAwQ3s;->f$1:Ljava/lang/annotation/Annotation;

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-static {v0, v1, p1}, Lafc$b;->lambda$lGboqXSYxhAC7LdetIF8voAwQ3s(Lqe;Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Method;)V

    return-void
.end method

.class public final synthetic L-$$Lambda$xa$6YhZuLpB7knu5kQJt538TVhF4Lo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lsu;


# direct methods
.method public synthetic constructor <init>(Lsu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L-$$Lambda$xa$6YhZuLpB7knu5kQJt538TVhF4Lo;->f$0:Lsu;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, L-$$Lambda$xa$6YhZuLpB7knu5kQJt538TVhF4Lo;->f$0:Lsu;

    check-cast p1, Lsu;

    invoke-static {v0, p1}, Lxa;->lambda$6YhZuLpB7knu5kQJt538TVhF4Lo(Lsu;Lsu;)Z

    move-result p1

    return p1
.end method

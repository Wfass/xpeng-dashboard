.class public final synthetic L-$$Lambda$wy$a$OwY074Oe5_R8q0VJrzZPsdtvwwU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lwy$a;

.field private final synthetic f$1:Lqe;

.field private final synthetic f$2:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Lwy$a;Lqe;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L-$$Lambda$wy$a$OwY074Oe5_R8q0VJrzZPsdtvwwU;->f$0:Lwy$a;

    iput-object p2, p0, L-$$Lambda$wy$a$OwY074Oe5_R8q0VJrzZPsdtvwwU;->f$1:Lqe;

    iput-object p3, p0, L-$$Lambda$wy$a$OwY074Oe5_R8q0VJrzZPsdtvwwU;->f$2:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, L-$$Lambda$wy$a$OwY074Oe5_R8q0VJrzZPsdtvwwU;->f$0:Lwy$a;

    iget-object v1, p0, L-$$Lambda$wy$a$OwY074Oe5_R8q0VJrzZPsdtvwwU;->f$1:Lqe;

    iget-object v2, p0, L-$$Lambda$wy$a$OwY074Oe5_R8q0VJrzZPsdtvwwU;->f$2:Ljava/lang/Class;

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-static {v0, v1, v2, p1}, Lwy$a;->lambda$OwY074Oe5_R8q0VJrzZPsdtvwwU(Lwy$a;Lqe;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    return-void
.end method

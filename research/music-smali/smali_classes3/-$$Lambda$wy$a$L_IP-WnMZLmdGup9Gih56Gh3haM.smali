.class public final synthetic L-$$Lambda$wy$a$L_IP-WnMZLmdGup9Gih56Gh3haM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lwy$a;

.field private final synthetic f$1:Ljava/lang/annotation/Annotation;

.field private final synthetic f$2:Lqe;


# direct methods
.method public synthetic constructor <init>(Lwy$a;Ljava/lang/annotation/Annotation;Lqe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L-$$Lambda$wy$a$L_IP-WnMZLmdGup9Gih56Gh3haM;->f$0:Lwy$a;

    iput-object p2, p0, L-$$Lambda$wy$a$L_IP-WnMZLmdGup9Gih56Gh3haM;->f$1:Ljava/lang/annotation/Annotation;

    iput-object p3, p0, L-$$Lambda$wy$a$L_IP-WnMZLmdGup9Gih56Gh3haM;->f$2:Lqe;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, L-$$Lambda$wy$a$L_IP-WnMZLmdGup9Gih56Gh3haM;->f$0:Lwy$a;

    iget-object v1, p0, L-$$Lambda$wy$a$L_IP-WnMZLmdGup9Gih56Gh3haM;->f$1:Ljava/lang/annotation/Annotation;

    iget-object v2, p0, L-$$Lambda$wy$a$L_IP-WnMZLmdGup9Gih56Gh3haM;->f$2:Lqe;

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-static {v0, v1, v2, p1}, Lwy$a;->lambda$L_IP-WnMZLmdGup9Gih56Gh3haM(Lwy$a;Ljava/lang/annotation/Annotation;Lqe;Ljava/lang/reflect/Method;)V

    return-void
.end method

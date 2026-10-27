.class public final synthetic L-$$Lambda$wy$EmtRbPOa1Es3YunmkpCfPYWwhyY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/lang/annotation/Annotation;

.field private final synthetic f$1:Lqe;

.field private final synthetic f$2:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/annotation/Annotation;Lqe;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L-$$Lambda$wy$EmtRbPOa1Es3YunmkpCfPYWwhyY;->f$0:Ljava/lang/annotation/Annotation;

    iput-object p2, p0, L-$$Lambda$wy$EmtRbPOa1Es3YunmkpCfPYWwhyY;->f$1:Lqe;

    iput-object p3, p0, L-$$Lambda$wy$EmtRbPOa1Es3YunmkpCfPYWwhyY;->f$2:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, L-$$Lambda$wy$EmtRbPOa1Es3YunmkpCfPYWwhyY;->f$0:Ljava/lang/annotation/Annotation;

    iget-object v1, p0, L-$$Lambda$wy$EmtRbPOa1Es3YunmkpCfPYWwhyY;->f$1:Lqe;

    iget-object v2, p0, L-$$Lambda$wy$EmtRbPOa1Es3YunmkpCfPYWwhyY;->f$2:Ljava/lang/Class;

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-static {v0, v1, v2, p1}, Lwy;->lambda$EmtRbPOa1Es3YunmkpCfPYWwhyY(Ljava/lang/annotation/Annotation;Lqe;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    return-void
.end method

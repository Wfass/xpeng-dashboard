.class public final synthetic L-$$Lambda$aax$Qg6wlgcotz0jdXfvnVoXUBjSL90;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/lang/annotation/Annotation;

.field private final synthetic f$1:Lqe;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/annotation/Annotation;Lqe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L-$$Lambda$aax$Qg6wlgcotz0jdXfvnVoXUBjSL90;->f$0:Ljava/lang/annotation/Annotation;

    iput-object p2, p0, L-$$Lambda$aax$Qg6wlgcotz0jdXfvnVoXUBjSL90;->f$1:Lqe;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, L-$$Lambda$aax$Qg6wlgcotz0jdXfvnVoXUBjSL90;->f$0:Ljava/lang/annotation/Annotation;

    iget-object v1, p0, L-$$Lambda$aax$Qg6wlgcotz0jdXfvnVoXUBjSL90;->f$1:Lqe;

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-static {v0, v1, p1}, Laax;->lambda$Qg6wlgcotz0jdXfvnVoXUBjSL90(Ljava/lang/annotation/Annotation;Lqe;Ljava/lang/reflect/Method;)V

    return-void
.end method

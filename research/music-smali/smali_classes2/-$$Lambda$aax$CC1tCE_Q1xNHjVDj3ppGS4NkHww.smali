.class public final synthetic L-$$Lambda$aax$CC1tCE_Q1xNHjVDj3ppGS4NkHww;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/lang/annotation/Annotation;

.field private final synthetic f$1:Lqe;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/annotation/Annotation;Lqe;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L-$$Lambda$aax$CC1tCE_Q1xNHjVDj3ppGS4NkHww;->f$0:Ljava/lang/annotation/Annotation;

    iput-object p2, p0, L-$$Lambda$aax$CC1tCE_Q1xNHjVDj3ppGS4NkHww;->f$1:Lqe;

    iput p3, p0, L-$$Lambda$aax$CC1tCE_Q1xNHjVDj3ppGS4NkHww;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, L-$$Lambda$aax$CC1tCE_Q1xNHjVDj3ppGS4NkHww;->f$0:Ljava/lang/annotation/Annotation;

    iget-object v1, p0, L-$$Lambda$aax$CC1tCE_Q1xNHjVDj3ppGS4NkHww;->f$1:Lqe;

    iget v2, p0, L-$$Lambda$aax$CC1tCE_Q1xNHjVDj3ppGS4NkHww;->f$2:I

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-static {v0, v1, v2, p1}, Laax;->lambda$CC1tCE_Q1xNHjVDj3ppGS4NkHww(Ljava/lang/annotation/Annotation;Lqe;ILjava/lang/reflect/Method;)V

    return-void
.end method

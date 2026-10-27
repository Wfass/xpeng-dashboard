.class public final synthetic L-$$Lambda$afc$b$ifADgFt9zrukEgX11NwIJ5Q78RI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lafc$b;

.field private final synthetic f$1:Ljava/lang/annotation/Annotation;

.field private final synthetic f$2:Lqe;


# direct methods
.method public synthetic constructor <init>(Lafc$b;Ljava/lang/annotation/Annotation;Lqe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L-$$Lambda$afc$b$ifADgFt9zrukEgX11NwIJ5Q78RI;->f$0:Lafc$b;

    iput-object p2, p0, L-$$Lambda$afc$b$ifADgFt9zrukEgX11NwIJ5Q78RI;->f$1:Ljava/lang/annotation/Annotation;

    iput-object p3, p0, L-$$Lambda$afc$b$ifADgFt9zrukEgX11NwIJ5Q78RI;->f$2:Lqe;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, L-$$Lambda$afc$b$ifADgFt9zrukEgX11NwIJ5Q78RI;->f$0:Lafc$b;

    iget-object v1, p0, L-$$Lambda$afc$b$ifADgFt9zrukEgX11NwIJ5Q78RI;->f$1:Ljava/lang/annotation/Annotation;

    iget-object v2, p0, L-$$Lambda$afc$b$ifADgFt9zrukEgX11NwIJ5Q78RI;->f$2:Lqe;

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-static {v0, v1, v2, p1}, Lafc$b;->lambda$ifADgFt9zrukEgX11NwIJ5Q78RI(Lafc$b;Ljava/lang/annotation/Annotation;Lqe;Ljava/lang/reflect/Method;)V

    return-void
.end method

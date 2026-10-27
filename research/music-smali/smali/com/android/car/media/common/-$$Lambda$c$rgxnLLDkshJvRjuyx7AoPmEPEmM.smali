.class public final synthetic Lcom/android/car/media/common/-$$Lambda$c$rgxnLLDkshJvRjuyx7AoPmEPEmM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/android/car/media/common/c;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/media/common/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/media/common/-$$Lambda$c$rgxnLLDkshJvRjuyx7AoPmEPEmM;->f$0:Lcom/android/car/media/common/c;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/car/media/common/-$$Lambda$c$rgxnLLDkshJvRjuyx7AoPmEPEmM;->f$0:Lcom/android/car/media/common/c;

    check-cast p1, Laid$e;

    invoke-static {v0, p1}, Lcom/android/car/media/common/c;->lambda$rgxnLLDkshJvRjuyx7AoPmEPEmM(Lcom/android/car/media/common/c;Laid$e;)Lcom/android/car/media/common/b;

    move-result-object p1

    return-object p1
.end method

.class public final synthetic Lcom/airbnb/lottie/-$$Lambda$LottieAnimationView$V6i6rIwQH5Q-EcptKUoFQhczWEs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/airbnb/lottie/LottieAnimationView;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/-$$Lambda$LottieAnimationView$V6i6rIwQH5Q-EcptKUoFQhczWEs;->f$0:Lcom/airbnb/lottie/LottieAnimationView;

    iput p2, p0, Lcom/airbnb/lottie/-$$Lambda$LottieAnimationView$V6i6rIwQH5Q-EcptKUoFQhczWEs;->f$1:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/-$$Lambda$LottieAnimationView$V6i6rIwQH5Q-EcptKUoFQhczWEs;->f$0:Lcom/airbnb/lottie/LottieAnimationView;

    iget v1, p0, Lcom/airbnb/lottie/-$$Lambda$LottieAnimationView$V6i6rIwQH5Q-EcptKUoFQhczWEs;->f$1:I

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->lambda$fromRawRes$1$LottieAnimationView(I)Lcom/airbnb/lottie/l;

    move-result-object v0

    return-object v0
.end method

.class Lcom/airbnb/lottie/LottieAnimationView$2;
.super Lpe;
.source "LottieAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lle;Ljava/lang/Object;Lpg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lpg;

.field final synthetic b:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;Lpg;)V
    .locals 0

    .line 944
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView$2;->b:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p2, p0, Lcom/airbnb/lottie/LottieAnimationView$2;->a:Lpg;

    invoke-direct {p0}, Lpe;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lpd;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpd<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 946
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView$2;->a:Lpg;

    invoke-interface {v0, p1}, Lpg;->a(Lpd;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

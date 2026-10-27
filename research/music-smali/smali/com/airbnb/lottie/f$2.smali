.class Lcom/airbnb/lottie/f$2;
.super Lpe;
.source "LottieDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/f;->addValueCallback(Lle;Ljava/lang/Object;Lpg;)V
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

.field final synthetic b:Lcom/airbnb/lottie/f;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/f;Lpg;)V
    .locals 0

    .line 1138
    iput-object p1, p0, Lcom/airbnb/lottie/f$2;->b:Lcom/airbnb/lottie/f;

    iput-object p2, p0, Lcom/airbnb/lottie/f$2;->a:Lpg;

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

    .line 1141
    iget-object v0, p0, Lcom/airbnb/lottie/f$2;->a:Lpg;

    invoke-interface {v0, p1}, Lpg;->a(Lpd;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

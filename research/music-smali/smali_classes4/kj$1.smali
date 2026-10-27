.class Lkj$1;
.super Lpe;
.source "DropShadowKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkj;->b(Lpe;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpe<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lpe;

.field final synthetic b:Lkj;


# direct methods
.method constructor <init>(Lkj;Lpe;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lkj$1;->b:Lkj;

    iput-object p2, p0, Lkj$1;->a:Lpe;

    invoke-direct {p0}, Lpe;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lpd;)Ljava/lang/Object;
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lkj$1;->b(Lpd;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public b(Lpd;)Ljava/lang/Float;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpd<",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lkj$1;->a:Lpe;

    invoke-virtual {v0, p1}, Lpe;->a(Lpd;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 84
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const v0, 0x40233333    # 2.55f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

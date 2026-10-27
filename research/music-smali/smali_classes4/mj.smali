.class public Lmj;
.super Ljava/lang/Object;
.source "RoundedCorners.java"

# interfaces
.implements Llz;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Llv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llv<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Llv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Llv<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lmj;->a:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lmj;->b:Llv;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lmj;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/airbnb/lottie/f;Lmq;)Ljo;
    .locals 1

    .line 29
    new-instance v0, Lkc;

    invoke-direct {v0, p1, p2, p0}, Lkc;-><init>(Lcom/airbnb/lottie/f;Lmq;Lmj;)V

    return-object v0
.end method

.method public b()Llv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Llv<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lmj;->b:Llv;

    return-object v0
.end method

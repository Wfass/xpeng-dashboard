.class public Lly;
.super Ljava/lang/Object;
.source "CircleShape.java"

# interfaces
.implements Llz;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Llv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llv<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Llo;

.field private final d:Z

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Llv;Llo;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Llv<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Llo;",
            "ZZ)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lly;->a:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lly;->b:Llv;

    .line 23
    iput-object p3, p0, Lly;->c:Llo;

    .line 24
    iput-boolean p4, p0, Lly;->d:Z

    .line 25
    iput-boolean p5, p0, Lly;->e:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lly;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/airbnb/lottie/f;Lmq;)Ljo;
    .locals 1

    .line 29
    new-instance v0, Ljr;

    invoke-direct {v0, p1, p2, p0}, Ljr;-><init>(Lcom/airbnb/lottie/f;Lmq;Lly;)V

    return-object v0
.end method

.method public b()Llv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Llv<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lly;->b:Llv;

    return-object v0
.end method

.method public c()Llo;
    .locals 1

    .line 41
    iget-object v0, p0, Lly;->c:Llo;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lly;->d:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lly;->e:Z

    return v0
.end method

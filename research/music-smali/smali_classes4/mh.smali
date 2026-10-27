.class public Lmh;
.super Ljava/lang/Object;
.source "RectangleShape.java"

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

.field private final c:Llv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llv<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Llk;

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Llv;Llv;Llk;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Llv<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Llv<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Llk;",
            "Z)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lmh;->a:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lmh;->b:Llv;

    .line 23
    iput-object p3, p0, Lmh;->c:Llv;

    .line 24
    iput-object p4, p0, Lmh;->d:Llk;

    .line 25
    iput-boolean p5, p0, Lmh;->e:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lmh;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/airbnb/lottie/f;Lmq;)Ljo;
    .locals 1

    .line 49
    new-instance v0, Lka;

    invoke-direct {v0, p1, p2, p0}, Lka;-><init>(Lcom/airbnb/lottie/f;Lmq;Lmh;)V

    return-object v0
.end method

.method public b()Llk;
    .locals 1

    .line 33
    iget-object v0, p0, Lmh;->d:Llk;

    return-object v0
.end method

.method public c()Llv;
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
    iget-object v0, p0, Lmh;->c:Llv;

    return-object v0
.end method

.method public d()Llv;
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

    .line 41
    iget-object v0, p0, Lmh;->b:Llv;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lmh;->e:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RectangleShape{position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmh;->b:Llv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmh;->c:Llv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

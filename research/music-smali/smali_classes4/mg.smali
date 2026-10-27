.class public Lmg;
.super Ljava/lang/Object;
.source "PolystarShape.java"

# interfaces
.implements Llz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmg$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lmg$a;

.field private final c:Llk;

.field private final d:Llv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llv<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Llk;

.field private final f:Llk;

.field private final g:Llk;

.field private final h:Llk;

.field private final i:Llk;

.field private final j:Z

.field private final k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmg$a;Llk;Llv;Llk;Llk;Llk;Llk;Llk;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmg$a;",
            "Llk;",
            "Llv<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Llk;",
            "Llk;",
            "Llk;",
            "Llk;",
            "Llk;",
            "ZZ)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lmg;->a:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lmg;->b:Lmg$a;

    .line 52
    iput-object p3, p0, Lmg;->c:Llk;

    .line 53
    iput-object p4, p0, Lmg;->d:Llv;

    .line 54
    iput-object p5, p0, Lmg;->e:Llk;

    .line 55
    iput-object p6, p0, Lmg;->f:Llk;

    .line 56
    iput-object p7, p0, Lmg;->g:Llk;

    .line 57
    iput-object p8, p0, Lmg;->h:Llk;

    .line 58
    iput-object p9, p0, Lmg;->i:Llk;

    .line 59
    iput-boolean p10, p0, Lmg;->j:Z

    .line 60
    iput-boolean p11, p0, Lmg;->k:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lmg;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/airbnb/lottie/f;Lmq;)Ljo;
    .locals 1

    .line 108
    new-instance v0, Ljz;

    invoke-direct {v0, p1, p2, p0}, Ljz;-><init>(Lcom/airbnb/lottie/f;Lmq;Lmg;)V

    return-object v0
.end method

.method public b()Lmg$a;
    .locals 1

    .line 68
    iget-object v0, p0, Lmg;->b:Lmg$a;

    return-object v0
.end method

.method public c()Llk;
    .locals 1

    .line 72
    iget-object v0, p0, Lmg;->c:Llk;

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

    .line 76
    iget-object v0, p0, Lmg;->d:Llv;

    return-object v0
.end method

.method public e()Llk;
    .locals 1

    .line 80
    iget-object v0, p0, Lmg;->e:Llk;

    return-object v0
.end method

.method public f()Llk;
    .locals 1

    .line 84
    iget-object v0, p0, Lmg;->f:Llk;

    return-object v0
.end method

.method public g()Llk;
    .locals 1

    .line 88
    iget-object v0, p0, Lmg;->g:Llk;

    return-object v0
.end method

.method public h()Llk;
    .locals 1

    .line 92
    iget-object v0, p0, Lmg;->h:Llk;

    return-object v0
.end method

.method public i()Llk;
    .locals 1

    .line 96
    iget-object v0, p0, Lmg;->i:Llk;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lmg;->j:Z

    return v0
.end method

.method public k()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lmg;->k:Z

    return v0
.end method

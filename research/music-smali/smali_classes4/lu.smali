.class public Llu;
.super Ljava/lang/Object;
.source "AnimatableTransform.java"

# interfaces
.implements Llz;


# instance fields
.field private final a:Lln;

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

.field private final c:Llp;

.field private final d:Llk;

.field private final e:Llm;

.field private final f:Llk;

.field private final g:Llk;

.field private final h:Llk;

.field private final i:Llk;


# direct methods
.method public constructor <init>()V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    .line 37
    invoke-direct/range {v0 .. v9}, Llu;-><init>(Lln;Llv;Llp;Llk;Llm;Llk;Llk;Llk;Llk;)V

    return-void
.end method

.method public constructor <init>(Lln;Llv;Llp;Llk;Llm;Llk;Llk;Llk;Llk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lln;",
            "Llv<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Llp;",
            "Llk;",
            "Llm;",
            "Llk;",
            "Llk;",
            "Llk;",
            "Llk;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Llu;->a:Lln;

    .line 46
    iput-object p2, p0, Llu;->b:Llv;

    .line 47
    iput-object p3, p0, Llu;->c:Llp;

    .line 48
    iput-object p4, p0, Llu;->d:Llk;

    .line 49
    iput-object p5, p0, Llu;->e:Llm;

    .line 50
    iput-object p6, p0, Llu;->h:Llk;

    .line 51
    iput-object p7, p0, Llu;->i:Llk;

    .line 52
    iput-object p8, p0, Llu;->f:Llk;

    .line 53
    iput-object p9, p0, Llu;->g:Llk;

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/f;Lmq;)Ljo;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Lln;
    .locals 1

    .line 58
    iget-object v0, p0, Llu;->a:Lln;

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

    .line 63
    iget-object v0, p0, Llu;->b:Llv;

    return-object v0
.end method

.method public c()Llp;
    .locals 1

    .line 68
    iget-object v0, p0, Llu;->c:Llp;

    return-object v0
.end method

.method public d()Llk;
    .locals 1

    .line 73
    iget-object v0, p0, Llu;->d:Llk;

    return-object v0
.end method

.method public e()Llm;
    .locals 1

    .line 78
    iget-object v0, p0, Llu;->e:Llm;

    return-object v0
.end method

.method public f()Llk;
    .locals 1

    .line 83
    iget-object v0, p0, Llu;->h:Llk;

    return-object v0
.end method

.method public g()Llk;
    .locals 1

    .line 88
    iget-object v0, p0, Llu;->i:Llk;

    return-object v0
.end method

.method public h()Llk;
    .locals 1

    .line 93
    iget-object v0, p0, Llu;->f:Llk;

    return-object v0
.end method

.method public i()Llk;
    .locals 1

    .line 98
    iget-object v0, p0, Llu;->g:Llk;

    return-object v0
.end method

.method public j()Lkw;
    .locals 1

    .line 102
    new-instance v0, Lkw;

    invoke-direct {v0, p0}, Lkw;-><init>(Llu;)V

    return-object v0
.end method

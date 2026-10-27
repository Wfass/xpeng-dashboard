.class public Lmo;
.super Ljava/lang/Object;
.source "ShapeStroke.java"

# interfaces
.implements Llz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmo$b;,
        Lmo$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Llk;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Llk;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Llj;

.field private final e:Llm;

.field private final f:Llk;

.field private final g:Lmo$a;

.field private final h:Lmo$b;

.field private final i:F

.field private final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Llk;Ljava/util/List;Llj;Llm;Llk;Lmo$a;Lmo$b;FZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Llk;",
            "Ljava/util/List<",
            "Llk;",
            ">;",
            "Llj;",
            "Llm;",
            "Llk;",
            "Lmo$a;",
            "Lmo$b;",
            "FZ)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lmo;->a:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lmo;->b:Llk;

    .line 71
    iput-object p3, p0, Lmo;->c:Ljava/util/List;

    .line 72
    iput-object p4, p0, Lmo;->d:Llj;

    .line 73
    iput-object p5, p0, Lmo;->e:Llm;

    .line 74
    iput-object p6, p0, Lmo;->f:Llk;

    .line 75
    iput-object p7, p0, Lmo;->g:Lmo$a;

    .line 76
    iput-object p8, p0, Lmo;->h:Lmo$b;

    .line 77
    iput p9, p0, Lmo;->i:F

    .line 78
    iput-boolean p10, p0, Lmo;->j:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lmo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/airbnb/lottie/f;Lmq;)Ljo;
    .locals 1

    .line 82
    new-instance v0, Lkf;

    invoke-direct {v0, p1, p2, p0}, Lkf;-><init>(Lcom/airbnb/lottie/f;Lmq;Lmo;)V

    return-object v0
.end method

.method public b()Llj;
    .locals 1

    .line 90
    iget-object v0, p0, Lmo;->d:Llj;

    return-object v0
.end method

.method public c()Llm;
    .locals 1

    .line 94
    iget-object v0, p0, Lmo;->e:Llm;

    return-object v0
.end method

.method public d()Llk;
    .locals 1

    .line 98
    iget-object v0, p0, Lmo;->f:Llk;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Llk;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lmo;->c:Ljava/util/List;

    return-object v0
.end method

.method public f()Llk;
    .locals 1

    .line 106
    iget-object v0, p0, Lmo;->b:Llk;

    return-object v0
.end method

.method public g()Lmo$a;
    .locals 1

    .line 110
    iget-object v0, p0, Lmo;->g:Lmo$a;

    return-object v0
.end method

.method public h()Lmo$b;
    .locals 1

    .line 114
    iget-object v0, p0, Lmo;->h:Lmo$b;

    return-object v0
.end method

.method public i()F
    .locals 1

    .line 118
    iget v0, p0, Lmo;->i:F

    return v0
.end method

.method public j()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lmo;->j:Z

    return v0
.end method

.class public Lmc;
.super Ljava/lang/Object;
.source "GradientStroke.java"

# interfaces
.implements Llz;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lmd;

.field private final c:Lll;

.field private final d:Llm;

.field private final e:Llo;

.field private final f:Llo;

.field private final g:Llk;

.field private final h:Lmo$a;

.field private final i:Lmo$b;

.field private final j:F

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Llk;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Llk;

.field private final m:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmd;Lll;Llm;Llo;Llo;Llk;Lmo$a;Lmo$b;FLjava/util/List;Llk;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmd;",
            "Lll;",
            "Llm;",
            "Llo;",
            "Llo;",
            "Llk;",
            "Lmo$a;",
            "Lmo$b;",
            "F",
            "Ljava/util/List<",
            "Llk;",
            ">;",
            "Llk;",
            "Z)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lmc;->a:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lmc;->b:Lmd;

    .line 41
    iput-object p3, p0, Lmc;->c:Lll;

    .line 42
    iput-object p4, p0, Lmc;->d:Llm;

    .line 43
    iput-object p5, p0, Lmc;->e:Llo;

    .line 44
    iput-object p6, p0, Lmc;->f:Llo;

    .line 45
    iput-object p7, p0, Lmc;->g:Llk;

    .line 46
    iput-object p8, p0, Lmc;->h:Lmo$a;

    .line 47
    iput-object p9, p0, Lmc;->i:Lmo$b;

    .line 48
    iput p10, p0, Lmc;->j:F

    .line 49
    iput-object p11, p0, Lmc;->k:Ljava/util/List;

    .line 50
    iput-object p12, p0, Lmc;->l:Llk;

    .line 51
    iput-boolean p13, p0, Lmc;->m:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lmc;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/airbnb/lottie/f;Lmq;)Ljo;
    .locals 1

    .line 107
    new-instance v0, Lju;

    invoke-direct {v0, p1, p2, p0}, Lju;-><init>(Lcom/airbnb/lottie/f;Lmq;Lmc;)V

    return-object v0
.end method

.method public b()Lmd;
    .locals 1

    .line 59
    iget-object v0, p0, Lmc;->b:Lmd;

    return-object v0
.end method

.method public c()Lll;
    .locals 1

    .line 63
    iget-object v0, p0, Lmc;->c:Lll;

    return-object v0
.end method

.method public d()Llm;
    .locals 1

    .line 67
    iget-object v0, p0, Lmc;->d:Llm;

    return-object v0
.end method

.method public e()Llo;
    .locals 1

    .line 71
    iget-object v0, p0, Lmc;->e:Llo;

    return-object v0
.end method

.method public f()Llo;
    .locals 1

    .line 75
    iget-object v0, p0, Lmc;->f:Llo;

    return-object v0
.end method

.method public g()Llk;
    .locals 1

    .line 79
    iget-object v0, p0, Lmc;->g:Llk;

    return-object v0
.end method

.method public h()Lmo$a;
    .locals 1

    .line 83
    iget-object v0, p0, Lmc;->h:Lmo$a;

    return-object v0
.end method

.method public i()Lmo$b;
    .locals 1

    .line 87
    iget-object v0, p0, Lmc;->i:Lmo$b;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Llk;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lmc;->k:Ljava/util/List;

    return-object v0
.end method

.method public k()Llk;
    .locals 1

    .line 95
    iget-object v0, p0, Lmc;->l:Llk;

    return-object v0
.end method

.method public l()F
    .locals 1

    .line 99
    iget v0, p0, Lmc;->j:F

    return v0
.end method

.method public m()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lmc;->m:Z

    return v0
.end method

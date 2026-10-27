.class public Lmt;
.super Ljava/lang/Object;
.source "Layer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmt$b;,
        Lmt$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Llz;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/airbnb/lottie/d;

.field private final c:Ljava/lang/String;

.field private final d:J

.field private final e:Lmt$a;

.field private final f:J

.field private final g:Ljava/lang/String;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lme;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Llu;

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:F

.field private final n:F

.field private final o:I

.field private final p:I

.field private final q:Lls;

.field private final r:Llt;

.field private final s:Llk;

.field private final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpc<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final u:Lmt$b;

.field private final v:Z

.field private final w:Llx;

.field private final x:Lnp;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/airbnb/lottie/d;Ljava/lang/String;JLmt$a;JLjava/lang/String;Ljava/util/List;Llu;IIIFFIILls;Llt;Ljava/util/List;Lmt$b;Llk;ZLlx;Lnp;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Llz;",
            ">;",
            "Lcom/airbnb/lottie/d;",
            "Ljava/lang/String;",
            "J",
            "Lmt$a;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lme;",
            ">;",
            "Llu;",
            "IIIFFII",
            "Lls;",
            "Llt;",
            "Ljava/util/List<",
            "Lpc<",
            "Ljava/lang/Float;",
            ">;>;",
            "Lmt$b;",
            "Llk;",
            "Z",
            "Llx;",
            "Lnp;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 73
    iput-object v1, v0, Lmt;->a:Ljava/util/List;

    move-object v1, p2

    .line 74
    iput-object v1, v0, Lmt;->b:Lcom/airbnb/lottie/d;

    move-object v1, p3

    .line 75
    iput-object v1, v0, Lmt;->c:Ljava/lang/String;

    move-wide v1, p4

    .line 76
    iput-wide v1, v0, Lmt;->d:J

    move-object v1, p6

    .line 77
    iput-object v1, v0, Lmt;->e:Lmt$a;

    move-wide v1, p7

    .line 78
    iput-wide v1, v0, Lmt;->f:J

    move-object v1, p9

    .line 79
    iput-object v1, v0, Lmt;->g:Ljava/lang/String;

    move-object v1, p10

    .line 80
    iput-object v1, v0, Lmt;->h:Ljava/util/List;

    move-object v1, p11

    .line 81
    iput-object v1, v0, Lmt;->i:Llu;

    move v1, p12

    .line 82
    iput v1, v0, Lmt;->j:I

    move/from16 v1, p13

    .line 83
    iput v1, v0, Lmt;->k:I

    move/from16 v1, p14

    .line 84
    iput v1, v0, Lmt;->l:I

    move/from16 v1, p15

    .line 85
    iput v1, v0, Lmt;->m:F

    move/from16 v1, p16

    .line 86
    iput v1, v0, Lmt;->n:F

    move/from16 v1, p17

    .line 87
    iput v1, v0, Lmt;->o:I

    move/from16 v1, p18

    .line 88
    iput v1, v0, Lmt;->p:I

    move-object/from16 v1, p19

    .line 89
    iput-object v1, v0, Lmt;->q:Lls;

    move-object/from16 v1, p20

    .line 90
    iput-object v1, v0, Lmt;->r:Llt;

    move-object/from16 v1, p21

    .line 91
    iput-object v1, v0, Lmt;->t:Ljava/util/List;

    move-object/from16 v1, p22

    .line 92
    iput-object v1, v0, Lmt;->u:Lmt$b;

    move-object/from16 v1, p23

    .line 93
    iput-object v1, v0, Lmt;->s:Llk;

    move/from16 v1, p24

    .line 94
    iput-boolean v1, v0, Lmt;->v:Z

    move-object/from16 v1, p25

    .line 95
    iput-object v1, v0, Lmt;->w:Llx;

    move-object/from16 v1, p26

    .line 96
    iput-object v1, v0, Lmt;->x:Lnp;

    return-void
.end method


# virtual methods
.method a()Lcom/airbnb/lottie/d;
    .locals 1

    .line 100
    iget-object v0, p0, Lmt;->b:Lcom/airbnb/lottie/d;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmt;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget-object v2, p0, Lmt;->b:Lcom/airbnb/lottie/d;

    invoke-virtual {p0}, Lmt;->m()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/lottie/d;->a(J)Lmt;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "\t\tParents: "

    .line 204
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lmt;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget-object v3, p0, Lmt;->b:Lcom/airbnb/lottie/d;

    invoke-virtual {v2}, Lmt;->m()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/d;->a(J)Lmt;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    const-string v3, "->"

    .line 207
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lmt;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget-object v3, p0, Lmt;->b:Lcom/airbnb/lottie/d;

    invoke-virtual {v2}, Lmt;->m()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/d;->a(J)Lmt;

    move-result-object v2

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :cond_1
    invoke-virtual {p0}, Lmt;->j()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 213
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tMasks: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmt;->j()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_2
    invoke-virtual {p0}, Lmt;->r()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lmt;->q()I

    move-result v2

    if-eqz v2, :cond_3

    .line 216
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tBackground: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 217
    invoke-virtual {p0}, Lmt;->r()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lmt;->q()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p0}, Lmt;->p()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "%dx%d %X\n"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 216
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :cond_3
    iget-object v2, p0, Lmt;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 220
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tShapes:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget-object v2, p0, Lmt;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 222
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\t\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 225
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method b()F
    .locals 1

    .line 104
    iget v0, p0, Lmt;->m:F

    return v0
.end method

.method c()F
    .locals 2

    .line 108
    iget v0, p0, Lmt;->n:F

    iget-object v1, p0, Lmt;->b:Lcom/airbnb/lottie/d;

    invoke-virtual {v1}, Lcom/airbnb/lottie/d;->m()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpc<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lmt;->t:Ljava/util/List;

    return-object v0
.end method

.method public e()J
    .locals 2

    .line 116
    iget-wide v0, p0, Lmt;->d:J

    return-wide v0
.end method

.method f()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lmt;->c:Ljava/lang/String;

    return-object v0
.end method

.method g()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lmt;->g:Ljava/lang/String;

    return-object v0
.end method

.method h()I
    .locals 1

    .line 128
    iget v0, p0, Lmt;->o:I

    return v0
.end method

.method i()I
    .locals 1

    .line 132
    iget v0, p0, Lmt;->p:I

    return v0
.end method

.method j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lme;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lmt;->h:Ljava/util/List;

    return-object v0
.end method

.method public k()Lmt$a;
    .locals 1

    .line 140
    iget-object v0, p0, Lmt;->e:Lmt$a;

    return-object v0
.end method

.method l()Lmt$b;
    .locals 1

    .line 144
    iget-object v0, p0, Lmt;->u:Lmt$b;

    return-object v0
.end method

.method m()J
    .locals 2

    .line 148
    iget-wide v0, p0, Lmt;->f:J

    return-wide v0
.end method

.method n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Llz;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lmt;->a:Ljava/util/List;

    return-object v0
.end method

.method o()Llu;
    .locals 1

    .line 156
    iget-object v0, p0, Lmt;->i:Llu;

    return-object v0
.end method

.method p()I
    .locals 1

    .line 160
    iget v0, p0, Lmt;->l:I

    return v0
.end method

.method q()I
    .locals 1

    .line 164
    iget v0, p0, Lmt;->k:I

    return v0
.end method

.method r()I
    .locals 1

    .line 168
    iget v0, p0, Lmt;->j:I

    return v0
.end method

.method s()Lls;
    .locals 1

    .line 172
    iget-object v0, p0, Lmt;->q:Lls;

    return-object v0
.end method

.method t()Llt;
    .locals 1

    .line 176
    iget-object v0, p0, Lmt;->r:Llt;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 184
    invoke-virtual {p0, v0}, Lmt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method u()Llk;
    .locals 1

    .line 180
    iget-object v0, p0, Lmt;->s:Llk;

    return-object v0
.end method

.method public v()Z
    .locals 1

    .line 188
    iget-boolean v0, p0, Lmt;->v:Z

    return v0
.end method

.method public w()Llx;
    .locals 1

    .line 192
    iget-object v0, p0, Lmt;->w:Llx;

    return-object v0
.end method

.method public x()Lnp;
    .locals 1

    .line 196
    iget-object v0, p0, Lmt;->x:Lnp;

    return-object v0
.end method

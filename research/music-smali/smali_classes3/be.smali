.class public Lbe;
.super Ljava/lang/Object;
.source "ConstraintAnchor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbe$a;
    }
.end annotation


# instance fields
.field public final a:Lbf;

.field public final b:Lbe$a;

.field public c:Lbe;

.field public d:I

.field e:I

.field f:Laj;

.field private g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lbe;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>(Lbf;Lbe$a;)V
    .locals 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lbe;->g:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 98
    iput v0, p0, Lbe;->d:I

    const/high16 v0, -0x80000000

    .line 99
    iput v0, p0, Lbe;->e:I

    .line 132
    iput-object p1, p0, Lbe;->a:Lbf;

    .line 133
    iput-object p2, p0, Lbe;->b:Lbe$a;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lbe;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lbe;->g:Ljava/util/HashSet;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 70
    iput p1, p0, Lbe;->h:I

    const/4 p1, 0x1

    .line 71
    iput-boolean p1, p0, Lbe;->i:Z

    return-void
.end method

.method public a(ILjava/util/ArrayList;Lcd;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcd;",
            ">;",
            "Lcd;",
            ")V"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lbe;->g:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbe;

    .line 43
    iget-object v1, v1, Lbe;->a:Lbf;

    invoke-static {v1, p1, p2, p3}, Lbx;->a(Lbf;ILjava/util/ArrayList;Lcd;)Lcd;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lae;)V
    .locals 2

    .line 146
    iget-object p1, p0, Lbe;->f:Laj;

    if-nez p1, :cond_0

    .line 147
    new-instance p1, Laj;

    sget-object v0, Laj$a;->UNRESTRICTED:Laj$a;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Laj;-><init>(Laj$a;Ljava/lang/String;)V

    iput-object p1, p0, Lbe;->f:Laj;

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {p1}, Laj;->b()V

    :goto_0
    return-void
.end method

.method public a(Lbe;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 262
    :cond_0
    invoke-virtual {p1}, Lbe;->i()Lbe$a;

    move-result-object v1

    .line 263
    iget-object v2, p0, Lbe;->b:Lbe$a;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    .line 264
    sget-object v1, Lbe$a;->BASELINE:Lbe$a;

    if-ne v2, v1, :cond_2

    .line 265
    invoke-virtual {p1}, Lbe;->h()Lbf;

    move-result-object p1

    invoke-virtual {p1}, Lbf;->P()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lbe;->h()Lbf;

    move-result-object p1

    invoke-virtual {p1}, Lbf;->P()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    return v0

    :cond_2
    return v3

    .line 270
    :cond_3
    sget-object v2, Lbe$1;->a:[I

    iget-object v4, p0, Lbe;->b:Lbe$a;

    invoke-virtual {v4}, Lbe$a;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 303
    new-instance p1, Ljava/lang/AssertionError;

    iget-object v0, p0, Lbe;->b:Lbe$a;

    invoke-virtual {v0}, Lbe$a;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_0
    return v0

    .line 293
    :pswitch_1
    sget-object p1, Lbe$a;->LEFT:Lbe$a;

    if-eq v1, p1, :cond_5

    sget-object p1, Lbe$a;->RIGHT:Lbe$a;

    if-ne v1, p1, :cond_4

    goto :goto_0

    :cond_4
    return v3

    :cond_5
    :goto_0
    return v0

    .line 286
    :pswitch_2
    sget-object v2, Lbe$a;->TOP:Lbe$a;

    if-eq v1, v2, :cond_7

    sget-object v2, Lbe$a;->BOTTOM:Lbe$a;

    if-ne v1, v2, :cond_6

    goto :goto_1

    :cond_6
    move v2, v0

    goto :goto_2

    :cond_7
    :goto_1
    move v2, v3

    .line 287
    :goto_2
    invoke-virtual {p1}, Lbe;->h()Lbf;

    move-result-object p1

    instance-of p1, p1, Lbi;

    if-eqz p1, :cond_a

    if-nez v2, :cond_9

    .line 288
    sget-object p1, Lbe$a;->CENTER_Y:Lbe$a;

    if-ne v1, p1, :cond_8

    goto :goto_3

    :cond_8
    move v2, v0

    goto :goto_4

    :cond_9
    :goto_3
    move v2, v3

    :cond_a
    :goto_4
    return v2

    .line 278
    :pswitch_3
    sget-object v2, Lbe$a;->LEFT:Lbe$a;

    if-eq v1, v2, :cond_c

    sget-object v2, Lbe$a;->RIGHT:Lbe$a;

    if-ne v1, v2, :cond_b

    goto :goto_5

    :cond_b
    move v2, v0

    goto :goto_6

    :cond_c
    :goto_5
    move v2, v3

    .line 279
    :goto_6
    invoke-virtual {p1}, Lbe;->h()Lbf;

    move-result-object p1

    instance-of p1, p1, Lbi;

    if-eqz p1, :cond_f

    if-nez v2, :cond_e

    .line 280
    sget-object p1, Lbe$a;->CENTER_X:Lbe$a;

    if-ne v1, p1, :cond_d

    goto :goto_7

    :cond_d
    move v2, v0

    goto :goto_8

    :cond_e
    :goto_7
    move v2, v3

    :cond_f
    :goto_8
    return v2

    .line 273
    :pswitch_4
    sget-object p1, Lbe$a;->BASELINE:Lbe$a;

    if-eq v1, p1, :cond_10

    sget-object p1, Lbe$a;->CENTER_X:Lbe$a;

    if-eq v1, p1, :cond_10

    sget-object p1, Lbe$a;->CENTER_Y:Lbe$a;

    if-eq v1, p1, :cond_10

    move v0, v3

    :cond_10
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lbe;I)Z
    .locals 2

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    .line 242
    invoke-virtual {p0, p1, p2, v0, v1}, Lbe;->a(Lbe;IIZ)Z

    move-result p1

    return p1
.end method

.method public a(Lbe;IIZ)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 216
    invoke-virtual {p0}, Lbe;->l()V

    return v0

    :cond_0
    if-nez p4, :cond_1

    .line 219
    invoke-virtual {p0, p1}, Lbe;->a(Lbe;)Z

    move-result p4

    if-nez p4, :cond_1

    const/4 p1, 0x0

    return p1

    .line 222
    :cond_1
    iput-object p1, p0, Lbe;->c:Lbe;

    .line 223
    iget-object p1, p0, Lbe;->c:Lbe;

    iget-object p4, p1, Lbe;->g:Ljava/util/HashSet;

    if-nez p4, :cond_2

    .line 224
    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    iput-object p4, p1, Lbe;->g:Ljava/util/HashSet;

    .line 226
    :cond_2
    iget-object p1, p0, Lbe;->c:Lbe;

    iget-object p1, p1, Lbe;->g:Ljava/util/HashSet;

    if-eqz p1, :cond_3

    .line 227
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_3
    iput p2, p0, Lbe;->d:I

    .line 230
    iput p3, p0, Lbe;->e:I

    return v0
.end method

.method public b(I)V
    .locals 1

    .line 376
    invoke-virtual {p0}, Lbe;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iput p1, p0, Lbe;->e:I

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 2

    .line 50
    iget-object v0, p0, Lbe;->g:Ljava/util/HashSet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 53
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public c()Z
    .locals 3

    .line 57
    iget-object v0, p0, Lbe;->g:Ljava/util/HashSet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 60
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbe;

    .line 61
    invoke-virtual {v2}, Lbe;->n()Lbe;

    move-result-object v2

    .line 62
    invoke-virtual {v2}, Lbe;->m()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public d()I
    .locals 1

    .line 75
    iget-boolean v0, p0, Lbe;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 78
    :cond_0
    iget v0, p0, Lbe;->h:I

    return v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lbe;->i:Z

    .line 83
    iput v0, p0, Lbe;->h:I

    return-void
.end method

.method public f()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lbe;->i:Z

    return v0
.end method

.method public g()Laj;
    .locals 1

    .line 140
    iget-object v0, p0, Lbe;->f:Laj;

    return-object v0
.end method

.method public h()Lbf;
    .locals 1

    .line 157
    iget-object v0, p0, Lbe;->a:Lbf;

    return-object v0
.end method

.method public i()Lbe$a;
    .locals 1

    .line 163
    iget-object v0, p0, Lbe;->b:Lbe$a;

    return-object v0
.end method

.method public j()I
    .locals 3

    .line 170
    iget-object v0, p0, Lbe;->a:Lbf;

    invoke-virtual {v0}, Lbf;->B()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 173
    :cond_0
    iget v0, p0, Lbe;->e:I

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lbe;->c:Lbe;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lbe;->a:Lbf;

    .line 174
    invoke-virtual {v0}, Lbf;->B()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 175
    iget v0, p0, Lbe;->e:I

    return v0

    .line 177
    :cond_1
    iget v0, p0, Lbe;->d:I

    return v0
.end method

.method public k()Lbe;
    .locals 1

    .line 184
    iget-object v0, p0, Lbe;->c:Lbe;

    return-object v0
.end method

.method public l()V
    .locals 2

    .line 190
    iget-object v0, p0, Lbe;->c:Lbe;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lbe;->g:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 192
    iget-object v0, p0, Lbe;->c:Lbe;

    iget-object v0, v0, Lbe;->g:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lbe;->c:Lbe;

    iput-object v1, v0, Lbe;->g:Ljava/util/HashSet;

    .line 196
    :cond_0
    iput-object v1, p0, Lbe;->g:Ljava/util/HashSet;

    .line 197
    iput-object v1, p0, Lbe;->c:Lbe;

    const/4 v0, 0x0

    .line 198
    iput v0, p0, Lbe;->d:I

    const/high16 v1, -0x80000000

    .line 199
    iput v1, p0, Lbe;->e:I

    .line 200
    iput-boolean v0, p0, Lbe;->i:Z

    .line 201
    iput v0, p0, Lbe;->h:I

    return-void
.end method

.method public m()Z
    .locals 1

    .line 250
    iget-object v0, p0, Lbe;->c:Lbe;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final n()Lbe;
    .locals 2

    .line 490
    sget-object v0, Lbe$1;->a:[I

    iget-object v1, p0, Lbe;->b:Lbe$a;

    invoke-virtual {v1}, Lbe$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 510
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lbe;->b:Lbe$a;

    invoke-virtual {v1}, Lbe$a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 501
    :pswitch_0
    iget-object v0, p0, Lbe;->a:Lbf;

    iget-object v0, v0, Lbf;->B:Lbe;

    return-object v0

    .line 498
    :pswitch_1
    iget-object v0, p0, Lbe;->a:Lbf;

    iget-object v0, v0, Lbf;->D:Lbe;

    return-object v0

    .line 495
    :pswitch_2
    iget-object v0, p0, Lbe;->a:Lbf;

    iget-object v0, v0, Lbf;->A:Lbe;

    return-object v0

    .line 492
    :pswitch_3
    iget-object v0, p0, Lbe;->a:Lbf;

    iget-object v0, v0, Lbf;->C:Lbe;

    return-object v0

    :pswitch_4
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbe;->a:Lbf;

    invoke-virtual {v1}, Lbf;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbe;->b:Lbe$a;

    invoke-virtual {v1}, Lbe$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

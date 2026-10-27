.class public Lbi;
.super Lbf;
.source "Guideline.java"


# instance fields
.field protected a:F

.field protected aA:Z

.field private aB:Lbe;

.field private aC:I

.field private aD:I

.field private aE:Z

.field protected ay:I

.field protected az:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 47
    invoke-direct {p0}, Lbf;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 37
    iput v0, p0, Lbi;->a:F

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lbi;->ay:I

    .line 39
    iput v0, p0, Lbi;->az:I

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lbi;->aA:Z

    .line 42
    iget-object v0, p0, Lbi;->B:Lbe;

    iput-object v0, p0, Lbi;->aB:Lbe;

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lbi;->aC:I

    .line 44
    iput v0, p0, Lbi;->aD:I

    .line 48
    iget-object v1, p0, Lbi;->J:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 49
    iget-object v1, p0, Lbi;->J:Ljava/util/ArrayList;

    iget-object v2, p0, Lbi;->aB:Lbe;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v1, p0, Lbi;->I:[Lbe;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 52
    iget-object v2, p0, Lbi;->I:[Lbe;

    iget-object v3, p0, Lbi;->aB:Lbe;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public A(I)V
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    .line 174
    iput v1, p0, Lbi;->a:F

    .line 175
    iput v0, p0, Lbi;->ay:I

    .line 176
    iput p1, p0, Lbi;->az:I

    :cond_0
    return-void
.end method

.method public B(I)V
    .locals 1

    .line 196
    iget-object v0, p0, Lbi;->aB:Lbe;

    invoke-virtual {v0, p1}, Lbe;->a(I)V

    const/4 p1, 0x1

    .line 197
    iput-boolean p1, p0, Lbi;->aE:Z

    return-void
.end method

.method public a(Lbe$a;)Lbe;
    .locals 2

    .line 127
    sget-object v0, Lbi$1;->a:[I

    invoke-virtual {p1}, Lbe$a;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-object v0

    .line 137
    :pswitch_1
    iget p1, p0, Lbi;->aC:I

    if-nez p1, :cond_0

    .line 138
    iget-object p1, p0, Lbi;->aB:Lbe;

    return-object p1

    .line 130
    :pswitch_2
    iget p1, p0, Lbi;->aC:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 131
    iget-object p1, p0, Lbi;->aB:Lbe;

    return-object p1

    :cond_0
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(I)V
    .locals 3

    .line 86
    iget v0, p0, Lbi;->aC:I

    if-ne v0, p1, :cond_0

    return-void

    .line 89
    :cond_0
    iput p1, p0, Lbi;->aC:I

    .line 90
    iget-object p1, p0, Lbi;->J:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 91
    iget p1, p0, Lbi;->aC:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 92
    iget-object p1, p0, Lbi;->A:Lbe;

    iput-object p1, p0, Lbi;->aB:Lbe;

    goto :goto_0

    .line 94
    :cond_1
    iget-object p1, p0, Lbi;->B:Lbe;

    iput-object p1, p0, Lbi;->aB:Lbe;

    .line 96
    :goto_0
    iget-object p1, p0, Lbi;->J:Ljava/util/ArrayList;

    iget-object v0, p0, Lbi;->aB:Lbe;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object p1, p0, Lbi;->I:[Lbe;

    array-length p1, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_2

    .line 99
    iget-object v1, p0, Lbi;->I:[Lbe;

    iget-object v2, p0, Lbi;->aB:Lbe;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public a(Laf;Z)V
    .locals 7

    .line 217
    invoke-virtual {p0}, Lbi;->A()Lbf;

    move-result-object p2

    check-cast p2, Lbg;

    if-nez p2, :cond_0

    return-void

    .line 221
    :cond_0
    sget-object v0, Lbe$a;->LEFT:Lbe$a;

    invoke-virtual {p2, v0}, Lbg;->a(Lbe$a;)Lbe;

    move-result-object v0

    .line 222
    sget-object v1, Lbe$a;->RIGHT:Lbe$a;

    invoke-virtual {p2, v1}, Lbg;->a(Lbe$a;)Lbe;

    move-result-object v1

    .line 223
    iget-object v2, p0, Lbi;->L:Lbf;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lbi;->L:Lbf;

    iget-object v2, v2, Lbf;->K:[Lbf$a;

    aget-object v2, v2, v4

    sget-object v5, Lbf$a;->WRAP_CONTENT:Lbf$a;

    if-ne v2, v5, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    .line 224
    :goto_0
    iget v5, p0, Lbi;->aC:I

    if-nez v5, :cond_3

    .line 225
    sget-object v0, Lbe$a;->TOP:Lbe$a;

    invoke-virtual {p2, v0}, Lbg;->a(Lbe$a;)Lbe;

    move-result-object v0

    .line 226
    sget-object v1, Lbe$a;->BOTTOM:Lbe$a;

    invoke-virtual {p2, v1}, Lbg;->a(Lbe$a;)Lbe;

    move-result-object v1

    .line 227
    iget-object p2, p0, Lbi;->L:Lbf;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lbi;->L:Lbf;

    iget-object p2, p2, Lbf;->K:[Lbf$a;

    aget-object p2, p2, v3

    sget-object v2, Lbf$a;->WRAP_CONTENT:Lbf$a;

    if-ne p2, v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v4

    .line 229
    :cond_3
    :goto_1
    iget-boolean p2, p0, Lbi;->aE:Z

    const/4 v3, -0x1

    const/4 v5, 0x5

    if-eqz p2, :cond_6

    iget-object p2, p0, Lbi;->aB:Lbe;

    invoke-virtual {p2}, Lbe;->f()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 230
    iget-object p2, p0, Lbi;->aB:Lbe;

    invoke-virtual {p1, p2}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object p2

    .line 234
    iget-object v6, p0, Lbi;->aB:Lbe;

    invoke-virtual {v6}, Lbe;->d()I

    move-result v6

    invoke-virtual {p1, p2, v6}, Laf;->a(Laj;I)V

    .line 235
    iget v6, p0, Lbi;->ay:I

    if-eq v6, v3, :cond_4

    if-eqz v2, :cond_5

    .line 237
    invoke-virtual {p1, v1}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v4, v5}, Laf;->a(Laj;Laj;II)V

    goto :goto_2

    .line 239
    :cond_4
    iget v6, p0, Lbi;->az:I

    if-eq v6, v3, :cond_5

    if-eqz v2, :cond_5

    .line 241
    invoke-virtual {p1, v1}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v1

    .line 242
    invoke-virtual {p1, v0}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v4, v5}, Laf;->a(Laj;Laj;II)V

    .line 243
    invoke-virtual {p1, v1, p2, v4, v5}, Laf;->a(Laj;Laj;II)V

    .line 246
    :cond_5
    :goto_2
    iput-boolean v4, p0, Lbi;->aE:Z

    return-void

    .line 249
    :cond_6
    iget p2, p0, Lbi;->ay:I

    const/16 v6, 0x8

    if-eq p2, v3, :cond_7

    .line 250
    iget-object p2, p0, Lbi;->aB:Lbe;

    invoke-virtual {p1, p2}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object p2

    .line 251
    invoke-virtual {p1, v0}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v0

    .line 252
    iget v3, p0, Lbi;->ay:I

    invoke-virtual {p1, p2, v0, v3, v6}, Laf;->c(Laj;Laj;II)Lad;

    if-eqz v2, :cond_9

    .line 254
    invoke-virtual {p1, v1}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v4, v5}, Laf;->a(Laj;Laj;II)V

    goto :goto_3

    .line 256
    :cond_7
    iget p2, p0, Lbi;->az:I

    if-eq p2, v3, :cond_8

    .line 257
    iget-object p2, p0, Lbi;->aB:Lbe;

    invoke-virtual {p1, p2}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object p2

    .line 258
    invoke-virtual {p1, v1}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v1

    .line 259
    iget v3, p0, Lbi;->az:I

    neg-int v3, v3

    invoke-virtual {p1, p2, v1, v3, v6}, Laf;->c(Laj;Laj;II)Lad;

    if-eqz v2, :cond_9

    .line 261
    invoke-virtual {p1, v0}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v4, v5}, Laf;->a(Laj;Laj;II)V

    .line 262
    invoke-virtual {p1, v1, p2, v4, v5}, Laf;->a(Laj;Laj;II)V

    goto :goto_3

    .line 264
    :cond_8
    iget p2, p0, Lbi;->a:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_9

    .line 265
    iget-object p2, p0, Lbi;->aB:Lbe;

    invoke-virtual {p1, p2}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object p2

    .line 266
    invoke-virtual {p1, v1}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v0

    .line 267
    iget v1, p0, Lbi;->a:F

    .line 268
    invoke-static {p1, p2, v0, v1}, Laf;->a(Laf;Laj;Laj;F)Lad;

    move-result-object p2

    .line 267
    invoke-virtual {p1, p2}, Laf;->a(Lad;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public a(Lbf;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbf;",
            "Ljava/util/HashMap<",
            "Lbf;",
            "Lbf;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-super {p0, p1, p2}, Lbf;->a(Lbf;Ljava/util/HashMap;)V

    .line 59
    check-cast p1, Lbi;

    .line 60
    iget p2, p1, Lbi;->a:F

    iput p2, p0, Lbi;->a:F

    .line 61
    iget p2, p1, Lbi;->ay:I

    iput p2, p0, Lbi;->ay:I

    .line 62
    iget p2, p1, Lbi;->az:I

    iput p2, p0, Lbi;->az:I

    .line 63
    iget-boolean p2, p1, Lbi;->aA:Z

    iput-boolean p2, p0, Lbi;->aA:Z

    .line 64
    iget p1, p1, Lbi;->aC:I

    invoke-virtual {p0, p1}, Lbi;->a(I)V

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()Lbe;
    .locals 1

    .line 104
    iget-object v0, p0, Lbi;->aB:Lbe;

    return-object v0
.end method

.method public b(I)V
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    .line 166
    iput v1, p0, Lbi;->a:F

    .line 167
    iput p1, p0, Lbi;->ay:I

    .line 168
    iput v0, p0, Lbi;->az:I

    :cond_0
    return-void
.end method

.method public b(Laf;Z)V
    .locals 2

    .line 275
    invoke-virtual {p0}, Lbi;->A()Lbf;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 278
    :cond_0
    iget-object p2, p0, Lbi;->aB:Lbe;

    invoke-virtual {p1, p2}, Laf;->b(Ljava/lang/Object;)I

    move-result p1

    .line 279
    iget p2, p0, Lbi;->aC:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    .line 280
    invoke-virtual {p0, p1}, Lbi;->o(I)V

    .line 281
    invoke-virtual {p0, v1}, Lbi;->p(I)V

    .line 282
    invoke-virtual {p0}, Lbi;->A()Lbf;

    move-result-object p1

    invoke-virtual {p1}, Lbf;->G()I

    move-result p1

    invoke-virtual {p0, p1}, Lbi;->r(I)V

    .line 283
    invoke-virtual {p0, v1}, Lbi;->q(I)V

    goto :goto_0

    .line 285
    :cond_1
    invoke-virtual {p0, v1}, Lbi;->o(I)V

    .line 286
    invoke-virtual {p0, p1}, Lbi;->p(I)V

    .line 287
    invoke-virtual {p0}, Lbi;->A()Lbf;

    move-result-object p1

    invoke-virtual {p1}, Lbf;->F()I

    move-result p1

    invoke-virtual {p0, p1}, Lbi;->q(I)V

    .line 288
    invoke-virtual {p0, v1}, Lbi;->r(I)V

    :goto_0
    return-void
.end method

.method public c()I
    .locals 1

    .line 118
    iget v0, p0, Lbi;->aC:I

    return v0
.end method

.method public d()Z
    .locals 1

    .line 201
    iget-boolean v0, p0, Lbi;->aE:Z

    return v0
.end method

.method public e(F)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 158
    iput p1, p0, Lbi;->a:F

    const/4 p1, -0x1

    .line 159
    iput p1, p0, Lbi;->ay:I

    .line 160
    iput p1, p0, Lbi;->az:I

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 205
    iget-boolean v0, p0, Lbi;->aE:Z

    return v0
.end method

.method public f()F
    .locals 1

    .line 181
    iget v0, p0, Lbi;->a:F

    return v0
.end method

.method public g()I
    .locals 1

    .line 185
    iget v0, p0, Lbi;->ay:I

    return v0
.end method

.method public h()I
    .locals 1

    .line 189
    iget v0, p0, Lbi;->az:I

    return v0
.end method

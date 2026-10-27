.class public Lkf;
.super Ljm;
.source "StrokeContent.java"


# instance fields
.field private final d:Lmq;

.field private final e:Ljava/lang/String;

.field private final f:Z

.field private final g:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/f;Lmq;Lmo;)V
    .locals 11

    .line 29
    invoke-virtual {p3}, Lmo;->g()Lmo$a;

    move-result-object v0

    invoke-virtual {v0}, Lmo$a;->a()Landroid/graphics/Paint$Cap;

    move-result-object v4

    .line 30
    invoke-virtual {p3}, Lmo;->h()Lmo$b;

    move-result-object v0

    invoke-virtual {v0}, Lmo$b;->a()Landroid/graphics/Paint$Join;

    move-result-object v5

    invoke-virtual {p3}, Lmo;->i()F

    move-result v6

    invoke-virtual {p3}, Lmo;->c()Llm;

    move-result-object v7

    .line 31
    invoke-virtual {p3}, Lmo;->d()Llk;

    move-result-object v8

    invoke-virtual {p3}, Lmo;->e()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p3}, Lmo;->f()Llk;

    move-result-object v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 29
    invoke-direct/range {v1 .. v10}, Ljm;-><init>(Lcom/airbnb/lottie/f;Lmq;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLlm;Llk;Ljava/util/List;Llk;)V

    .line 32
    iput-object p2, p0, Lkf;->d:Lmq;

    .line 33
    invoke-virtual {p3}, Lmo;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lkf;->e:Ljava/lang/String;

    .line 34
    invoke-virtual {p3}, Lmo;->j()Z

    move-result p1

    iput-boolean p1, p0, Lkf;->f:Z

    .line 35
    invoke-virtual {p3}, Lmo;->b()Llj;

    move-result-object p1

    invoke-virtual {p1}, Llj;->a()Lkh;

    move-result-object p1

    iput-object p1, p0, Lkf;->g:Lkh;

    .line 36
    iget-object p1, p0, Lkf;->g:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 37
    iget-object p1, p0, Lkf;->g:Lkh;

    invoke-virtual {p2, p1}, Lmq;->a(Lkh;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lkf;->e:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    .line 41
    iget-boolean v0, p0, Lkf;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lkf;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lkf;->g:Lkh;

    check-cast v1, Lki;

    invoke-virtual {v1}, Lki;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    iget-object v0, p0, Lkf;->h:Lkh;

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lkf;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lkf;->h:Lkh;

    invoke-virtual {v1}, Lkh;->g()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 48
    :cond_1
    invoke-super {p0, p1, p2, p3}, Ljm;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public a(Ljava/lang/Object;Lpe;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lpe<",
            "TT;>;)V"
        }
    .end annotation

    .line 58
    invoke-super {p0, p1, p2}, Ljm;->a(Ljava/lang/Object;Lpe;)V

    .line 59
    sget-object v0, Lcom/airbnb/lottie/k;->b:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    .line 60
    iget-object p1, p0, Lkf;->g:Lkh;

    invoke-virtual {p1, p2}, Lkh;->a(Lpe;)V

    goto :goto_0

    .line 61
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/k;->K:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_3

    .line 62
    iget-object p1, p0, Lkf;->h:Lkh;

    if-eqz p1, :cond_1

    .line 63
    iget-object v0, p0, Lkf;->d:Lmq;

    invoke-virtual {v0, p1}, Lmq;->b(Lkh;)V

    :cond_1
    if-nez p2, :cond_2

    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lkf;->h:Lkh;

    goto :goto_0

    .line 69
    :cond_2
    new-instance p1, Lkx;

    invoke-direct {p1, p2}, Lkx;-><init>(Lpe;)V

    iput-object p1, p0, Lkf;->h:Lkh;

    .line 71
    iget-object p1, p0, Lkf;->h:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 72
    iget-object p1, p0, Lkf;->d:Lmq;

    iget-object p2, p0, Lkf;->g:Lkh;

    invoke-virtual {p1, p2}, Lmq;->a(Lkh;)V

    :cond_3
    :goto_0
    return-void
.end method

.class Lkv$1;
.super Lpe;
.source "TextKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkv;->b(Lpe;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpe<",
        "Llb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lpd;

.field final synthetic b:Lpe;

.field final synthetic c:Llb;

.field final synthetic d:Lkv;


# direct methods
.method constructor <init>(Lkv;Lpd;Lpe;Llb;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lkv$1;->d:Lkv;

    iput-object p2, p0, Lkv$1;->a:Lpd;

    iput-object p3, p0, Lkv$1;->b:Lpe;

    iput-object p4, p0, Lkv$1;->c:Llb;

    invoke-direct {p0}, Lpe;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lpd;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lkv$1;->b(Lpd;)Llb;

    move-result-object p1

    return-object p1
.end method

.method public b(Lpd;)Llb;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpd<",
            "Llb;",
            ">;)",
            "Llb;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lkv$1;->a:Lpd;

    invoke-virtual {p1}, Lpd;->a()F

    move-result v1

    invoke-virtual {p1}, Lpd;->b()F

    move-result v2

    invoke-virtual {p1}, Lpd;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llb;

    iget-object v3, v3, Llb;->a:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Lpd;->d()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llb;

    iget-object v4, v4, Llb;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lpd;->e()F

    move-result v5

    invoke-virtual {p1}, Lpd;->f()F

    move-result v6

    .line 37
    invoke-virtual {p1}, Lpd;->g()F

    move-result v7

    .line 35
    invoke-virtual/range {v0 .. v7}, Lpd;->a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Lpd;

    .line 38
    iget-object v0, p0, Lkv$1;->b:Lpe;

    iget-object v1, p0, Lkv$1;->a:Lpd;

    invoke-virtual {v0, v1}, Lpe;->a(Lpd;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lpd;->f()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lpd;->d()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lpd;->c()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Llb;

    .line 40
    iget-object v1, p0, Lkv$1;->c:Llb;

    iget-object v3, p1, Llb;->b:Ljava/lang/String;

    iget v4, p1, Llb;->c:F

    iget-object v5, p1, Llb;->d:Llb$a;

    iget v6, p1, Llb;->e:I

    iget v7, p1, Llb;->f:F

    iget v8, p1, Llb;->g:F

    iget v9, p1, Llb;->h:I

    iget v10, p1, Llb;->i:I

    iget v11, p1, Llb;->j:F

    iget-boolean v12, p1, Llb;->k:Z

    invoke-virtual/range {v1 .. v12}, Llb;->a(Ljava/lang/String;Ljava/lang/String;FLlb$a;IFFIIFZ)V

    .line 43
    iget-object p1, p0, Lkv$1;->c:Llb;

    return-object p1
.end method

.class public Lcom/xiaopeng/musicradio/program/a;
.super Lbtx;
.source "ProgramChoiceLayoutPreload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/program/a$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lbtx;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/xiaopeng/musicradio/program/a;->a:I

    .line 14
    iput v0, p0, Lcom/xiaopeng/musicradio/program/a;->b:I

    return-void
.end method

.method public static a()Lcom/xiaopeng/musicradio/program/a;
    .locals 1

    .line 21
    sget-object v0, Lcom/xiaopeng/musicradio/program/a$a;->a:Lcom/xiaopeng/musicradio/program/a;

    return-object v0
.end method

.method private e()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/a;->p:Ljava/util/List;

    sget v1, Lcom/xiaopeng/musicradio/program/b$f;->fragment_program_choice:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/a;->p:Ljava/util/List;

    sget v1, Lcom/xiaopeng/musicradio/program/b$f;->layout_banner_binder:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/a;->p:Ljava/util/List;

    sget v1, Lcom/xiaopeng/musicradio/program/b$f;->layout_guess_like_binder:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private f()V
    .locals 3

    const/4 v0, 0x0

    .line 56
    :goto_0
    iget v1, p0, Lcom/xiaopeng/musicradio/program/a;->a:I

    if-ge v0, v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/a;->p:Ljava/util/List;

    sget v2, Lcom/xiaopeng/musicradio/program/b$f;->layout_rank_title_binder:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private g()V
    .locals 3

    const/4 v0, 0x0

    .line 62
    :goto_0
    iget v1, p0, Lcom/xiaopeng/musicradio/program/a;->b:I

    if-ge v0, v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/a;->p:Ljava/util/List;

    sget v2, Lcom/xiaopeng/musicradio/program/b$f;->layout_rank_binder:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/a;->p:Ljava/util/List;

    sget v1, Lcom/xiaopeng/musicradio/program/b$f;->layout_rank_binder:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/xiaopeng/musicradio/program/a;->a:I

    .line 43
    iput p2, p0, Lcom/xiaopeng/musicradio/program/a;->b:I

    .line 44
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/a;->e()V

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/a;->f()V

    .line 46
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/a;->g()V

    return-void
.end method

.method protected b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public d()V
    .locals 3

    .line 32
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/a;->q()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/a;->p:Ljava/util/List;

    sget v2, Lcom/xiaopeng/musicradio/program/b$f;->item_guess_like:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/a;->p:Ljava/util/List;

    sget v1, Lcom/xiaopeng/musicradio/program/b$f;->layout_banner_binder:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/a;->p:Ljava/util/List;

    sget v1, Lcom/xiaopeng/musicradio/program/b$f;->layout_guess_like_binder:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/ae;->a()Lcom/xiaopeng/musicradio/utils/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/a;->o:Lcom/xiaopeng/musicradio/commonui/base/b;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/a;->p:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/utils/ae;->b(Landroid/view/LayoutInflater;Ljava/util/List;)V

    return-void
.end method

.class public Lmb;
.super Ljava/lang/Object;
.source "GradientFill.java"

# interfaces
.implements Llz;


# instance fields
.field private final a:Lmd;

.field private final b:Landroid/graphics/Path$FillType;

.field private final c:Lll;

.field private final d:Llm;

.field private final e:Llo;

.field private final f:Llo;

.field private final g:Ljava/lang/String;

.field private final h:Llk;

.field private final i:Llk;

.field private final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmd;Landroid/graphics/Path$FillType;Lll;Llm;Llo;Llo;Llk;Llk;Z)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lmb;->a:Lmd;

    .line 35
    iput-object p3, p0, Lmb;->b:Landroid/graphics/Path$FillType;

    .line 36
    iput-object p4, p0, Lmb;->c:Lll;

    .line 37
    iput-object p5, p0, Lmb;->d:Llm;

    .line 38
    iput-object p6, p0, Lmb;->e:Llo;

    .line 39
    iput-object p7, p0, Lmb;->f:Llo;

    .line 40
    iput-object p1, p0, Lmb;->g:Ljava/lang/String;

    .line 41
    iput-object p8, p0, Lmb;->h:Llk;

    .line 42
    iput-object p9, p0, Lmb;->i:Llk;

    .line 43
    iput-boolean p10, p0, Lmb;->j:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lmb;->g:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/airbnb/lottie/f;Lmq;)Ljo;
    .locals 1

    .line 79
    new-instance v0, Ljt;

    invoke-direct {v0, p1, p2, p0}, Ljt;-><init>(Lcom/airbnb/lottie/f;Lmq;Lmb;)V

    return-object v0
.end method

.method public b()Lmd;
    .locals 1

    .line 51
    iget-object v0, p0, Lmb;->a:Lmd;

    return-object v0
.end method

.method public c()Landroid/graphics/Path$FillType;
    .locals 1

    .line 55
    iget-object v0, p0, Lmb;->b:Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method public d()Lll;
    .locals 1

    .line 59
    iget-object v0, p0, Lmb;->c:Lll;

    return-object v0
.end method

.method public e()Llm;
    .locals 1

    .line 63
    iget-object v0, p0, Lmb;->d:Llm;

    return-object v0
.end method

.method public f()Llo;
    .locals 1

    .line 67
    iget-object v0, p0, Lmb;->e:Llo;

    return-object v0
.end method

.method public g()Llo;
    .locals 1

    .line 71
    iget-object v0, p0, Lmb;->f:Llo;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lmb;->j:Z

    return v0
.end method

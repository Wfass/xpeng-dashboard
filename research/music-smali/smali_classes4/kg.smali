.class public Lkg;
.super Ljava/lang/Object;
.source "TrimPathContent.java"

# interfaces
.implements Ljo;
.implements Lkh$a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkh$a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lmp$a;

.field private final e:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmq;Lmp;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkg;->c:Ljava/util/List;

    .line 21
    invoke-virtual {p2}, Lmp;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkg;->a:Ljava/lang/String;

    .line 22
    invoke-virtual {p2}, Lmp;->f()Z

    move-result v0

    iput-boolean v0, p0, Lkg;->b:Z

    .line 23
    invoke-virtual {p2}, Lmp;->b()Lmp$a;

    move-result-object v0

    iput-object v0, p0, Lkg;->d:Lmp$a;

    .line 24
    invoke-virtual {p2}, Lmp;->d()Llk;

    move-result-object v0

    invoke-virtual {v0}, Llk;->a()Lkh;

    move-result-object v0

    iput-object v0, p0, Lkg;->e:Lkh;

    .line 25
    invoke-virtual {p2}, Lmp;->c()Llk;

    move-result-object v0

    invoke-virtual {v0}, Llk;->a()Lkh;

    move-result-object v0

    iput-object v0, p0, Lkg;->f:Lkh;

    .line 26
    invoke-virtual {p2}, Lmp;->e()Llk;

    move-result-object p2

    invoke-virtual {p2}, Llk;->a()Lkh;

    move-result-object p2

    iput-object p2, p0, Lkg;->g:Lkh;

    .line 28
    iget-object p2, p0, Lkg;->e:Lkh;

    invoke-virtual {p1, p2}, Lmq;->a(Lkh;)V

    .line 29
    iget-object p2, p0, Lkg;->f:Lkh;

    invoke-virtual {p1, p2}, Lmq;->a(Lkh;)V

    .line 30
    iget-object p2, p0, Lkg;->g:Lkh;

    invoke-virtual {p1, p2}, Lmq;->a(Lkh;)V

    .line 32
    iget-object p1, p0, Lkg;->e:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 33
    iget-object p1, p0, Lkg;->f:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 34
    iget-object p1, p0, Lkg;->g:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lkg;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljo;",
            ">;",
            "Ljava/util/List<",
            "Ljo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method a(Lkh$a;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lkg;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method b()Lmp$a;
    .locals 1

    .line 56
    iget-object v0, p0, Lkg;->d:Lmp$a;

    return-object v0
.end method

.method public c()Lkh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkh<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lkg;->e:Lkh;

    return-object v0
.end method

.method public d()Lkh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkh<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lkg;->f:Lkh;

    return-object v0
.end method

.method public e()Lkh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkh<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lkg;->g:Lkh;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lkg;->b:Z

    return v0
.end method

.method public onValueChanged()V
    .locals 2

    const/4 v0, 0x0

    .line 38
    :goto_0
    iget-object v1, p0, Lkg;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 39
    iget-object v1, p0, Lkg;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkh$a;

    invoke-interface {v1}, Lkh$a;->onValueChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

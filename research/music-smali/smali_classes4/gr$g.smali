.class Lgr$g;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# static fields
.field static final a:Lgr;


# instance fields
.field final b:Lgr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 746
    new-instance v0, Lgr$b;

    invoke-direct {v0}, Lgr$b;-><init>()V

    .line 747
    invoke-virtual {v0}, Lgr$b;->a()Lgr;

    move-result-object v0

    .line 748
    invoke-virtual {v0}, Lgr;->j()Lgr;

    move-result-object v0

    .line 749
    invoke-virtual {v0}, Lgr;->h()Lgr;

    move-result-object v0

    .line 750
    invoke-virtual {v0}, Lgr;->g()Lgr;

    move-result-object v0

    sput-object v0, Lgr$g;->a:Lgr;

    return-void
.end method

.method constructor <init>(Lgr;)V
    .locals 0

    .line 754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    iput-object p1, p0, Lgr$g;->b:Lgr;

    return-void
.end method


# virtual methods
.method a(I)Ldv;
    .locals 0

    .line 821
    sget-object p1, Ldv;->a:Ldv;

    return-object p1
.end method

.method a(IIII)Lgr;
    .locals 0

    .line 816
    sget-object p1, Lgr$g;->a:Lgr;

    return-object p1
.end method

.method a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method a(Ldv;)V
    .locals 0

    return-void
.end method

.method a(Lgr;)V
    .locals 0

    return-void
.end method

.method public a([Ldv;)V
    .locals 0

    return-void
.end method

.method a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Ldv;)V
    .locals 0

    return-void
.end method

.method b(Lgr;)V
    .locals 0

    return-void
.end method

.method b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method c()Lgr;
    .locals 1

    .line 768
    iget-object v0, p0, Lgr$g;->b:Lgr;

    return-object v0
.end method

.method d()Lgr;
    .locals 1

    .line 773
    iget-object v0, p0, Lgr$g;->b:Lgr;

    return-object v0
.end method

.method e()Lfk;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 840
    :cond_0
    instance-of v1, p1, Lgr$g;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 841
    :cond_1
    check-cast p1, Lgr$g;

    .line 842
    invoke-virtual {p0}, Lgr$g;->a()Z

    move-result v1

    invoke-virtual {p1}, Lgr$g;->a()Z

    move-result v3

    if-ne v1, v3, :cond_2

    .line 843
    invoke-virtual {p0}, Lgr$g;->b()Z

    move-result v1

    invoke-virtual {p1}, Lgr$g;->b()Z

    move-result v3

    if-ne v1, v3, :cond_2

    .line 844
    invoke-virtual {p0}, Lgr$g;->g()Ldv;

    move-result-object v1

    invoke-virtual {p1}, Lgr$g;->g()Ldv;

    move-result-object v3

    invoke-static {v1, v3}, Lfd;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 845
    invoke-virtual {p0}, Lgr$g;->h()Ldv;

    move-result-object v1

    invoke-virtual {p1}, Lgr$g;->h()Ldv;

    move-result-object v3

    invoke-static {v1, v3}, Lfd;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 846
    invoke-virtual {p0}, Lgr$g;->e()Lfk;

    move-result-object v1

    invoke-virtual {p1}, Lgr$g;->e()Lfk;

    move-result-object p1

    invoke-static {v1, p1}, Lfd;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method f()Lgr;
    .locals 1

    .line 783
    iget-object v0, p0, Lgr$g;->b:Lgr;

    return-object v0
.end method

.method g()Ldv;
    .locals 1

    .line 788
    sget-object v0, Ldv;->a:Ldv;

    return-object v0
.end method

.method h()Ldv;
    .locals 1

    .line 793
    sget-object v0, Ldv;->a:Ldv;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    .line 852
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lgr$g;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lgr$g;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lgr$g;->g()Ldv;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 853
    invoke-virtual {p0}, Lgr$g;->h()Ldv;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lgr$g;->e()Lfk;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 852
    invoke-static {v0}, Lfd;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method i()Ldv;
    .locals 1

    .line 799
    invoke-virtual {p0}, Lgr$g;->g()Ldv;

    move-result-object v0

    return-object v0
.end method

.method j()Ldv;
    .locals 1

    .line 805
    invoke-virtual {p0}, Lgr$g;->g()Ldv;

    move-result-object v0

    return-object v0
.end method

.method k()Ldv;
    .locals 1

    .line 811
    invoke-virtual {p0}, Lgr$g;->g()Ldv;

    move-result-object v0

    return-object v0
.end method

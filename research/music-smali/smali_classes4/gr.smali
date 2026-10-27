.class public Lgr;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgr$a;,
        Lgr$n;,
        Lgr$m;,
        Lgr$f;,
        Lgr$e;,
        Lgr$d;,
        Lgr$c;,
        Lgr$b;,
        Lgr$l;,
        Lgr$k;,
        Lgr$j;,
        Lgr$i;,
        Lgr$h;,
        Lgr$g;
    }
.end annotation


# static fields
.field public static final a:Lgr;


# instance fields
.field private final b:Lgr$g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 79
    sget-object v0, Lgr$l;->e:Lgr;

    sput-object v0, Lgr;->a:Lgr;

    goto :goto_0

    .line 81
    :cond_0
    sget-object v0, Lgr$g;->a:Lgr;

    sput-object v0, Lgr;->a:Lgr;

    :goto_0
    return-void
.end method

.method private constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 90
    new-instance v0, Lgr$l;

    invoke-direct {v0, p0, p1}, Lgr$l;-><init>(Lgr;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lgr;->b:Lgr$g;

    goto :goto_0

    .line 91
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 92
    new-instance v0, Lgr$k;

    invoke-direct {v0, p0, p1}, Lgr$k;-><init>(Lgr;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lgr;->b:Lgr$g;

    goto :goto_0

    .line 93
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    .line 94
    new-instance v0, Lgr$j;

    invoke-direct {v0, p0, p1}, Lgr$j;-><init>(Lgr;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lgr;->b:Lgr$g;

    goto :goto_0

    .line 95
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 96
    new-instance v0, Lgr$i;

    invoke-direct {v0, p0, p1}, Lgr$i;-><init>(Lgr;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lgr;->b:Lgr$g;

    goto :goto_0

    .line 97
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_4

    .line 98
    new-instance v0, Lgr$h;

    invoke-direct {v0, p0, p1}, Lgr$h;-><init>(Lgr;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lgr;->b:Lgr$g;

    goto :goto_0

    .line 100
    :cond_4
    new-instance p1, Lgr$g;

    invoke-direct {p1, p0}, Lgr$g;-><init>(Lgr;)V

    iput-object p1, p0, Lgr;->b:Lgr$g;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lgr;)V
    .locals 2

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_5

    .line 112
    iget-object p1, p1, Lgr;->b:Lgr$g;

    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    instance-of v0, p1, Lgr$l;

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Lgr$l;

    move-object v1, p1

    check-cast v1, Lgr$l;

    invoke-direct {v0, p0, v1}, Lgr$l;-><init>(Lgr;Lgr$l;)V

    iput-object v0, p0, Lgr;->b:Lgr$g;

    goto :goto_0

    .line 115
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    instance-of v0, p1, Lgr$k;

    if-eqz v0, :cond_1

    .line 116
    new-instance v0, Lgr$k;

    move-object v1, p1

    check-cast v1, Lgr$k;

    invoke-direct {v0, p0, v1}, Lgr$k;-><init>(Lgr;Lgr$k;)V

    iput-object v0, p0, Lgr;->b:Lgr$g;

    goto :goto_0

    .line 117
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    instance-of v0, p1, Lgr$j;

    if-eqz v0, :cond_2

    .line 118
    new-instance v0, Lgr$j;

    move-object v1, p1

    check-cast v1, Lgr$j;

    invoke-direct {v0, p0, v1}, Lgr$j;-><init>(Lgr;Lgr$j;)V

    iput-object v0, p0, Lgr;->b:Lgr$g;

    goto :goto_0

    .line 119
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    instance-of v0, p1, Lgr$i;

    if-eqz v0, :cond_3

    .line 120
    new-instance v0, Lgr$i;

    move-object v1, p1

    check-cast v1, Lgr$i;

    invoke-direct {v0, p0, v1}, Lgr$i;-><init>(Lgr;Lgr$i;)V

    iput-object v0, p0, Lgr;->b:Lgr$g;

    goto :goto_0

    .line 121
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_4

    instance-of v0, p1, Lgr$h;

    if-eqz v0, :cond_4

    .line 122
    new-instance v0, Lgr$h;

    move-object v1, p1

    check-cast v1, Lgr$h;

    invoke-direct {v0, p0, v1}, Lgr$h;-><init>(Lgr;Lgr$h;)V

    iput-object v0, p0, Lgr;->b:Lgr$g;

    goto :goto_0

    .line 124
    :cond_4
    new-instance v0, Lgr$g;

    invoke-direct {v0, p0}, Lgr$g;-><init>(Lgr;)V

    iput-object v0, p0, Lgr;->b:Lgr$g;

    .line 126
    :goto_0
    invoke-virtual {p1, p0}, Lgr$g;->b(Lgr;)V

    goto :goto_1

    .line 129
    :cond_5
    new-instance p1, Lgr$g;

    invoke-direct {p1, p0}, Lgr$g;-><init>(Lgr;)V

    iput-object p1, p0, Lgr;->b:Lgr$g;

    :goto_1
    return-void
.end method

.method static a(Ldv;IIII)Ldv;
    .locals 5

    .line 1334
    iget v0, p0, Ldv;->b:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1335
    iget v2, p0, Ldv;->c:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1336
    iget v3, p0, Ldv;->d:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1337
    iget v4, p0, Ldv;->e:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v2, p2, :cond_0

    if-ne v3, p3, :cond_0

    if-ne v1, p4, :cond_0

    return-object p0

    .line 1341
    :cond_0
    invoke-static {v0, v2, v3, v1}, Ldv;->a(IIII)Ldv;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/WindowInsets;)Lgr;
    .locals 1

    const/4 v0, 0x0

    .line 148
    invoke-static {p0, v0}, Lgr;->a(Landroid/view/WindowInsets;Landroid/view/View;)Lgr;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/WindowInsets;Landroid/view/View;)Lgr;
    .locals 1

    .line 168
    new-instance v0, Lgr;

    invoke-static {p0}, Lfg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Lgr;-><init>(Landroid/view/WindowInsets;)V

    if-eqz p1, :cond_0

    .line 169
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 171
    invoke-static {p1}, Lgj;->t(Landroid/view/View;)Lgr;

    move-result-object p0

    invoke-virtual {v0, p0}, Lgr;->a(Lgr;)V

    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Lgr;->a(Landroid/view/View;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 191
    iget-object v0, p0, Lgr;->b:Lgr$g;

    invoke-virtual {v0}, Lgr$g;->g()Ldv;

    move-result-object v0

    iget v0, v0, Ldv;->b:I

    return v0
.end method

.method public a(I)Ldv;
    .locals 1

    .line 668
    iget-object v0, p0, Lgr;->b:Lgr$g;

    invoke-virtual {v0, p1}, Lgr$g;->a(I)Ldv;

    move-result-object p1

    return-object p1
.end method

.method public a(IIII)Lgr;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 340
    new-instance v0, Lgr$b;

    invoke-direct {v0, p0}, Lgr$b;-><init>(Lgr;)V

    .line 341
    invoke-static {p1, p2, p3, p4}, Ldv;->a(IIII)Ldv;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgr$b;->a(Ldv;)Lgr$b;

    move-result-object p1

    .line 342
    invoke-virtual {p1}, Lgr$b;->a()Lgr;

    move-result-object p1

    return-object p1
.end method

.method a(Landroid/view/View;)V
    .locals 1

    .line 2111
    iget-object v0, p0, Lgr;->b:Lgr$g;

    invoke-virtual {v0, p1}, Lgr$g;->a(Landroid/view/View;)V

    return-void
.end method

.method a(Ldv;)V
    .locals 1

    .line 1801
    iget-object v0, p0, Lgr;->b:Lgr$g;

    invoke-virtual {v0, p1}, Lgr$g;->b(Ldv;)V

    return-void
.end method

.method a(Lgr;)V
    .locals 1

    .line 2103
    iget-object v0, p0, Lgr;->b:Lgr$g;

    invoke-virtual {v0, p1}, Lgr$g;->a(Lgr;)V

    return-void
.end method

.method a([Ldv;)V
    .locals 1

    .line 1703
    iget-object v0, p0, Lgr;->b:Lgr$g;

    invoke-virtual {v0, p1}, Lgr$g;->a([Ldv;)V

    return-void
.end method

.method public b()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 207
    iget-object v0, p0, Lgr;->b:Lgr$g;

    invoke-virtual {v0}, Lgr$g;->g()Ldv;

    move-result-object v0

    iget v0, v0, Ldv;->c:I

    return v0
.end method

.method public b(IIII)Lgr;
    .locals 1

    .line 651
    iget-object v0, p0, Lgr;->b:Lgr$g;

    invoke-virtual {v0, p1, p2, p3, p4}, Lgr$g;->a(IIII)Lgr;

    move-result-object p1

    return-object p1
.end method

.method b(Ldv;)V
    .locals 1

    .line 2107
    iget-object v0, p0, Lgr;->b:Lgr$g;

    invoke-virtual {v0, p1}, Lgr$g;->a(Ldv;)V

    return-void
.end method

.method public c()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 223
    iget-object v0, p0, Lgr;->b:Lgr$g;

    invoke-virtual {v0}, Lgr$g;->g()Ldv;

    move-result-object v0

    iget v0, v0, Ldv;->d:I

    return v0
.end method

.method public d()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 239
    iget-object v0, p0, Lgr;->b:Lgr$g;

    invoke-virtual {v0}, Lgr$g;->g()Ldv;

    move-result-object v0

    iget v0, v0, Ldv;->e:I

    return v0
.end method

.method public e()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 256
    iget-object v0, p0, Lgr;->b:Lgr$g;

    invoke-virtual {v0}, Lgr$g;->g()Ldv;

    move-result-object v0

    sget-object v1, Ldv;->a:Ldv;

    invoke-virtual {v0, v1}, Ldv;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 721
    :cond_0
    instance-of v0, p1, Lgr;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 724
    :cond_1
    check-cast p1, Lgr;

    .line 725
    iget-object v0, p0, Lgr;->b:Lgr$g;

    iget-object p1, p1, Lgr;->b:Lgr$g;

    invoke-static {v0, p1}, Lfd;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()Z
    .locals 1

    .line 286
    iget-object v0, p0, Lgr;->b:Lgr$g;

    invoke-virtual {v0}, Lgr$g;->b()Z

    move-result v0

    return v0
.end method

.method public g()Lgr;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 319
    iget-object v0, p0, Lgr;->b:Lgr$g;

    invoke-virtual {v0}, Lgr$g;->c()Lgr;

    move-result-object v0

    return-object v0
.end method

.method public h()Lgr;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 477
    iget-object v0, p0, Lgr;->b:Lgr$g;

    invoke-virtual {v0}, Lgr$g;->d()Lgr;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 730
    iget-object v0, p0, Lgr;->b:Lgr$g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lgr$g;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public i()Lfk;
    .locals 1

    .line 490
    iget-object v0, p0, Lgr;->b:Lgr$g;

    invoke-virtual {v0}, Lgr$g;->e()Lfk;

    move-result-object v0

    return-object v0
.end method

.method public j()Lgr;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 506
    iget-object v0, p0, Lgr;->b:Lgr$g;

    invoke-virtual {v0}, Lgr$g;->f()Lgr;

    move-result-object v0

    return-object v0
.end method

.method public k()Ldv;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 549
    iget-object v0, p0, Lgr;->b:Lgr$g;

    invoke-virtual {v0}, Lgr$g;->h()Ldv;

    move-result-object v0

    return-object v0
.end method

.method public l()Ldv;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 566
    iget-object v0, p0, Lgr;->b:Lgr$g;

    invoke-virtual {v0}, Lgr$g;->j()Ldv;

    move-result-object v0

    return-object v0
.end method

.method public m()Ldv;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 606
    iget-object v0, p0, Lgr;->b:Lgr$g;

    invoke-virtual {v0}, Lgr$g;->i()Ldv;

    move-result-object v0

    return-object v0
.end method

.method public n()Landroid/view/WindowInsets;
    .locals 2

    .line 741
    iget-object v0, p0, Lgr;->b:Lgr$g;

    instance-of v1, v0, Lgr$h;

    if-eqz v1, :cond_0

    check-cast v0, Lgr$h;

    iget-object v0, v0, Lgr$h;->c:Landroid/view/WindowInsets;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

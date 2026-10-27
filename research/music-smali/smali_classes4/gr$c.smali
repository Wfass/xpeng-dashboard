.class Lgr$c;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field a:[Ldv;

.field private final b:Lgr;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1620
    new-instance v0, Lgr;

    const/4 v1, 0x0

    check-cast v1, Lgr;

    invoke-direct {v0, v1}, Lgr;-><init>(Lgr;)V

    invoke-direct {p0, v0}, Lgr$c;-><init>(Lgr;)V

    return-void
.end method

.method constructor <init>(Lgr;)V
    .locals 0

    .line 1623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1624
    iput-object p1, p0, Lgr$c;->b:Lgr;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 5

    .line 1669
    iget-object v0, p0, Lgr$c;->a:[Ldv;

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .line 1670
    invoke-static {v1}, Lgr$m;->a(I)I

    move-result v2

    aget-object v0, v0, v2

    .line 1671
    iget-object v2, p0, Lgr$c;->a:[Ldv;

    const/4 v3, 0x2

    invoke-static {v3}, Lgr$m;->a(I)I

    move-result v4

    aget-object v2, v2, v4

    if-nez v2, :cond_0

    .line 1676
    iget-object v2, p0, Lgr$c;->b:Lgr;

    invoke-virtual {v2, v3}, Lgr;->a(I)Ldv;

    move-result-object v2

    :cond_0
    if-nez v0, :cond_1

    .line 1679
    iget-object v0, p0, Lgr$c;->b:Lgr;

    invoke-virtual {v0, v1}, Lgr;->a(I)Ldv;

    move-result-object v0

    .line 1682
    :cond_1
    invoke-static {v0, v2}, Ldv;->a(Ldv;Ldv;)Ldv;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgr$c;->a(Ldv;)V

    .line 1684
    iget-object v0, p0, Lgr$c;->a:[Ldv;

    const/16 v1, 0x10

    invoke-static {v1}, Lgr$m;->a(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    .line 1685
    invoke-virtual {p0, v0}, Lgr$c;->b(Ldv;)V

    .line 1687
    :cond_2
    iget-object v0, p0, Lgr$c;->a:[Ldv;

    const/16 v1, 0x20

    invoke-static {v1}, Lgr$m;->a(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    .line 1688
    invoke-virtual {p0, v0}, Lgr$c;->c(Ldv;)V

    .line 1690
    :cond_3
    iget-object v0, p0, Lgr$c;->a:[Ldv;

    const/16 v1, 0x40

    invoke-static {v1}, Lgr$m;->a(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    .line 1691
    invoke-virtual {p0, v0}, Lgr$c;->d(Ldv;)V

    :cond_4
    return-void
.end method

.method a(Ldv;)V
    .locals 0

    return-void
.end method

.method b()Lgr;
    .locals 1

    .line 1697
    invoke-virtual {p0}, Lgr$c;->a()V

    .line 1698
    iget-object v0, p0, Lgr$c;->b:Lgr;

    return-object v0
.end method

.method b(Ldv;)V
    .locals 0

    return-void
.end method

.method c(Ldv;)V
    .locals 0

    return-void
.end method

.method d(Ldv;)V
    .locals 0

    return-void
.end method

.method e(Ldv;)V
    .locals 0

    return-void
.end method

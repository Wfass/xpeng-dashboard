.class public Lbdm;
.super Ljava/lang/Object;
.source "AuthModel.java"

# interfaces
.implements Lbeg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbdm$b;,
        Lbdm$a;
    }
.end annotation


# instance fields
.field private a:Lbeg;

.field private b:Lbel;

.field private c:Lbej;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lbep;

    invoke-direct {v0}, Lbep;-><init>()V

    iput-object v0, p0, Lbdm;->a:Lbeg;

    .line 34
    new-instance v0, Lbel;

    invoke-direct {v0}, Lbel;-><init>()V

    iput-object v0, p0, Lbdm;->b:Lbel;

    .line 35
    new-instance v0, Lbej;

    invoke-direct {v0}, Lbej;-><init>()V

    iput-object v0, p0, Lbdm;->c:Lbej;

    return-void
.end method

.method synthetic constructor <init>(Lbdm$1;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lbdm;-><init>()V

    return-void
.end method

.method public static a()Lbdm;
    .locals 1

    .line 25
    invoke-static {}, Lbdm$a;->a()Lbdm;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)Lbeg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lbeg;",
            ">(I)TT;"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 44
    iget-object p1, p0, Lbdm;->b:Lbel;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 46
    iget-object p1, p0, Lbdm;->a:Lbeg;

    return-object p1

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 48
    iget-object p1, p0, Lbdm;->c:Lbej;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lbdm$b;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lbdm;->a:Lbeg;

    invoke-interface {v0, p1}, Lbeg;->a(Lbdm$b;)V

    return-void
.end method

.method public b()Lbeg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lbeg;",
            ">()TT;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lbdm;->a:Lbeg;

    return-object v0
.end method

.method public b(Lbdm$b;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lbdm;->a:Lbeg;

    invoke-interface {v0, p1}, Lbeg;->b(Lbdm$b;)V

    return-void
.end method

.method public c()Lbeg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lbeg;",
            ">()TT;"
        }
    .end annotation

    .line 54
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lbdm;->a(I)Lbeg;

    move-result-object v0

    return-object v0
.end method

.method public d()Lbel;
    .locals 1

    const/4 v0, 0x2

    .line 58
    invoke-virtual {p0, v0}, Lbdm;->a(I)Lbeg;

    move-result-object v0

    check-cast v0, Lbel;

    return-object v0
.end method

.method public e()Lbej;
    .locals 1

    const/4 v0, 0x4

    .line 62
    invoke-virtual {p0, v0}, Lbdm;->a(I)Lbeg;

    move-result-object v0

    check-cast v0, Lbej;

    return-object v0
.end method

.method public f()V
    .locals 1

    .line 69
    iget-object v0, p0, Lbdm;->a:Lbeg;

    invoke-interface {v0}, Lbeg;->f()V

    return-void
.end method

.method public g()Z
    .locals 1

    .line 82
    iget-object v0, p0, Lbdm;->a:Lbeg;

    invoke-interface {v0}, Lbeg;->g()Z

    move-result v0

    return v0
.end method

.method public h()V
    .locals 1

    .line 111
    iget-object v0, p0, Lbdm;->a:Lbeg;

    invoke-interface {v0}, Lbeg;->h()V

    return-void
.end method

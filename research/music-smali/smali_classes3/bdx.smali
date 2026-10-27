.class public Lbdx;
.super Ljava/lang/Object;
.source "ReadingAuthModel.java"

# interfaces
.implements Lbeh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbdx$a;
    }
.end annotation


# instance fields
.field private a:Lbeh;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lbei;

    invoke-direct {v0}, Lbei;-><init>()V

    iput-object v0, p0, Lbdx;->a:Lbeh;

    return-void
.end method

.method synthetic constructor <init>(Lbdx$1;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lbdx;-><init>()V

    return-void
.end method

.method public static a()Lbdx;
    .locals 1

    .line 19
    invoke-static {}, Lbdx$a;->a()Lbdx;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lbdo;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lbdx;->a:Lbeh;

    invoke-interface {v0, p1}, Lbeh;->a(Lbdo;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lbdx;->a:Lbeh;

    invoke-interface {v0, p1}, Lbeh;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 1

    .line 71
    iget-object v0, p0, Lbdx;->a:Lbeh;

    invoke-interface {v0, p1, p2, p3}, Lbeh;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public b()Lbeh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lbeh;",
            ">()TT;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lbdx;->a:Lbeh;

    return-object v0
.end method

.method public c()V
    .locals 1

    .line 36
    iget-object v0, p0, Lbdx;->a:Lbeh;

    invoke-interface {v0}, Lbeh;->c()V

    return-void
.end method

.method public d()V
    .locals 1

    .line 46
    iget-object v0, p0, Lbdx;->a:Lbeh;

    invoke-interface {v0}, Lbeh;->d()V

    return-void
.end method

.method public e()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lbdx;->a:Lbeh;

    invoke-interface {v0}, Lbeh;->e()Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lbdx;->a:Lbeh;

    invoke-interface {v0}, Lbeh;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lbdx;->a:Lbeh;

    invoke-interface {v0}, Lbeh;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

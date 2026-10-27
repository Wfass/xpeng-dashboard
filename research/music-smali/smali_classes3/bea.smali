.class public Lbea;
.super Ljava/lang/Object;
.source "UidOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbea$a;
    }
.end annotation


# instance fields
.field private a:Lbdn;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lbdn;

    invoke-direct {v0}, Lbdn;-><init>()V

    iput-object v0, p0, Lbea;->a:Lbdn;

    return-void
.end method

.method public static a()Lbea;
    .locals 1

    .line 12
    sget-object v0, Lbea$a;->a:Lbea;

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lbea;->a:Lbdn;

    invoke-virtual {v0, p1}, Lbdn;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 20
    iget-object v0, p0, Lbea;->a:Lbdn;

    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v1

    invoke-virtual {v1}, Lbdu;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lbdn;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lbea;->a:Lbdn;

    invoke-virtual {v0}, Lbdn;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 28
    iget-object v0, p0, Lbea;->a:Lbdn;

    invoke-virtual {v0}, Lbdn;->l()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    .line 32
    iget-object v0, p0, Lbea;->a:Lbdn;

    invoke-virtual {v0}, Lbdn;->m()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    .line 36
    iget-object v0, p0, Lbea;->a:Lbdn;

    invoke-virtual {v0}, Lbdn;->n()Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    .line 40
    iget-object v0, p0, Lbea;->a:Lbdn;

    invoke-virtual {v0}, Lbdn;->o()Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1

    .line 56
    iget-object v0, p0, Lbea;->a:Lbdn;

    invoke-virtual {v0}, Lbdn;->p()Z

    move-result v0

    return v0
.end method

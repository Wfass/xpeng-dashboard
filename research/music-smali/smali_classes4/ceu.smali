.class public Lceu;
.super Ljava/lang/Object;
.source "MqttToken.java"

# interfaces
.implements Lceh;


# instance fields
.field public a:Lcfn;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lceu;->a:Lcfn;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lceu;->a:Lcfn;

    .line 43
    new-instance v0, Lcfn;

    invoke-direct {v0, p1}, Lcfn;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lceu;->a:Lcfn;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .line 67
    iget-object v0, p0, Lceu;->a:Lcfn;

    invoke-virtual {v0, p1, p2}, Lcfn;->a(J)V

    return-void
.end method

.method public a(Lced;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lceu;->a:Lcfn;

    invoke-virtual {v0, p1}, Lcfn;->a(Lced;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lceu;->a:Lcfn;

    invoke-virtual {v0, p1}, Lcfn;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b()Lceo;
    .locals 1

    .line 47
    iget-object v0, p0, Lceu;->a:Lcfn;

    invoke-virtual {v0}, Lcfn;->c()Lceo;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcee;
    .locals 1

    .line 71
    iget-object v0, p0, Lceu;->a:Lcfn;

    invoke-virtual {v0}, Lcfn;->j()Lcee;

    move-result-object v0

    return-object v0
.end method

.method public d()Lced;
    .locals 1

    .line 59
    iget-object v0, p0, Lceu;->a:Lcfn;

    invoke-virtual {v0}, Lcfn;->f()Lced;

    move-result-object v0

    return-object v0
.end method

.method public e()[Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lceu;->a:Lcfn;

    invoke-virtual {v0}, Lcfn;->m()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 87
    iget-object v0, p0, Lceu;->a:Lcfn;

    invoke-virtual {v0}, Lcfn;->a()I

    move-result v0

    return v0
.end method

.method public g()Lcgs;
    .locals 1

    .line 99
    iget-object v0, p0, Lceu;->a:Lcfn;

    invoke-virtual {v0}, Lcfn;->q()Lcgs;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lceu;->a:Lcfn;

    invoke-virtual {v0}, Lcfn;->d()Z

    move-result v0

    return v0
.end method

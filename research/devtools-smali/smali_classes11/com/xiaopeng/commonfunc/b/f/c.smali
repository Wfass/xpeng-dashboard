.class public Lcom/xiaopeng/commonfunc/b/f/c;
.super Ljava/lang/Object;
.source "PsoModel.java"


# instance fields
.field private final ou:Landroid/pso/PsoCrypto;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/pso/XpPso;

    invoke-direct {v0, p1}, Landroid/pso/XpPso;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/b/f/c;->ou:Landroid/pso/PsoCrypto;

    .line 22
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/f/c;->ou:Landroid/pso/PsoCrypto;

    const-string v0, "PSO_CAR_TYPE"

    invoke-static {v0}, Lcom/xiaopeng/a/a$b;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/pso/PsoCrypto;->set_carType(I)V

    .line 23
    return-void
.end method


# virtual methods
.method public aT(Ljava/lang/String;)Z
    .locals 3

    .line 59
    const-string v0, "PsoModel"

    const-string v1, "verifyCertKey"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    nop

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/f/c;->ou:Landroid/pso/PsoCrypto;

    invoke-interface {v0, p1}, Landroid/pso/PsoCrypto;->CertKeyVerify(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_0

    .line 63
    :catch_0
    move-exception p1

    .line 64
    const-string v0, "PsoModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CertKeyVerify Failed...Descrition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    const/4 p1, 0x0

    :goto_0
    const-string v0, "PsoModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verifyCertKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    return p1
.end method

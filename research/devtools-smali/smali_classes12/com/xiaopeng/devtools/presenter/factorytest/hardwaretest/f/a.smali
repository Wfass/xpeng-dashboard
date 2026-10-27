.class public Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f/a;
.super Ljava/lang/Object;
.source "PhyPresenter.java"


# instance fields
.field private wY:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/a;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/a;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f/a;->wY:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/a;

    .line 19
    return-void
.end method

.method private synthetic cc(Ljava/lang/String;)V
    .locals 1

    .line 63
    invoke-static {p1}, Lcom/xiaopeng/devtools/utils/m;->cH(Ljava/lang/String;)Z

    move-result p1

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f/a;->wY:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/a;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f/a;->wY:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/a;->ay(Z)V

    .line 67
    :cond_0
    return-void
.end method

.method private synthetic je()V
    .locals 2

    .line 48
    nop

    .line 49
    invoke-static {}, Lcom/xiaopeng/devtools/utils/m;->ld()Ljava/lang/String;

    move-result-object v0

    .line 50
    const-string v1, "SLPS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    const/4 v0, 0x0

    goto :goto_0

    .line 52
    :cond_0
    const-string v1, "SLPM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    const/4 v0, 0x1

    goto :goto_0

    .line 55
    :cond_1
    const/4 v0, -0x1

    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f/a;->wY:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/a;

    if-eqz v1, :cond_2

    .line 56
    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f/a;->wY:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/a;

    invoke-interface {v1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/a;->da(I)V

    .line 58
    :cond_2
    return-void
.end method

.method private synthetic jf()V
    .locals 2

    .line 33
    nop

    .line 34
    invoke-static {}, Lcom/xiaopeng/devtools/utils/m;->eE()Ljava/lang/String;

    move-result-object v0

    .line 35
    const-string v1, "LINK_DOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    const/4 v0, 0x0

    goto :goto_0

    .line 37
    :cond_0
    const-string v1, "LINK_UP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    const/4 v0, 0x1

    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, -0x1

    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f/a;->wY:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/a;

    if-eqz v1, :cond_2

    .line 41
    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f/a;->wY:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/a;

    invoke-interface {v1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/a;->cZ(I)V

    .line 43
    :cond_2
    return-void
.end method

.method private synthetic jg()V
    .locals 2

    .line 23
    invoke-static {}, Lcom/xiaopeng/devtools/utils/m;->eF()Ljava/lang/String;

    move-result-object v0

    .line 24
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    .line 25
    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f/a;->wY:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/a;

    if-eqz v1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f/a;->wY:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/a;

    invoke-interface {v1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/a;->db(I)V

    .line 28
    :cond_0
    return-void
.end method

.method public static synthetic lambda$8nIvItS9AKZsM8YY3cP6vc6Lvlw(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f/a;->jg()V

    return-void
.end method

.method public static synthetic lambda$F_Q_jR6uzktt3WMHCV3SGXd9H50(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f/a;->cc(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$fwZuMXamvYr99ATE-jmeedm1Xuw(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f/a;->jf()V

    return-void
.end method

.method public static synthetic lambda$kZhqoYQB-lbZILgDQ5audYiNM2Q(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f/a;->je()V

    return-void
.end method


# virtual methods
.method public cb(Ljava/lang/String;)V
    .locals 1

    .line 62
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f/-$$Lambda$a$F_Q_jR6uzktt3WMHCV3SGXd9H50;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f/-$$Lambda$a$F_Q_jR6uzktt3WMHCV3SGXd9H50;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f/a;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method

.method public jb()V
    .locals 1

    .line 22
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f/-$$Lambda$a$8nIvItS9AKZsM8YY3cP6vc6Lvlw;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f/-$$Lambda$a$8nIvItS9AKZsM8YY3cP6vc6Lvlw;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f/a;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 29
    return-void
.end method

.method public jc()V
    .locals 1

    .line 32
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f/-$$Lambda$a$fwZuMXamvYr99ATE-jmeedm1Xuw;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f/-$$Lambda$a$fwZuMXamvYr99ATE-jmeedm1Xuw;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f/a;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 44
    return-void
.end method

.method public jd()V
    .locals 1

    .line 47
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f/-$$Lambda$a$kZhqoYQB-lbZILgDQ5audYiNM2Q;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f/-$$Lambda$a$kZhqoYQB-lbZILgDQ5audYiNM2Q;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f/a;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 59
    return-void
.end method

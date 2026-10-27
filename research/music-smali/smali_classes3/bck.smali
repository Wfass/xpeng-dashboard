.class public Lbck;
.super Lbci;
.source "NeteaseLocalLoveManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbck$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lbci;-><init>()V

    return-void
.end method

.method public static a()Lbck;
    .locals 1

    .line 19
    sget-object v0, Lbck$a;->a:Lbck;

    return-object v0
.end method


# virtual methods
.method protected b()V
    .locals 1

    .line 23
    invoke-static {}, Lbem;->a()Lbem;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbem;->a(Lbdq;)V

    return-void
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected d()Lazv;
    .locals 1

    .line 31
    invoke-static {}, Lbax;->a()Lbax;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lbae;
    .locals 1

    .line 35
    invoke-static {}, Lbba;->a()Lbba;

    move-result-object v0

    return-object v0
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    const-string v0, "NeteaseLocalLoveManager"

    return-object v0
.end method

.class public Lbch;
.super Lbci;
.source "KugouLocalLoveManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbch$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lbci;-><init>()V

    return-void
.end method

.method public static a()Lbch;
    .locals 1

    .line 19
    sget-object v0, Lbch$a;->a:Lbch;

    return-object v0
.end method


# virtual methods
.method protected b()V
    .locals 1

    .line 23
    invoke-static {}, Lbek;->a()Lbek;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbek;->a(Lbdq;)V

    return-void
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected d()Lazv;
    .locals 1

    .line 31
    invoke-static {}, Lbar;->a()Lbar;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lbae;
    .locals 1

    .line 35
    invoke-static {}, Lbau;->a()Lbau;

    move-result-object v0

    return-object v0
.end method

.method protected f()V
    .locals 0

    return-void
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    const-string v0, "KugouLocalLoveManager"

    return-object v0
.end method

.class public Lbep;
.super Lbef;
.source "QQAuthModelImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lbef;-><init>()V

    return-void
.end method


# virtual methods
.method protected e()Ljava/lang/String;
    .locals 1

    const-string v0, "sp_logout_server_flag"

    return-object v0
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    const-string v0, "sp_qq_open_id"

    return-object v0
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    const-string v0, "sp_qq_expire_time"

    return-object v0
.end method

.method protected q()Ljava/lang/String;
    .locals 1

    const-string v0, "QQAuthModelImpl"

    return-object v0
.end method

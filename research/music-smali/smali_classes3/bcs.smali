.class public Lbcs;
.super Layo;
.source "NeteaseAlbumModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbcs$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Layo;-><init>()V

    return-void
.end method

.method public static i()Lbcs;
    .locals 1

    .line 25
    sget-object v0, Lbcs$a;->a:Lbcs;

    return-object v0
.end method


# virtual methods
.method protected c()Lben;
    .locals 1

    .line 29
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->d()Lbel;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected e()Lazy;
    .locals 1

    .line 37
    invoke-static {}, Lbay;->a()Lbay;

    move-result-object v0

    return-object v0
.end method

.method protected f()Lbab;
    .locals 1

    .line 41
    invoke-static {}, Lbaz;->a()Lbaz;

    move-result-object v0

    return-object v0
.end method

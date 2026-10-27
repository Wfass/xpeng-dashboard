.class public Lbdd;
.super Lbdf;
.source "DefaultReplayDown.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lbdf;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public a(Z)V
    .locals 1

    .line 10
    invoke-virtual {p0}, Lbdd;->g()Lbdf;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p0}, Lbdd;->g()Lbdf;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lbdf;->a(Z)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lbdd;->h()V

    :goto_0
    return-void
.end method

.class public Lbxi;
.super Lbxh;
.source "SupportWidget.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "custom"

    .line 14
    invoke-direct {p0, v0}, Lbxh;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lbxi;
    .locals 1

    const-string v0, "tts"

    .line 31
    invoke-super {p0, v0, p1}, Lbxh;->c(Ljava/lang/String;Ljava/lang/String;)Lbxh;

    move-result-object p1

    check-cast p1, Lbxi;

    return-object p1
.end method

.method public a(Z)Lbxi;
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v0, "status"

    .line 23
    invoke-super {p0, v0, p1}, Lbxh;->c(Ljava/lang/String;Ljava/lang/String;)Lbxh;

    move-result-object p1

    check-cast p1, Lbxi;

    return-object p1
.end method

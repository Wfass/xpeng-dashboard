.class public Lbxg;
.super Lbxh;
.source "ListWidget.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "list"

    .line 25
    invoke-direct {p0, v0}, Lbxh;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lbxg;
    .locals 1

    const-string v0, "title"

    .line 48
    invoke-virtual {p0, v0, p1}, Lbxg;->a(Ljava/lang/String;Ljava/lang/String;)Lbxg;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lbxg;
    .locals 0

    .line 69
    invoke-super {p0, p1, p2}, Lbxh;->b(Ljava/lang/String;Ljava/lang/String;)Lbxh;

    move-result-object p1

    check-cast p1, Lbxg;

    return-object p1
.end method

.method public synthetic b(Ljava/lang/String;Ljava/lang/String;)Lbxh;
    .locals 0

    .line 10
    invoke-virtual {p0, p1, p2}, Lbxg;->a(Ljava/lang/String;Ljava/lang/String;)Lbxg;

    move-result-object p1

    return-object p1
.end method

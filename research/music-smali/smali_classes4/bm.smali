.class public Lbm;
.super Lbn;
.source "Placeholder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lbn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Laf;Z)V
    .locals 1

    .line 76
    invoke-super {p0, p1, p2}, Lbn;->a(Laf;Z)V

    .line 78
    iget p1, p0, Lbm;->az:I

    if-lez p1, :cond_0

    .line 79
    iget-object p1, p0, Lbm;->ay:[Lbf;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    .line 80
    invoke-virtual {p1}, Lbf;->W()V

    .line 81
    sget-object p2, Lbe$a;->LEFT:Lbe$a;

    sget-object v0, Lbe$a;->LEFT:Lbe$a;

    invoke-virtual {p1, p2, p0, v0}, Lbf;->a(Lbe$a;Lbf;Lbe$a;)V

    .line 82
    sget-object p2, Lbe$a;->RIGHT:Lbe$a;

    sget-object v0, Lbe$a;->RIGHT:Lbe$a;

    invoke-virtual {p1, p2, p0, v0}, Lbf;->a(Lbe$a;Lbf;Lbe$a;)V

    .line 83
    sget-object p2, Lbe$a;->TOP:Lbe$a;

    sget-object v0, Lbe$a;->TOP:Lbe$a;

    invoke-virtual {p1, p2, p0, v0}, Lbf;->a(Lbe$a;Lbf;Lbe$a;)V

    .line 84
    sget-object p2, Lbe$a;->BOTTOM:Lbe$a;

    sget-object v0, Lbe$a;->BOTTOM:Lbe$a;

    invoke-virtual {p1, p2, p0, v0}, Lbf;->a(Lbe$a;Lbf;Lbe$a;)V

    :cond_0
    return-void
.end method

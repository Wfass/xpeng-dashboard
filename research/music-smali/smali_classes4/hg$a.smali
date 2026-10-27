.class Lhg$a;
.super Lgv;
.source "ExploreByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lhg;


# direct methods
.method constructor <init>(Lhg;)V
    .locals 0

    .line 1245
    iput-object p1, p0, Lhg$a;->a:Lhg;

    invoke-direct {p0}, Lgv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lgu;
    .locals 1

    .line 1252
    iget-object v0, p0, Lhg$a;->a:Lhg;

    .line 1253
    invoke-virtual {v0, p1}, Lhg;->b(I)Lgu;

    move-result-object p1

    .line 1254
    invoke-static {p1}, Lgu;->a(Lgu;)Lgu;

    move-result-object p1

    return-object p1
.end method

.method public a(IILandroid/os/Bundle;)Z
    .locals 1

    .line 1259
    iget-object v0, p0, Lhg$a;->a:Lhg;

    invoke-virtual {v0, p1, p2, p3}, Lhg;->a(IILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public b(I)Lgu;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1265
    iget-object p1, p0, Lhg$a;->a:Lhg;

    iget p1, p1, Lhg;->a:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lhg$a;->a:Lhg;

    iget p1, p1, Lhg;->b:I

    :goto_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 1269
    :cond_1
    invoke-virtual {p0, p1}, Lhg$a;->a(I)Lgu;

    move-result-object p1

    return-object p1
.end method

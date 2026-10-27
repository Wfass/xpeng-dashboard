.class abstract Lio$e;
.super Lio$d;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "e"
.end annotation


# instance fields
.field protected l:[Ldw$b;

.field m:Ljava/lang/String;

.field n:I

.field o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1693
    invoke-direct {p0, v0}, Lio$d;-><init>(Lio$1;)V

    .line 1687
    iput-object v0, p0, Lio$e;->l:[Ldw$b;

    const/4 v0, 0x0

    .line 1690
    iput v0, p0, Lio$e;->n:I

    return-void
.end method

.method public constructor <init>(Lio$e;)V
    .locals 1

    const/4 v0, 0x0

    .line 1719
    invoke-direct {p0, v0}, Lio$d;-><init>(Lio$1;)V

    .line 1687
    iput-object v0, p0, Lio$e;->l:[Ldw$b;

    const/4 v0, 0x0

    .line 1690
    iput v0, p0, Lio$e;->n:I

    .line 1720
    iget-object v0, p1, Lio$e;->m:Ljava/lang/String;

    iput-object v0, p0, Lio$e;->m:Ljava/lang/String;

    .line 1721
    iget v0, p1, Lio$e;->o:I

    iput v0, p0, Lio$e;->o:I

    .line 1722
    iget-object p1, p1, Lio$e;->l:[Ldw$b;

    invoke-static {p1}, Ldw;->a([Ldw$b;)[Ldw$b;

    move-result-object p1

    iput-object p1, p0, Lio$e;->l:[Ldw$b;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Path;)V
    .locals 1

    .line 1726
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 1727
    iget-object v0, p0, Lio$e;->l:[Ldw$b;

    if-eqz v0, :cond_0

    .line 1728
    invoke-static {v0, p1}, Ldw$b;->a([Ldw$b;Landroid/graphics/Path;)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPathData()[Ldw$b;
    .locals 1

    .line 1750
    iget-object v0, p0, Lio$e;->l:[Ldw$b;

    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 1

    .line 1733
    iget-object v0, p0, Lio$e;->m:Ljava/lang/String;

    return-object v0
.end method

.method public setPathData([Ldw$b;)V
    .locals 1

    .line 1755
    iget-object v0, p0, Lio$e;->l:[Ldw$b;

    invoke-static {v0, p1}, Ldw;->a([Ldw$b;[Ldw$b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1757
    invoke-static {p1}, Ldw;->a([Ldw$b;)[Ldw$b;

    move-result-object p1

    iput-object p1, p0, Lio$e;->l:[Ldw$b;

    goto :goto_0

    .line 1759
    :cond_0
    iget-object v0, p0, Lio$e;->l:[Ldw$b;

    invoke-static {v0, p1}, Ldw;->b([Ldw$b;[Ldw$b;)V

    :goto_0
    return-void
.end method

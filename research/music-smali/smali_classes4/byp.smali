.class public final Lbyp;
.super Ljava/lang/Object;
.source "DrawerProxy.kt"

# interfaces
.implements Lbyq;


# annotations
.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field private a:Lbyq;


# direct methods
.method public constructor <init>(Lbyu;)V
    .locals 1

    const-string v0, "indicatorOptions"

    invoke-static {p1, v0}, Lccf;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-direct {p0, p1}, Lbyp;->b(Lbyu;)V

    return-void
.end method

.method private final b(Lbyu;)V
    .locals 1

    .line 38
    sget-object v0, Lbyo;->a:Lbyo;

    invoke-virtual {v0, p1}, Lbyo;->a(Lbyu;)Lbyq;

    move-result-object p1

    iput-object p1, p0, Lbyp;->a:Lbyq;

    return-void
.end method


# virtual methods
.method public a(II)Lbyl$b;
    .locals 2

    .line 54
    iget-object v0, p0, Lbyp;->a:Lbyq;

    if-nez v0, :cond_0

    const-string v1, "mIDrawer"

    invoke-static {v1}, Lccf;->c(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0, p1, p2}, Lbyq;->a(II)Lbyl$b;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lccf;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lbyp;->a:Lbyq;

    if-nez v0, :cond_0

    const-string v1, "mIDrawer"

    invoke-static {v1}, Lccf;->c(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0, p1}, Lbyq;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final a(Lbyu;)V
    .locals 1

    const-string v0, "indicatorOptions"

    invoke-static {p1, v0}, Lccf;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0, p1}, Lbyp;->b(Lbyu;)V

    return-void
.end method

.method public a(ZIIII)V
    .locals 0

    return-void
.end method

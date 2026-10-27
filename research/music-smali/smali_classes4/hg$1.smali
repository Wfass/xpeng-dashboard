.class Lhg$1;
.super Ljava/lang/Object;
.source "ExploreByTouchHelper.java"

# interfaces
.implements Lhh$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhh$a<",
        "Lgu;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lgu;Landroid/graphics/Rect;)V
    .locals 0

    .line 339
    invoke-virtual {p1, p2}, Lgu;->a(Landroid/graphics/Rect;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .line 336
    check-cast p1, Lgu;

    invoke-virtual {p0, p1, p2}, Lhg$1;->a(Lgu;Landroid/graphics/Rect;)V

    return-void
.end method

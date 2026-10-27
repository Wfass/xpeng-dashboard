.class Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$4;
.super Ljava/lang/Object;
.source "BezierLayout.java"

# interfaces
.implements Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->onFinish(Lcom/lcodecore/tkrefreshlayout/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lcodecore/tkrefreshlayout/c;

.field final synthetic b:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;


# direct methods
.method constructor <init>(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;Lcom/lcodecore/tkrefreshlayout/c;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$4;->b:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;

    iput-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$4;->a:Lcom/lcodecore/tkrefreshlayout/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$4;->a:Lcom/lcodecore/tkrefreshlayout/c;

    invoke-interface {v0}, Lcom/lcodecore/tkrefreshlayout/c;->a()V

    return-void
.end method

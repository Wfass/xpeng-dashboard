.class Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a$1;
.super Ljava/lang/Object;
.source "TwinklingRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;


# direct methods
.method constructor <init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;)V
    .locals 0

    .line 995
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a$1;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 998
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a$1;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->U()V

    .line 999
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a$1;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    iget-object v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isPureScrollModeOn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a$1;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    iget-object v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$700(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a$1;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->c(Z)V

    .line 1001
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a$1;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;)Laly;

    move-result-object v0

    invoke-virtual {v0}, Laly;->c()V

    :cond_0
    return-void
.end method

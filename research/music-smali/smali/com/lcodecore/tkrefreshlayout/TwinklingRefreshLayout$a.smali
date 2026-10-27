.class public Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;
.super Ljava/lang/Object;
.source "TwinklingRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

.field private b:Laly;

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V
    .locals 1

    .line 875
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 869
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->c:I

    .line 873
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->d:I

    const/4 v0, 0x1

    .line 975
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->e:Z

    .line 1173
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->f:Z

    .line 1174
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->g:Z

    .line 876
    new-instance p1, Laly;

    invoke-direct {p1, p0}, Laly;-><init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;)V

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->b:Laly;

    return-void
.end method

.method static synthetic a(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;)Laly;
    .locals 0

    .line 864
    iget-object p0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->b:Laly;

    return-object p0
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1042
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->enableRefresh:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->enableOverScroll:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public B()Z
    .locals 1

    .line 1046
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->enableLoadmore:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->enableOverScroll:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public C()Z
    .locals 1

    .line 1050
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->enableRefresh:Z

    return v0
.end method

.method public D()Z
    .locals 1

    .line 1054
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->enableLoadmore:Z

    return v0
.end method

.method public E()Z
    .locals 1

    .line 1058
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isRefreshVisible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isLoadingVisible:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public F()Z
    .locals 1

    .line 1062
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isRefreshVisible:Z

    return v0
.end method

.method public G()Z
    .locals 1

    .line 1066
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isLoadingVisible:Z

    return v0
.end method

.method public H()Z
    .locals 1

    .line 1082
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isRefreshing:Z

    return v0
.end method

.method public I()Z
    .locals 1

    .line 1086
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isLoadingMore:Z

    return v0
.end method

.method public J()Z
    .locals 1

    .line 1094
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->floatRefresh:Z

    return v0
.end method

.method public K()Z
    .locals 1

    .line 1098
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->autoLoadMore:Z

    return v0
.end method

.method public L()Z
    .locals 1

    .line 1102
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isPureScrollModeOn:Z

    return v0
.end method

.method public M()Z
    .locals 1

    .line 1106
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isOverScrollTopShow:Z

    return v0
.end method

.method public N()Z
    .locals 1

    .line 1110
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isOverScrollBottomShow:Z

    return v0
.end method

.method public O()V
    .locals 2

    .line 1122
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$1200(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lcom/lcodecore/tkrefreshlayout/e;

    move-result-object v0

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-interface {v0, v1}, Lcom/lcodecore/tkrefreshlayout/e;->onRefresh(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V

    return-void
.end method

.method public P()V
    .locals 2

    .line 1126
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$1200(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lcom/lcodecore/tkrefreshlayout/e;

    move-result-object v0

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-interface {v0, v1}, Lcom/lcodecore/tkrefreshlayout/e;->onLoadMore(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V

    return-void
.end method

.method public Q()V
    .locals 1

    .line 1130
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$1200(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lcom/lcodecore/tkrefreshlayout/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/lcodecore/tkrefreshlayout/e;->onFinishRefresh()V

    return-void
.end method

.method public R()V
    .locals 1

    .line 1134
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$1200(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lcom/lcodecore/tkrefreshlayout/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/lcodecore/tkrefreshlayout/e;->onFinishLoadMore()V

    return-void
.end method

.method public S()V
    .locals 1

    .line 1150
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$1200(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lcom/lcodecore/tkrefreshlayout/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/lcodecore/tkrefreshlayout/e;->onRefreshCanceled()V

    return-void
.end method

.method public T()V
    .locals 1

    .line 1154
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$1200(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lcom/lcodecore/tkrefreshlayout/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/lcodecore/tkrefreshlayout/e;->onLoadmoreCanceled()V

    return-void
.end method

.method public U()V
    .locals 1

    const/4 v0, 0x0

    .line 1158
    iput v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->c:I

    return-void
.end method

.method public V()V
    .locals 1

    const/4 v0, 0x1

    .line 1162
    iput v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->c:I

    return-void
.end method

.method public W()Z
    .locals 1

    .line 1166
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public X()Z
    .locals 2

    .line 1170
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->c:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public Y()Z
    .locals 1

    .line 1177
    iget-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->f:Z

    return v0
.end method

.method public Z()Z
    .locals 1

    .line 1181
    iget-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->g:Z

    return v0
.end method

.method public a()V
    .locals 2

    .line 880
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isPureScrollModeOn:Z

    if-eqz v0, :cond_1

    .line 881
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setOverScrollTopShow(Z)V

    .line 882
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setOverScrollBottomShow(Z)V

    .line 883
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-object v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-object v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 884
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$400(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$400(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public a(F)V
    .locals 3

    .line 1114
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$1200(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lcom/lcodecore/tkrefreshlayout/e;

    move-result-object v0

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget v2, v1, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mHeadHeight:F

    div-float/2addr p1, v2

    invoke-interface {v0, v1, p1}, Lcom/lcodecore/tkrefreshlayout/e;->onPullingDown(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;F)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 1070
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iput-boolean p1, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isRefreshVisible:Z

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1146
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0, p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$1301(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public b()Laly;
    .locals 1

    .line 889
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->b:Laly;

    return-object v0
.end method

.method public b(F)V
    .locals 3

    .line 1118
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$1200(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lcom/lcodecore/tkrefreshlayout/e;

    move-result-object v0

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$600(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)F

    move-result v2

    div-float/2addr p1, v2

    invoke-interface {v0, v1, p1}, Lcom/lcodecore/tkrefreshlayout/e;->onPullingUp(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;F)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 1074
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iput-boolean p1, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isLoadingVisible:Z

    return-void
.end method

.method public c(F)V
    .locals 3

    .line 1138
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$1200(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lcom/lcodecore/tkrefreshlayout/e;

    move-result-object v0

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget v2, v1, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mHeadHeight:F

    div-float/2addr p1, v2

    invoke-interface {v0, v1, p1}, Lcom/lcodecore/tkrefreshlayout/e;->onPullDownReleasing(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;F)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 1078
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iput-boolean p1, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isRefreshing:Z

    return-void
.end method

.method public c()Z
    .locals 1

    .line 893
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->enableKeepIView:Z

    return v0
.end method

.method public d(F)V
    .locals 3

    .line 1142
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$1200(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lcom/lcodecore/tkrefreshlayout/e;

    move-result-object v0

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$600(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)F

    move-result v2

    div-float/2addr p1, v2

    invoke-interface {v0, v1, p1}, Lcom/lcodecore/tkrefreshlayout/e;->onPullUpReleasing(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;F)V

    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 1090
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iput-boolean p1, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isLoadingMore:Z

    return-void
.end method

.method public d()Z
    .locals 1

    .line 897
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->showRefreshingWhenOverScroll:Z

    return v0
.end method

.method public e(Z)V
    .locals 0

    .line 1185
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->f:Z

    return-void
.end method

.method public e()Z
    .locals 1

    .line 901
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->showLoadingWhenOverScroll:Z

    return v0
.end method

.method public f()F
    .locals 1

    .line 905
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mMaxHeadHeight:F

    return v0
.end method

.method public f(Z)V
    .locals 0

    .line 1189
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->g:Z

    return-void
.end method

.method public g()I
    .locals 1

    .line 909
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mHeadHeight:F

    float-to-int v0, v0

    return v0
.end method

.method public h()I
    .locals 1

    .line 917
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mMaxBottomHeight:F

    float-to-int v0, v0

    return v0
.end method

.method public i()I
    .locals 1

    .line 921
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$600(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public j()I
    .locals 1

    .line 925
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mOverScrollHeight:F

    float-to-int v0, v0

    return v0
.end method

.method public k()Landroid/view/View;
    .locals 1

    .line 929
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$700(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public l()Landroid/view/View;
    .locals 1

    .line 933
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-object v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public m()Landroid/view/View;
    .locals 1

    .line 937
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$400(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public n()I
    .locals 1

    .line 941
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$800(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)I

    move-result v0

    return v0
.end method

.method public o()V
    .locals 1

    .line 945
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$900(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lcom/lcodecore/tkrefreshlayout/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$900(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lcom/lcodecore/tkrefreshlayout/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/lcodecore/tkrefreshlayout/b;->reset()V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 1

    .line 949
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$1000(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lcom/lcodecore/tkrefreshlayout/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$1000(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lcom/lcodecore/tkrefreshlayout/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/lcodecore/tkrefreshlayout/a;->b()V

    :cond_0
    return-void
.end method

.method public q()Landroid/view/View;
    .locals 1

    .line 953
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$500(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public r()V
    .locals 1

    const/4 v0, 0x1

    .line 961
    iput v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->d:I

    return-void
.end method

.method public s()Z
    .locals 1

    .line 978
    iget-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->e:Z

    return v0
.end method

.method public t()V
    .locals 3

    const/4 v0, 0x0

    .line 983
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->e:Z

    .line 984
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$700(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 985
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$500(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 986
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$700(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 987
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->requestLayout()V

    return-void
.end method

.method public u()V
    .locals 2

    .line 995
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    new-instance v1, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a$1;

    invoke-direct {v1, p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a$1;-><init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;)V

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public v()V
    .locals 2

    .line 1008
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    new-instance v1, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a$2;

    invoke-direct {v1, p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a$2;-><init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;)V

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public w()V
    .locals 0

    .line 1021
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->Q()V

    return-void
.end method

.method public x()V
    .locals 2

    .line 1025
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$700(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->b:Laly;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laly;->a(Z)V

    :cond_0
    return-void
.end method

.method public y()V
    .locals 2

    .line 1031
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->R()V

    .line 1032
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->access$700(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->b:Laly;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laly;->b(Z)V

    :cond_0
    return-void
.end method

.method public z()Z
    .locals 1

    .line 1038
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iget-boolean v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->enableOverScroll:Z

    return v0
.end method

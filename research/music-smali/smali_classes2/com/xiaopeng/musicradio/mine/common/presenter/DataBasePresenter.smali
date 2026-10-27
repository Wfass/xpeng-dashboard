.class public abstract Lcom/xiaopeng/musicradio/mine/common/presenter/DataBasePresenter;
.super Lcom/xiaopeng/musicradio/datalist/DataListPresenter;
.source "DataBasePresenter.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/datalist/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UIInterface:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaopeng/musicradio/datalist/DataListPresenter<",
        "TUIInterface;>;",
        "Lcom/xiaopeng/musicradio/datalist/l;"
    }
.end annotation


# instance fields
.field private q:Z

.field private r:Z

.field protected s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;-><init>(I)V

    .line 38
    iput-object p2, p0, Lcom/xiaopeng/musicradio/mine/common/presenter/DataBasePresenter;->s:Ljava/lang/String;

    return-void
.end method

.method public static a([Ljava/lang/Object;ILjava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 117
    array-length v0, p0

    if-le v0, p1, :cond_0

    aget-object v0, p0, p1

    .line 119
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 120
    aget-object p0, p0, p1

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public varargs a([Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 94
    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    instance-of p1, p1, Lasj$ag;

    if-eqz p1, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/presenter/DataBasePresenter;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/presenter/DataBasePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/presenter/DataBasePresenter;->p()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 105
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/presenter/DataBasePresenter;->h()V

    :cond_2
    return-void
.end method

.method public b(Ljava/util/List;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 113
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->onResume(Landroidx/lifecycle/n;)V

    .line 46
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/presenter/DataBasePresenter;->x()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/presenter/DataBasePresenter;->u()V

    goto :goto_0

    :cond_0
    const-string p1, "onResume"

    .line 49
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/presenter/DataBasePresenter;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .line 131
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected u()V
    .locals 0

    return-void
.end method

.method protected v()V
    .locals 1

    .line 63
    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/mine/common/presenter/DataBasePresenter;->q:Z

    .line 64
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xui/theme/XThemeManager;->isNight(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/mine/common/presenter/DataBasePresenter;->r:Z

    return-void
.end method

.method public w()V
    .locals 1

    .line 68
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xui/theme/XThemeManager;->isNight(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/mine/common/presenter/DataBasePresenter;->r:Z

    return-void
.end method

.method public x()Z
    .locals 4

    .line 73
    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result v0

    .line 74
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/xui/theme/XThemeManager;->isNight(Landroid/content/Context;)Z

    move-result v1

    .line 75
    iget-boolean v2, p0, Lcom/xiaopeng/musicradio/mine/common/presenter/DataBasePresenter;->q:Z

    const/4 v3, 0x0

    if-ne v2, v0, :cond_0

    iget-boolean v2, p0, Lcom/xiaopeng/musicradio/mine/common/presenter/DataBasePresenter;->r:Z

    if-eq v2, v1, :cond_2

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/presenter/DataBasePresenter;->a()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/xiaopeng/musicradio/mine/common/view/a;

    if-eqz v2, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/presenter/DataBasePresenter;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/mine/common/view/a;

    .line 78
    invoke-interface {v2}, Lcom/xiaopeng/musicradio/mine/common/view/a;->notifyDataSetChanged()V

    const/4 v2, 0x1

    move v3, v2

    .line 81
    :cond_1
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/mine/common/presenter/DataBasePresenter;->q:Z

    .line 82
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/mine/common/presenter/DataBasePresenter;->r:Z

    :cond_2
    return v3
.end method

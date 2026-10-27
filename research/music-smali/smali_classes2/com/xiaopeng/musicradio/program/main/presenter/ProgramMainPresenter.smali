.class public Lcom/xiaopeng/musicradio/program/main/presenter/ProgramMainPresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "ProgramMainPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "Lcom/xiaopeng/musicradio/program/main/view/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/program/main/presenter/ProgramMainPresenter;->b:Ljava/util/Map;

    .line 30
    sget-object v0, Lcom/xiaopeng/musicradio/program/main/presenter/ProgramMainPresenter;->b:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "concentration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/xiaopeng/musicradio/program/main/presenter/ProgramMainPresenter;->b:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "category"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/xiaopeng/musicradio/program/main/presenter/ProgramMainPresenter;->b:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mine"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 38
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onSwitchTab(Lcom/xiaopeng/musicradio/event/common/b$b;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSwitchTab: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/b$b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " tab = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/b$b;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ProgramMainPresenter"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/b$b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 49
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/b$b;->b()Ljava/lang/String;

    move-result-object v0

    const-string v3, "search"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/b$b;->a()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/main/presenter/ProgramMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/main/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/program/main/view/a;->openSearch()V

    return-void

    .line 53
    :cond_1
    sget-object v0, Lcom/xiaopeng/musicradio/program/main/presenter/ProgramMainPresenter;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/b$b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " pos = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/b$b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    return-void

    .line 58
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/main/presenter/ProgramMainPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/b$b;->a()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 59
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->d(Ljava/lang/Object;)V

    .line 60
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/main/presenter/ProgramMainPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/program/main/view/a;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/xiaopeng/musicradio/program/main/view/a;->selectTab(I)V

    .line 61
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/b$a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/b$b;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/b$b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/xiaopeng/musicradio/event/common/b$a;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->e(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

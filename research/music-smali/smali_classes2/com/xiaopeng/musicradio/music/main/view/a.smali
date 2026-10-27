.class public interface abstract Lcom/xiaopeng/musicradio/music/main/view/a;
.super Ljava/lang/Object;
.source "IIdleViewInit.java"


# virtual methods
.method public a(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyParentInitIdleView fragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IIdleViewInit"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 20
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 22
    instance-of v0, p1, Lcom/xiaopeng/musicradio/music/main/view/a;

    if-eqz v0, :cond_1

    .line 23
    check-cast p1, Lcom/xiaopeng/musicradio/music/main/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/music/main/view/a;->onIdleViewInit()V

    return-void

    .line 26
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public b(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkIdleViewInit fragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", done: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/c;->a()Lcom/xiaopeng/musicradio/utils/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/utils/c;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IIdleViewInit"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/c;->a()Lcom/xiaopeng/musicradio/utils/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/c;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    invoke-interface {p0, p1}, Lcom/xiaopeng/musicradio/music/main/view/a;->a(Landroidx/fragment/app/Fragment;)V

    :cond_0
    return-void
.end method

.method public abstract onIdleViewInit()V
.end method

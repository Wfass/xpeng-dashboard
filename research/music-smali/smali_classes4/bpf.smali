.class public interface abstract Lbpf;
.super Ljava/lang/Object;
.source "IPageArrive.java"


# virtual methods
.method public abstract a(Ljava/lang/String;I)V
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 16
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 17
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "navUI: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " screenId = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "IPageArrive"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-static {v0, p2}, Lcom/xiaopeng/musicradio/page/PageNav;->nav(Landroid/content/Intent;I)V

    return-void
.end method

.method public abstract a()Z
.end method

.method public abstract b()V
.end method

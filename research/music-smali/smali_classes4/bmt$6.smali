.class Lbmt$6;
.super Ljava/lang/Object;
.source "ProgramModel.java"

# interfaces
.implements Last$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbmt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Last$a<",
        "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbmt;


# direct methods
.method constructor <init>(Lbmt;)V
    .locals 0

    .line 1552
    iput-object p1, p0, Lbmt$6;->a:Lbmt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    .line 1607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError: code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgramModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    iget-object v0, p0, Lbmt$6;->a:Lbmt;

    invoke-virtual {v0, p2}, Lbmt;->b(Ljava/lang/String;)V

    .line 1609
    iget-object p2, p0, Lbmt$6;->a:Lbmt;

    invoke-static {p2}, Lbmt;->m(Lbmt;)Lass;

    move-result-object p2

    invoke-virtual {p2}, Lass;->q()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1610
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onError: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbmt$6;->a:Lbmt;

    invoke-static {v2}, Lbmt;->m(Lbmt;)Lass;

    move-result-object v2

    invoke-virtual {v2}, Lass;->l()Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    iget-object p2, p0, Lbmt$6;->a:Lbmt;

    invoke-static {p2}, Lbmt;->m(Lbmt;)Lass;

    move-result-object p2

    invoke-virtual {p2}, Lass;->l()Z

    move-result p2

    const/4 v2, 0x3

    if-eqz p2, :cond_2

    .line 1612
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lbmt$6;->a:Lbmt;

    invoke-static {v0}, Lbmt;->n(Lbmt;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " isNet = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    iget-object p2, p0, Lbmt$6;->a:Lbmt;

    invoke-static {p2}, Lbmt;->n(Lbmt;)I

    move-result p2

    const/4 v0, 0x5

    if-ge p2, v0, :cond_0

    .line 1614
    iget-object p1, p0, Lbmt$6;->a:Lbmt;

    invoke-static {p1}, Lbmt;->j(Lbmt;)V

    .line 1615
    iget-object p1, p0, Lbmt$6;->a:Lbmt;

    invoke-static {p1}, Lbmt;->o(Lbmt;)I

    goto :goto_0

    .line 1617
    :cond_0
    iget-object p2, p0, Lbmt$6;->a:Lbmt;

    invoke-static {p2}, Lbmt;->m(Lbmt;)Lass;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lass;->b(Z)V

    .line 1618
    iget-object p2, p0, Lbmt$6;->a:Lbmt;

    invoke-static {p2}, Lbmt;->f(Lbmt;)I

    move-result p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    .line 1619
    iget-object p2, p0, Lbmt$6;->a:Lbmt;

    invoke-static {p2}, Lbmt;->p(Lbmt;)V

    .line 1621
    :cond_1
    new-instance p2, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$k;

    invoke-direct {p2, v2, p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$k;-><init>(II)V

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 1623
    :cond_2
    iget-object p2, p0, Lbmt$6;->a:Lbmt;

    invoke-static {p2}, Lbmt;->q(Lbmt;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1624
    iget-object p2, p0, Lbmt$6;->a:Lbmt;

    invoke-static {p2}, Lbmt;->p(Lbmt;)V

    .line 1625
    new-instance p2, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$k;

    invoke-direct {p2, v2, p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$k;-><init>(II)V

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;)V"
        }
    .end annotation

    .line 1555
    invoke-static {}, Lbrx;->a()Lbrx;

    move-result-object v0

    invoke-virtual {v0}, Lbrx;->g()V

    const-string v0, "ProgramModel"

    const-string v1, "onList: "

    .line 1556
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    iget-object v1, p0, Lbmt$6;->a:Lbmt;

    invoke-static {v1}, Lbmt;->m(Lbmt;)Lass;

    move-result-object v1

    invoke-virtual {v1}, Lass;->z()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string p1, "onList: 1========="

    .line 1558
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    iget-object p1, p0, Lbmt$6;->a:Lbmt;

    invoke-static {p1}, Lbmt;->m(Lbmt;)Lass;

    move-result-object p1

    invoke-virtual {p1}, Lass;->d()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1561
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lbmt$6;->a:Lbmt;

    invoke-static {v1}, Lbmt;->m(Lbmt;)Lass;

    move-result-object v1

    invoke-virtual {v1}, Lass;->e()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lbmt$6;->a:Lbmt;

    invoke-static {v0}, Lbmt;->m(Lbmt;)Lass;

    move-result-object v0

    invoke-virtual {v0}, Lass;->e()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 1562
    iget-object v0, p0, Lbmt$6;->a:Lbmt;

    invoke-static {v0}, Lbmt;->m(Lbmt;)Lass;

    move-result-object v0

    invoke-virtual {v0}, Lass;->e()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    .line 1563
    iget-object v0, p0, Lbmt$6;->a:Lbmt;

    invoke-static {v0}, Lbmt;->m(Lbmt;)Lass;

    move-result-object v1

    invoke-virtual {v1}, Lass;->d()Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lbmt$6;->a:Lbmt;

    invoke-static {v3}, Lbmt;->m(Lbmt;)Lass;

    move-result-object v3

    invoke-virtual {v3}, Lass;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, p1, v3}, Lbmt;->a(Lbmt;Ljava/util/List;Lcom/xiaopeng/musicradio/bean/program/ProgramBean;Ljava/lang/String;)V

    .line 1565
    :cond_0
    iget-object p1, p0, Lbmt$6;->a:Lbmt;

    invoke-static {p1}, Lbmt;->m(Lbmt;)Lass;

    move-result-object p1

    invoke-virtual {p1}, Lass;->f()V

    goto/16 :goto_1

    .line 1566
    :cond_1
    iget-object v1, p0, Lbmt$6;->a:Lbmt;

    invoke-static {v1}, Lbmt;->m(Lbmt;)Lass;

    move-result-object v1

    invoke-virtual {v1}, Lass;->l()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "onList: 2======="

    .line 1567
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    iget-object v0, p0, Lbmt$6;->a:Lbmt;

    invoke-static {v0}, Lbmt;->m(Lbmt;)Lass;

    move-result-object v0

    invoke-virtual {v0, v2}, Lass;->b(Z)V

    .line 1570
    iget-object v0, p0, Lbmt$6;->a:Lbmt;

    invoke-virtual {v0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1572
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    .line 1573
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getFromSource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setFromSource(Ljava/lang/String;)V

    goto :goto_0

    .line 1575
    :cond_2
    iget-object v1, p0, Lbmt$6;->a:Lbmt;

    invoke-static {v1}, Lbmt;->m(Lbmt;)Lass;

    move-result-object v3

    invoke-virtual {v3}, Lass;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v3}, Lbmt;->a(Lbmt;Ljava/util/List;Ljava/lang/String;)V

    .line 1576
    iget-object v1, p0, Lbmt$6;->a:Lbmt;

    invoke-static {v1, v0}, Lbmt;->a(Lbmt;Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)I

    move-result v0

    invoke-static {v1, v0}, Lbmt;->b(Lbmt;I)I

    .line 1577
    iget-object v0, p0, Lbmt$6;->a:Lbmt;

    invoke-static {v0}, Lbmt;->m(Lbmt;)Lass;

    move-result-object v0

    invoke-virtual {v0}, Lass;->f()V

    .line 1579
    :cond_3
    iget-object v0, p0, Lbmt$6;->a:Lbmt;

    invoke-static {v0}, Lbmt;->m(Lbmt;)Lass;

    move-result-object v0

    invoke-virtual {v0}, Lass;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lbmt$6;->a:Lbmt;

    invoke-static {v0}, Lbmt;->m(Lbmt;)Lass;

    move-result-object v0

    invoke-virtual {v0}, Lass;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "headspeech"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1580
    iget-object v0, p0, Lbmt$6;->a:Lbmt;

    invoke-static {v0}, Lbmt;->m(Lbmt;)Lass;

    move-result-object v1

    invoke-virtual {v1}, Lass;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lbmt;->b(Lbmt;Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1582
    :cond_4
    iget-object v1, p0, Lbmt$6;->a:Lbmt;

    invoke-static {v1}, Lbmt;->m(Lbmt;)Lass;

    move-result-object v1

    invoke-virtual {v1}, Lass;->E()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "onList: 3======="

    .line 1583
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    iget-object v0, p0, Lbmt$6;->a:Lbmt;

    invoke-static {v0}, Lbmt;->m(Lbmt;)Lass;

    move-result-object v0

    invoke-virtual {v0, v2}, Lass;->f(Z)V

    .line 1586
    iget-object v0, p0, Lbmt$6;->a:Lbmt;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    iget-object v3, p0, Lbmt$6;->a:Lbmt;

    invoke-static {v3}, Lbmt;->m(Lbmt;)Lass;

    move-result-object v3

    invoke-virtual {v3}, Lass;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p1, v1, v3}, Lbmt;->a(Lbmt;Ljava/util/List;Lcom/xiaopeng/musicradio/bean/program/ProgramBean;Ljava/lang/String;)V

    goto :goto_1

    .line 1587
    :cond_5
    iget-object v1, p0, Lbmt$6;->a:Lbmt;

    invoke-static {v1}, Lbmt;->m(Lbmt;)Lass;

    move-result-object v1

    invoke-virtual {v1}, Lass;->h()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_6

    const-string v1, "onList: 4======="

    .line 1589
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    iget-object v0, p0, Lbmt$6;->a:Lbmt;

    invoke-static {v0}, Lbmt;->m(Lbmt;)Lass;

    move-result-object v1

    invoke-virtual {v1}, Lass;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lbmt;->b(Lbmt;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v1, "onList: 5======="

    .line 1592
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    iget-object v0, p0, Lbmt$6;->a:Lbmt;

    invoke-virtual {v0, p1}, Lbmt;->b(Ljava/util/List;)V

    .line 1594
    iget-object v0, p0, Lbmt$6;->a:Lbmt;

    invoke-static {v0}, Lbmt;->m(Lbmt;)Lass;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1595
    new-instance v0, Lash$a;

    iget-object v1, p0, Lbmt$6;->a:Lbmt;

    invoke-static {v1}, Lbmt;->m(Lbmt;)Lass;

    move-result-object v1

    invoke-virtual {v1}, Lass;->h()I

    move-result v1

    iget-object v3, p0, Lbmt$6;->a:Lbmt;

    invoke-static {v3}, Lbmt;->m(Lbmt;)Lass;

    move-result-object v3

    invoke-virtual {v3}, Lass;->i()I

    move-result v3

    invoke-direct {v0, p1, v1, v3}, Lash$a;-><init>(Ljava/util/List;II)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 1598
    :cond_7
    :goto_1
    iget-object p1, p0, Lbmt$6;->a:Lbmt;

    invoke-static {p1}, Lbmt;->m(Lbmt;)Lass;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1599
    iget-object p1, p0, Lbmt$6;->a:Lbmt;

    invoke-static {p1}, Lbmt;->m(Lbmt;)Lass;

    move-result-object p1

    invoke-virtual {p1, v2}, Lass;->b(Z)V

    .line 1602
    :cond_8
    iget-object p1, p0, Lbmt$6;->a:Lbmt;

    invoke-static {p1, v2}, Lbmt;->c(Lbmt;I)I

    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 1

    .line 1638
    iget-object p1, p0, Lbmt$6;->a:Lbmt;

    invoke-static {p1}, Lbmt;->r(Lbmt;)I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 1639
    iget-object p1, p0, Lbmt$6;->a:Lbmt;

    invoke-virtual {p1}, Lbmt;->m()V

    .line 1641
    :cond_0
    iget-object p1, p0, Lbmt$6;->a:Lbmt;

    invoke-static {p1}, Lbmt;->s(Lbmt;)I

    move-result p1

    .line 1642
    iget-object p2, p0, Lbmt$6;->a:Lbmt;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lbmt;->a(Lbmt;II)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;)V"
        }
    .end annotation

    .line 1632
    new-instance v0, Lash$c;

    invoke-direct {v0, p1}, Lash$c;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 1633
    iget-object v0, p0, Lbmt$6;->a:Lbmt;

    invoke-virtual {v0, p1}, Lbmt;->a(Ljava/util/List;)V

    return-void
.end method

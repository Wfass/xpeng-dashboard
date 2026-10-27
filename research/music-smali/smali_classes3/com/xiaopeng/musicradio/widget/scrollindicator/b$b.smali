.class public abstract Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;
.super Ljava/lang/Object;
.source "Indicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/widget/scrollindicator/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/xiaopeng/musicradio/widget/scrollindicator/b$a;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public abstract a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public a(Lcom/xiaopeng/musicradio/widget/scrollindicator/b$a;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;->a:Z

    return v0
.end method

.method public abstract b()I
.end method

.method public b(Lcom/xiaopeng/musicradio/widget/scrollindicator/b$a;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/widget/scrollindicator/b$a;

    .line 146
    invoke-interface {v1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/b$a;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

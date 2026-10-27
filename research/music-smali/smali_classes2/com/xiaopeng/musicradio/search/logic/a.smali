.class public Lcom/xiaopeng/musicradio/search/logic/a;
.super Ljava/lang/Object;
.source "SearchHistoryOperationProxy.java"


# direct methods
.method public static a()V
    .locals 1

    .line 21
    invoke-static {}, Lbob;->a()Lbob;

    move-result-object v0

    invoke-virtual {v0}, Lbob;->b()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 17
    invoke-static {}, Lbob;->a()Lbob;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbob;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;",
            ">;"
        }
    .end annotation

    .line 25
    invoke-static {}, Lbob;->a()Lbob;

    move-result-object v0

    invoke-virtual {v0}, Lbob;->c()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    return-object v0
.end method

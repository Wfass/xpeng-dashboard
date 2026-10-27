.class Lbmm$1;
.super Lbkv;
.source "ProgramDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmm;->a(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lbmm;


# direct methods
.method constructor <init>(Lbmm;Z)V
    .locals 0

    .line 115
    iput-object p1, p0, Lbmm$1;->b:Lbmm;

    iput-boolean p2, p0, Lbmm$1;->a:Z

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lbmm$1;->b:Lbmm;

    invoke-static {v0, p1, p2}, Lbmm;->a(Lbmm;ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 115
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean;

    invoke-virtual {p0, p1}, Lbmm$1;->a(Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 118
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 119
    iget-object v0, p0, Lbmm$1;->b:Lbmm;

    invoke-static {v0}, Lbmm;->a(Lbmm;)V

    .line 120
    iget-object v0, p0, Lbmm$1;->b:Lbmm;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbmm;->a(Lbmm;I)I

    .line 121
    iget-object v0, p0, Lbmm$1;->b:Lbmm;

    invoke-static {v0}, Lbmm;->b(Lbmm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 122
    iget-object v0, p0, Lbmm$1;->b:Lbmm;

    invoke-static {v0}, Lbmm;->b(Lbmm;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    iget-object v0, p0, Lbmm$1;->b:Lbmm;

    invoke-static {v0}, Lbmm;->c(Lbmm;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lbmm$1;->a:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean;->isFromCache()Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    iget-object v0, p0, Lbmm$1;->b:Lbmm;

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lbmm;->b(Lbmm;I)I

    goto :goto_0

    .line 126
    :cond_1
    iget-object v0, p0, Lbmm$1;->b:Lbmm;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lbmm;->b(Lbmm;I)I

    .line 128
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBannerData response ==> state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbmm$1;->b:Lbmm;

    invoke-static {v2}, Lbmm;->d(Lbmm;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ProgramDataModel"

    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean;->isFromCache()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "reset igon state in none cache response"

    .line 130
    invoke-static {v2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object p1, p0, Lbmm$1;->b:Lbmm;

    invoke-static {p1, v1}, Lbmm;->a(Lbmm;Z)Z

    goto :goto_1

    :cond_2
    const-string p1, "not in cache response"

    .line 133
    invoke-static {v2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    :goto_1
    new-instance p1, Lash$d;

    const/4 v0, 0x1

    iget-object v1, p0, Lbmm$1;->b:Lbmm;

    .line 136
    invoke-static {v1}, Lbmm;->d(Lbmm;)I

    move-result v1

    invoke-direct {p1, v0, v1}, Lash$d;-><init>(II)V

    .line 135
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    goto :goto_2

    .line 138
    :cond_3
    iget-object p1, p0, Lbmm$1;->b:Lbmm;

    const/4 v0, -0x1

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lbmm;->a(Lbmm;ILjava/lang/String;)V

    :goto_2
    return-void
.end method

.class Lbob$3;
.super Ljava/lang/Object;
.source "SearchHistoryOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbob;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;

.field final synthetic b:Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;

.field final synthetic c:Lbob;


# direct methods
.method constructor <init>(Lbob;Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lbob$3;->c:Lbob;

    iput-object p2, p0, Lbob$3;->a:Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;

    iput-object p3, p0, Lbob$3;->b:Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 76
    iget-object v0, p0, Lbob$3;->c:Lbob;

    invoke-static {v0}, Lbob;->a(Lbob;)Lcom/xiaopeng/musicradio/bean/dao/SearchHistoryBeanDao;

    move-result-object v0

    iget-object v1, p0, Lbob$3;->a:Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/dao/SearchHistoryBeanDao;->getKey(Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lbob$3;->c:Lbob;

    invoke-static {v0}, Lbob;->a(Lbob;)Lcom/xiaopeng/musicradio/bean/dao/SearchHistoryBeanDao;

    move-result-object v0

    iget-object v1, p0, Lbob$3;->a:Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/dao/SearchHistoryBeanDao;->delete(Ljava/lang/Object;)V

    .line 79
    :cond_0
    iget-object v0, p0, Lbob$3;->c:Lbob;

    invoke-static {v0}, Lbob;->a(Lbob;)Lcom/xiaopeng/musicradio/bean/dao/SearchHistoryBeanDao;

    move-result-object v0

    iget-object v1, p0, Lbob$3;->b:Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/dao/SearchHistoryBeanDao;->insert(Ljava/lang/Object;)J

    return-void
.end method

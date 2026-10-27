.class Lbob$1;
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

.field final synthetic b:Lbob;


# direct methods
.method constructor <init>(Lbob;Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lbob$1;->b:Lbob;

    iput-object p2, p0, Lbob$1;->a:Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 59
    iget-object v0, p0, Lbob$1;->b:Lbob;

    invoke-static {v0}, Lbob;->a(Lbob;)Lcom/xiaopeng/musicradio/bean/dao/SearchHistoryBeanDao;

    move-result-object v0

    iget-object v1, p0, Lbob$1;->a:Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/dao/SearchHistoryBeanDao;->delete(Ljava/lang/Object;)V

    return-void
.end method

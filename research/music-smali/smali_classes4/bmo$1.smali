.class Lbmo$1;
.super Ljava/lang/Object;
.source "ReadHistoryOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmo;->a(Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

.field final synthetic b:Lbmo;


# direct methods
.method constructor <init>(Lbmo;Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lbmo$1;->b:Lbmo;

    iput-object p2, p0, Lbmo$1;->a:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 56
    iget-object v0, p0, Lbmo$1;->b:Lbmo;

    invoke-static {v0}, Lbmo;->a(Lbmo;)Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao;

    move-result-object v0

    iget-object v1, p0, Lbmo$1;->a:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao;->insertOrReplace(Ljava/lang/Object;)J

    .line 57
    iget-object v0, p0, Lbmo$1;->b:Lbmo;

    invoke-virtual {v0}, Lbmo;->b()V

    .line 58
    new-instance v0, Lasj$v;

    iget-object v1, p0, Lbmo$1;->a:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getAlbumId()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lasj$v;-><init>(JZ)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

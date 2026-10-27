.class Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment$5;
.super Ljava/lang/Object;
.source "QQSingerMainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->setTypeListDatas(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;Ljava/util/List;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment$5;->b:Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment$5;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment$5;->b:Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->access$500(Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;I)V

    .line 360
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment$5;->b:Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment$5;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->setTypeData(Ljava/util/List;)V

    return-void
.end method

.class Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment$2;
.super Ljava/lang/Object;
.source "QQSingerMainFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment$2;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .line 137
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment$2;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->access$400(Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;)Lbji;

    move-result-object v0

    invoke-virtual {v0, p2}, Lbji;->c(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;

    iput-object p2, p1, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mSingerType:Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;

    .line 138
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment$2;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mSingerType:Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;

    if-eqz p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment$2;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->setSingerType()V

    .line 140
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result p1

    iget-object p2, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment$2;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;

    iget-object p2, p2, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mSingerType:Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;->getTypeName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lbjl;->l(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

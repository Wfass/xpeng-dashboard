.class Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$2;
.super Ljava/lang/Object;
.source "SingerSelectLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$2;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .line 140
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$2;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->access$400(Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;)Lbjf;

    move-result-object p1

    invoke-virtual {p1, p2}, Lbjf;->c(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;

    if-eqz p1, :cond_0

    .line 142
    iget-object p2, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$2;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->access$100(Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;)Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$b;

    move-result-object p2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;->getAreaCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$b;->selectArea(Ljava/lang/String;)V

    .line 143
    iget-object p2, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$2;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;

    invoke-static {p2, p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->access$502(Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;)Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;

    .line 144
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$2;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->access$300(Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;)V

    :cond_0
    return-void
.end method

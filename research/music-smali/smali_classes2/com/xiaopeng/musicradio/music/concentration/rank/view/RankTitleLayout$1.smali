.class Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankTitleLayout$1;
.super Ljava/lang/Object;
.source "RankTitleLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankTitleLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankTitleLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankTitleLayout;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankTitleLayout$1;->a:Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankTitleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 67
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result p1

    invoke-static {p1}, Lbjl;->g(I)V

    .line 68
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/b$b;

    const/4 v0, 0x0

    const-string v1, "rank"

    const-string v2, ""

    invoke-direct {p1, v0, v1, v2}, Lcom/xiaopeng/musicradio/event/common/b$b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

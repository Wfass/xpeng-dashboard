.class Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout$1;
.super Ljava/lang/Object;
.source "ZoneItemLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->setData(Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout$1;->a:Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 187
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout$1;->a:Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->access$000(Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout$1;->a:Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->access$100(Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/bd;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object p1

    .line 188
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->g()Ljava/lang/String;

    move-result-object p1

    .line 190
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 191
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->q()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 192
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->p()V

    goto :goto_0

    .line 194
    :cond_0
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->o()V

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x4

    .line 198
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout$1;->a:Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;

    .line 199
    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->access$200(Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;)Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;->getQuality()I

    move-result v2

    const/4 v3, 0x1

    new-instance v4, Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout$1;->a:Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->access$300(Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 198
    invoke-static/range {v0 .. v6}, Laso;->a(Ljava/lang/String;IIZLjava/util/List;II)V

    .line 200
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout$1;->a:Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->access$400(Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;)I

    move-result p1

    invoke-static {p1}, Lbjl;->p(I)V

    .line 201
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout$1;->a:Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;->access$400(Lcom/xiaopeng/musicradio/music/concentration/zone/ZoneItemLayout;)I

    move-result p1

    invoke-static {p1}, Lbjl;->z(I)V

    return-void
.end method

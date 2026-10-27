.class public Laxd;
.super Lato;
.source "BlueMusicViewHolder.java"


# direct methods
.method public constructor <init>(Lavi;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lato;-><init>(Lavi;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 17
    invoke-super {p0, p1}, Lato;->a(I)V

    .line 18
    invoke-virtual {p0}, Laxd;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 19
    invoke-static {p1}, Laxu;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 20
    iget-object p1, p0, Laxd;->c:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lavi;

    iget-object p1, p1, Lavi;->o:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->playlist_new_blue_tips:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    :cond_0
    return-void
.end method

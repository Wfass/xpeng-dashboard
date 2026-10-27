.class Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$4;
.super Ljava/lang/Object;
.source "SelectMenuLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$4;->a:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .line 192
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->c()I

    move-result v0

    if-ne p2, v0, :cond_3

    .line 193
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object v0

    invoke-virtual {v0}, Lbhg;->b()Lbhi;

    move-result-object v0

    invoke-virtual {v0}, Lbhi;->h()Z

    move-result v0

    if-nez v0, :cond_3

    .line 194
    iget-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$4;->a:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->access$000(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;I)V

    .line 195
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object p1

    invoke-virtual {p1}, Lbhg;->b()Lbhi;

    move-result-object p1

    invoke-virtual {p1}, Lbhi;->q()Z

    move-result p1

    if-nez p1, :cond_0

    .line 196
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object p1

    invoke-virtual {p1}, Lbhg;->b()Lbhi;

    move-result-object p1

    invoke-virtual {p1}, Lbhi;->o()Z

    move-result p1

    if-nez p1, :cond_0

    .line 197
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object p1

    invoke-virtual {p1}, Lbhg;->b()Lbhi;

    move-result-object p1

    invoke-virtual {p1}, Lbhi;->n()Z

    move-result p1

    if-nez p1, :cond_0

    .line 198
    iget-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$4;->a:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->access$100(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;I)V

    goto :goto_0

    .line 201
    :cond_0
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object p1

    invoke-virtual {p1}, Lbhg;->b()Lbhi;

    move-result-object p1

    invoke-virtual {p1}, Lbhi;->o()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 202
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object p1

    invoke-virtual {p1}, Lbhg;->b()Lbhi;

    move-result-object p1

    invoke-virtual {p1}, Lbhi;->m()V

    goto :goto_0

    .line 203
    :cond_1
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object p1

    invoke-virtual {p1}, Lbhg;->b()Lbhi;

    move-result-object p1

    invoke-virtual {p1}, Lbhi;->q()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 204
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object p1

    invoke-virtual {p1}, Lbhg;->b()Lbhi;

    move-result-object p1

    invoke-virtual {p1}, Lbhi;->l()V

    :cond_2
    :goto_0
    return-void

    .line 211
    :cond_3
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->d()I

    move-result v0

    if-ne p2, v0, :cond_7

    .line 212
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object v0

    invoke-virtual {v0}, Lbhg;->c()Lbhh;

    move-result-object v0

    invoke-virtual {v0}, Lbhh;->h()Z

    move-result v0

    if-nez v0, :cond_7

    .line 213
    iget-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$4;->a:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->access$000(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;I)V

    .line 214
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object p1

    invoke-virtual {p1}, Lbhg;->c()Lbhh;

    move-result-object p1

    invoke-virtual {p1}, Lbhh;->q()Z

    move-result p1

    if-nez p1, :cond_4

    .line 215
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object p1

    invoke-virtual {p1}, Lbhg;->c()Lbhh;

    move-result-object p1

    invoke-virtual {p1}, Lbhh;->o()Z

    move-result p1

    if-nez p1, :cond_4

    .line 216
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object p1

    invoke-virtual {p1}, Lbhg;->c()Lbhh;

    move-result-object p1

    invoke-virtual {p1}, Lbhh;->n()Z

    move-result p1

    if-nez p1, :cond_4

    .line 217
    iget-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$4;->a:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->access$100(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;I)V

    goto :goto_1

    .line 220
    :cond_4
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object p1

    invoke-virtual {p1}, Lbhg;->c()Lbhh;

    move-result-object p1

    invoke-virtual {p1}, Lbhh;->o()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 221
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object p1

    invoke-virtual {p1}, Lbhg;->c()Lbhh;

    move-result-object p1

    invoke-virtual {p1}, Lbhh;->m()V

    goto :goto_1

    .line 222
    :cond_5
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object p1

    invoke-virtual {p1}, Lbhg;->c()Lbhh;

    move-result-object p1

    invoke-virtual {p1}, Lbhh;->q()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 223
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object p1

    invoke-virtual {p1}, Lbhg;->c()Lbhh;

    move-result-object p1

    invoke-virtual {p1}, Lbhh;->l()V

    :cond_6
    :goto_1
    return-void

    .line 229
    :cond_7
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$4;->a:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->access$200(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;II)V

    return-void
.end method

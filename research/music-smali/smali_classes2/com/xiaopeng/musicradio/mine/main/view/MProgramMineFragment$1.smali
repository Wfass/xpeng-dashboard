.class Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$1;
.super Ljava/lang/Object;
.source "MProgramMineFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$1;->a:Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecuteLong(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 164
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$1;->a:Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Laqn;->a(Landroid/content/Context;)V

    .line 165
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$1;->a:Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->getSceneId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$1;->a:Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->access$000(Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;)I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 166
    invoke-static {}, Latu;->i()V

    goto :goto_0

    .line 167
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$1;->a:Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->getSceneId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$1;->a:Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->access$100(Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;)I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->p(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 168
    invoke-static {}, Latu;->m()V

    :cond_1
    :goto_0
    return-void
.end method

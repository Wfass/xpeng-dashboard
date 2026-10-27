.class Lcom/xiaopeng/musicradio/music/main/view/KugooAuthLayout$1;
.super Ljava/lang/Object;
.source "KugooAuthLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/main/view/KugooAuthLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/main/view/KugooAuthLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/main/view/KugooAuthLayout;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/KugooAuthLayout$1;->a:Lcom/xiaopeng/musicradio/music/main/view/KugooAuthLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecuteLong(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "KugooAuthLayout"

    const-string v0, "onClick: kugou wx"

    .line 120
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 121
    invoke-static {p1}, Lbjl;->n(I)V

    const/4 p1, 0x0

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/KugooAuthLayout$1;->a:Lcom/xiaopeng/musicradio/music/main/view/KugooAuthLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/main/view/KugooAuthLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "kgwx"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/musicradio/account/qlogin/g;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

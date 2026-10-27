.class Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout$2;
.super Ljava/lang/Object;
.source "QQAuthLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout$2;->a:Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecuteLong(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "QQAuthLayout"

    const-string v0, "onClick: qq"

    .line 130
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static {}, Lbjl;->f()V

    const/4 p1, 0x0

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout$2;->a:Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/main/view/QQAuthLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "qq"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/musicradio/account/qlogin/g;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.class Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout$1;
.super Ljava/lang/Object;
.source "NeteaseAuthLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout$1;->a:Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecuteLong(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "NeteaseAuthLayout"

    const-string v0, "onClick: netease"

    .line 114
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {}, Lbjl;->g()V

    const/4 p1, 0x0

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout$1;->a:Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/main/view/NeteaseAuthLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "netease"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/musicradio/account/qlogin/g;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

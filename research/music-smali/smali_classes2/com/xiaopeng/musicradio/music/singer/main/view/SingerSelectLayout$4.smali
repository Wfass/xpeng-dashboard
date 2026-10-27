.class Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$4;
.super Ljava/lang/Object;
.source "SingerSelectLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 154
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$4;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 157
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$4;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->showSmallLayout()V

    .line 158
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$4;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->access$600(Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;)Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$a;->a()V

    return-void
.end method

.class Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$1;
.super Ljava/lang/Object;
.source "MsSingerSelectLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$1;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 141
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$1;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->showBigLayout()V

    return-void
.end method

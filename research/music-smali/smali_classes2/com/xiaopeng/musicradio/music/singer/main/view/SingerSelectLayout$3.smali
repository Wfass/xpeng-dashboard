.class Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$3;
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

    .line 148
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$3;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 151
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$3;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->showBigLayout()V

    return-void
.end method

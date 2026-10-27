.class Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout$1;
.super Ljava/lang/Object;
.source "KugouNewSongLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 129
    invoke-static {}, Lbjl;->a()V

    .line 130
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lbjp;->c(Landroid/content/Context;)V

    return-void
.end method

.class Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout$3;
.super Ljava/lang/Object;
.source "KugooSingerListLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;->refreshLoadMoreState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;I)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout$3;->b:Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;

    iput p2, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout$3;->b:Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;->mSingerAdapter:Lbjh;

    check-cast v0, Lbjg;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout$3;->a:I

    invoke-virtual {v0, v1}, Lbjg;->b(I)V

    return-void
.end method

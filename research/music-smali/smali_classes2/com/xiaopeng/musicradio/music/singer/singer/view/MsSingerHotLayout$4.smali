.class Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$4;
.super Ljava/lang/Object;
.source "MsSingerHotLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->setSingerSelectLayout(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$4;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 279
    new-instance v0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$4$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$4$1;-><init>(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$4;)V

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lbql;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.class Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$7;
.super Ljava/lang/Object;
.source "MusicConLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->updateVuiScene()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;)V
    .locals 0

    .line 677
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$7;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 680
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$7;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$7;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget v1, v1, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->Y(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$7;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

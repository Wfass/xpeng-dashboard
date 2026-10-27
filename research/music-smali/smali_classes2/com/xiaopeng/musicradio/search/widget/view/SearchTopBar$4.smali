.class Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$4;
.super Ljava/lang/Object;
.source "SearchTopBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$4;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 194
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 195
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$4;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->b(Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;)Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 196
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/b$d;

    invoke-direct {p1, p2}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 197
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/b$d;

    invoke-direct {p1, v0}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_0
    return p2
.end method

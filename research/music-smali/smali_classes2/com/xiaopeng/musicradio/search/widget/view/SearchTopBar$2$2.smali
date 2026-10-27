.class Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2$2;
.super Ljava/lang/Object;
.source "SearchTopBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2$2;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2$2;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->b(Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;)Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

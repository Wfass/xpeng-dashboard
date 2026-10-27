.class Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2;
.super Ljava/lang/Object;
.source "SearchTopBar.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    .line 126
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onKey: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SearchTopBar"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    const/16 v0, 0x42

    if-ne p2, v0, :cond_2

    .line 130
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_2

    .line 131
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->b(Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;)Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const-wide/16 v0, 0x3e8

    if-nez p2, :cond_0

    .line 132
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lcom/xiaopeng/musicradio/search/a$f;->search_no_keyword:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 133
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->b(Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;)Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/bk;->b(Landroid/view/View;)V

    .line 134
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->b(Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;)Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 135
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->clearFocus()V

    .line 136
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->b(Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;)Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

    move-result-object p2

    new-instance p3, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2$1;

    invoke-direct {p3, p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2$1;-><init>(Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2;)V

    invoke-virtual {p2, p3, v0, v1}, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 142
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->b(Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;)Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 143
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lcom/xiaopeng/musicradio/search/a$f;->search_blank_keyword:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 144
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->b(Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;)Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/bk;->b(Landroid/view/View;)V

    .line 145
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->b(Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;)Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 146
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->clearFocus()V

    .line 147
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->b(Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;)Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

    move-result-object p2

    new-instance p3, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2$2;

    invoke-direct {p3, p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2$2;-><init>(Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2;)V

    invoke-virtual {p2, p3, v0, v1}, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 154
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->b(Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;)Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/bk;->b(Landroid/view/View;)V

    .line 155
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->b(Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;)Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 156
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->clearFocus()V

    .line 157
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->b(Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;)Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;

    move-result-object p2

    new-instance p3, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2$3;

    invoke-direct {p3, p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2$3;-><init>(Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2;)V

    invoke-virtual {p2, p3, v0, v1}, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 163
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->c(Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;)V

    .line 164
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object p2

    invoke-virtual {p2}, Lbdt;->m()I

    move-result p2

    const-string p3, "SELECT_MENU_INDEX"

    invoke-static {p3, p2}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result p2

    .line 165
    invoke-static {p2}, Lbom;->a(I)V

    :cond_2
    :goto_0
    return p1
.end method

.class Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$3;
.super Ljava/lang/Object;
.source "SearchTopBar.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 171
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$3;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 184
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-nez p1, :cond_0

    .line 185
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$3;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->a(Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;)Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 186
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$3;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->a(Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;)Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$a;->b()V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 174
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/b$d;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 179
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/b$d;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

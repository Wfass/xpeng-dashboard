.class Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2$3;
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

    .line 157
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2$3;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2$3;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$2;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->j()V

    return-void
.end method

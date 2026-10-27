.class Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity$1;
.super Ljava/lang/Object;
.source "SearchMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->handleVoiceSearchResult()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity$1;->a:Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 401
    new-instance v0, Lasi$b;

    invoke-direct {v0}, Lasi$b;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

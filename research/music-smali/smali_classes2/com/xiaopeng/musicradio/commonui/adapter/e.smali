.class public Lcom/xiaopeng/musicradio/commonui/adapter/e;
.super Ljava/lang/Object;
.source "PagerAdapterBean.java"


# instance fields
.field public a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/e;->a:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/xiaopeng/musicradio/commonui/adapter/e;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/e;->a:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/xiaopeng/musicradio/commonui/adapter/e;->b:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/xiaopeng/musicradio/commonui/adapter/e;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Landroid/os/Bundle;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/e;->c:Landroid/os/Bundle;

    return-object v0
.end method

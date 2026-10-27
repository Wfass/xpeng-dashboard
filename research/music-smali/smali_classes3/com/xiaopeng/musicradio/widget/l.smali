.class public Lcom/xiaopeng/musicradio/widget/l;
.super Ljava/lang/Object;
.source "ScreenStateParam.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/widget/k;

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/widget/k;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/l;->a:Lcom/xiaopeng/musicradio/widget/k;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/l;->a:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/l;->a:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/l;->c:Ljava/lang/Object;

    return-object v0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/l;->a:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/l;->b:Ljava/lang/Object;

    return-object v0

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/l;->d:Ljava/lang/Object;

    return-object v0

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/l;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;TT;)V"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/l;->b:Ljava/lang/Object;

    .line 18
    iput-object p2, p0, Lcom/xiaopeng/musicradio/widget/l;->c:Ljava/lang/Object;

    .line 19
    iput-object p3, p0, Lcom/xiaopeng/musicradio/widget/l;->d:Ljava/lang/Object;

    .line 20
    iput-object p4, p0, Lcom/xiaopeng/musicradio/widget/l;->e:Ljava/lang/Object;

    return-void
.end method

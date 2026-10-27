.class Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$a;
.super Ljava/lang/Object;
.source "ScrollIndicatorView.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/widget/scrollindicator/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;

.field private b:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$d;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$a;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$1;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$a;-><init>(Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/xiaopeng/musicradio/widget/scrollindicator/b$d;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$a;->b:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$d;

    return-object v0
.end method

.method public a(Landroid/view/View;II)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$a;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->access$100(Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;)I

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$a;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;

    invoke-static {v0, p2}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->access$200(Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;I)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$a;->b:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$d;

    if-eqz v0, :cond_1

    .line 95
    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/scrollindicator/b$d;->a(Landroid/view/View;II)V

    :cond_1
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/widget/scrollindicator/b$d;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$a;->b:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$d;

    return-void
.end method

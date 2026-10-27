.class Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout$2;
.super Ljava/lang/Object;
.source "MineTitleBarLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->a(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout$2;->a:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 108
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout$2;->a:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->setMode(I)V

    return-void
.end method

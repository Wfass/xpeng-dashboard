.class Lcom/xiaopeng/musicradio/widget/LeftSelectLayout$1;
.super Ljava/lang/Object;
.source "LeftSelectLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout$1;->a:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 0

    .line 127
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout$1;->a:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mClickChange:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout$a;

    invoke-interface {p1, p2}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout$a;->a(I)V

    return-void
.end method

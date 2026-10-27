.class Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout$1;
.super Ljava/lang/Object;
.source "DataListDetailLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/utils/y$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout$1;->a:Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout$1;->a:Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mXDialogReference:Lcom/xiaopeng/musicradio/utils/ca;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/ca;->b()V

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout$1;->a:Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mDialogReference:Lcom/xiaopeng/musicradio/utils/t;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/t;->b()V

    return-void
.end method

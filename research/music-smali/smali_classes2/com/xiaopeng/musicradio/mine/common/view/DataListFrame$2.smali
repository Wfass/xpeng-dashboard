.class Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame$2;
.super Ljava/lang/Object;
.source "DataListFrame.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/utils/y$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame$2;->a:Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame$2;->a:Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mXDialogReference:Lcom/xiaopeng/musicradio/utils/ca;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/ca;->b()V

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame$2;->a:Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mDialogReference:Lcom/xiaopeng/musicradio/utils/t;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/t;->b()V

    return-void
.end method
